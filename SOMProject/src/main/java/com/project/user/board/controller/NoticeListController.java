package com.project.user.board.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.NoticeVO;
import com.project.user.board.model.Paging;
import com.project.user.board.model.QnaVO;
import com.project.user.board.service.NoticeListService;

@Controller
public class NoticeListController {
	private NoticeListService service;
	private Paging boardPaging;
	public NoticeListService getService() {
		return service;
	}
	public void setService(NoticeListService service) {
		this.service = service;
	}
	public Paging getBoardPaging() {
		return boardPaging;
	}
	public void setBoardPaging(Paging boardPaging) {
		this.boardPaging = boardPaging;
	}

	
	@RequestMapping(value="noticeList.do", method=RequestMethod.GET)
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
		List<NoticeVO> boardList = service.getBoardList(map);
		Map<String,Object> model = new HashMap<String,Object>();
		SimpleDateFormat simpledateformat =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
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
		modelAndView.setViewName("board/noticeList");
		modelAndView.addAllObjects(model);
		return modelAndView;
	}
}
