package com.project.admin.board_M.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.admin.board_M.model.FreeBoardVO;
import com.project.admin.board_M.service.AdminNoticeService;
import com.project.user.board.model.NoticeVO;
import com.project.user.board.model.Paging;

@Controller
public class AdminNoticeController {
	private AdminNoticeService service;
	private Paging boardPaging;
	
	public void setBoardPaging(Paging boardPaging) {
		this.boardPaging = boardPaging;
	}

	public void setService(AdminNoticeService service) {
		this.service = service;
	}

	@RequestMapping(value="adminNoticeList.mdo", method=RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request)throws Exception{
		request.setCharacterEncoding("utf-8");
		String pageNum = request.getParameter("pageNum");
		if(pageNum==null||pageNum==""){pageNum="1";}
		int currentPage = Integer.parseInt(pageNum);		
		int pageSize = 10;
		int pagenavi = 5;
		Map<String,Object> map = new HashMap<String,Object>();
		int count = this.service.getListCount();
		int number=count-(currentPage-1)*pageSize;
		boardPaging.setPaging(pageSize,pagenavi,count,currentPage);
		map.put("startRow",boardPaging.getWriting_Start());
		map.put("endRow",boardPaging.getWriting_End());
		List<NoticeVO> boardList = service.getList(map);
		Map<String,Object> model = new HashMap<String,Object>();
		SimpleDateFormat simpledateformat =new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		for(NoticeVO vo:boardList){
			vo.setFormatdate(simpledateformat.format(vo.getRegdate()));
		}
		
		model.put("boardList",boardList);
		model.put("count",count);
		model.put("number",number);
		model.put("pageNum",pageNum);
		model.put("bp",boardPaging);
		model.put("startRow",boardPaging.getWriting_Start());
		model.put("endRow",boardPaging.getWriting_End());
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("notice/noticeList");
		modelAndView.addAllObjects(model);
		return modelAndView;
	}
	
	@RequestMapping(value="adminNoticeWriteForm.mdo", method=RequestMethod.GET)
	public String setView(){
		return "notice/noticeWriteForm";
	}
	
	@RequestMapping(value="adminNoticeWriteProc.mdo", method=RequestMethod.POST)
	public ModelAndView onSubmit(NoticeVO boardVo){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String date=sdf.format(new Date());
		boardVo.setRegdate(new Date());
		service.insertArticle(boardVo);
		return new ModelAndView("redirect:adminNoticeList.mdo");
	}
	
	@RequestMapping(value="adminNoticeContent.mdo",method=RequestMethod.GET)
	public ModelAndView getArticle(Integer num){
		service.upReadcount(num);
		NoticeVO boardVo = service.getArticle(num);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/noticeContent");
		mav.addObject("vo",boardVo);
		return mav;
	}
	
	@RequestMapping(value="adminNoticeDeleteProc.mdo",method=RequestMethod.GET)
	public ModelAndView onSubmit(Integer num,NoticeVO boardVo){
		service.deleteArticle(boardVo.getNum());	
		return new ModelAndView("redirect:adminNoticeList.mdo");					
	}
	
	@RequestMapping(value="adminNoticeUpdateForm.mdo", method=RequestMethod.GET)
	public ModelAndView setView(Integer num){
		NoticeVO boardVo = service.getArticle(num);
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("vo",boardVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/noticeUpdateForm");
		mav.addObject("num",num);
		mav.addAllObjects(model);
		return mav;
	}
	
		
	@RequestMapping(value="adminNoticeUpdateProc.mdo", method=RequestMethod.POST)
	public String ooo(NoticeVO boardVo){
		service.updateArticle(boardVo);
		return "redirect:adminNoticeList.mdo";
	}
	
	
	
	
}
