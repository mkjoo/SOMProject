package com.project.admin.board_M.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.admin.board_M.model.CommentVO;
import com.project.admin.board_M.model.FreeBoardVO;
import com.project.admin.board_M.service.AdminFreeBoardService;
import com.project.user.board.model.NoticeVO;
import com.project.user.board.model.Paging;
import com.project.user.member.model.MemberVO;

@Controller
public class AdminFreeBoardController {
	
	private AdminFreeBoardService service;
	
	private Paging boardPaging;
	
	public void setBoardPaging(Paging boardPaging) {
		this.boardPaging = boardPaging;
	}

	public void setService(AdminFreeBoardService service) {
		this.service = service;
	}
	
	@RequestMapping(value="adminFreeBoardList.mdo", method=RequestMethod.GET)
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
		List<FreeBoardVO> boardList = service.getList(map);
		for(FreeBoardVO vo:boardList){
			int commentcount=service.getCommentCount(vo.getNum());
			vo.setCommentcount(commentcount);
		}
		
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("boardList",boardList);
		model.put("count",count);
		model.put("number",number);
		model.put("pageNum",pageNum);
		model.put("bp",boardPaging);
		model.put("startRow",boardPaging.getWriting_Start());
		model.put("endRow",boardPaging.getWriting_End());

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("freeboard/freeboardList");
		modelAndView.addAllObjects(model);
		return modelAndView;
	}
	
	@RequestMapping(value="adminFreeBoardWriteForm.mdo", method=RequestMethod.GET)
	public ModelAndView setView(HttpServletRequest request){
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name=vo.getName().trim();
		ModelAndView mav=new ModelAndView("freeboard/freeboardWriteForm");
		mav.addObject("writer",name);
		return mav;
	}
	
	@RequestMapping(value="adminFreeBoardWriteProc.mdo", method=RequestMethod.POST)
	public ModelAndView onSubmit(FreeBoardVO boardVo){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String date=sdf.format(new Date());
		boardVo.setRegdate(new Date());
		service.insertArticle(boardVo);
		return new ModelAndView("redirect:adminFreeBoardList.mdo");
	}
	
	@RequestMapping(value="adminFreeBoardContent.mdo",method=RequestMethod.GET)
	public ModelAndView getArticle(Integer num,HttpServletRequest request){
		List<CommentVO> commentList=service.getComment(num);		
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name=vo.getName().trim();
		service.upReadcount(num);
		FreeBoardVO boardVo = service.getArticle(num);		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("freeboard/freeboardContent");
		mav.addObject("list",commentList);
		mav.addObject("writer",name);
		mav.addObject("vo",boardVo);
		return mav;
	}
	
	@RequestMapping(value="adminFreeBoardDeleteProc.mdo",method=RequestMethod.GET)
	public ModelAndView onSubmit(Integer num,NoticeVO boardVo){
		service.deleteArticle(boardVo.getNum());	
		return new ModelAndView("redirect:adminFreeBoardList.mdo");					
	}
	
	@RequestMapping(value="adminFreeBoardUpdateForm.mdo", method=RequestMethod.GET)
	public ModelAndView setView(Integer num){
		FreeBoardVO boardVo = service.getArticle(num);
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("vo",boardVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("freeboard/freeboardUpdateForm");
		mav.addObject("num",num);
		mav.addAllObjects(model);
		return mav;
	}
	
		
	@RequestMapping(value="adminFreeBoardUpdateProc.mdo", method=RequestMethod.POST)
	public String ooo(FreeBoardVO boardVo){
		service.updateArticle(boardVo);
		return "redirect:adminFreeBoardList.mdo";
	}
	
	@RequestMapping(value="insertComment.mdo", method=RequestMethod.GET)
	public ModelAndView insertcomment(CommentVO commentVo){
		System.out.println(commentVo.getNum());
		commentVo.setRegdate(new Date());
		service.insertComment(commentVo);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:adminFreeBoardContent.mdo");
		mav.addObject("num",commentVo.getNum());
		return mav;
	}
	
	@RequestMapping(value="deleteComment.mdo", method=RequestMethod.GET)
	public ModelAndView deletecomment(CommentVO commentVo){
		int ccnum=Integer.valueOf(commentVo.getCnum());
		service.deleteComment(ccnum);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:adminFreeBoardContent.mdo");
		mav.addObject("num",commentVo.getNum());
		return mav;
	}
	
	@RequestMapping(value="updateCommentForm.mdo",method=RequestMethod.GET)
	public ModelAndView update(Integer num,HttpServletRequest request,CommentVO commentVo){
		List<CommentVO> commentList=service.getComment(num);
		int ccnum=Integer.valueOf(commentVo.getCnum());
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name=vo.getName().trim();
		
		FreeBoardVO boardVo = service.getArticle(num);	
		CommentVO commentvo = service.getMyComment(ccnum);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("freeboard/freeboardUpdateForm");
		mav.addObject("list",commentList);
		mav.addObject("cnum",ccnum);
		mav.addObject("writer",name);
		mav.addObject("vo",boardVo);
		mav.addObject("commentVo",commentvo);
		return mav;
	}
	
	
	@RequestMapping(value="updateCommentProc.mdo",method=RequestMethod.GET)
	public ModelAndView updateProc(Integer num,HttpServletRequest request,CommentVO commentVo){
		
		List<CommentVO> commentList=service.getComment(num);
		int ccnum=Integer.valueOf(commentVo.getCnum());
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name=vo.getName().trim();
		FreeBoardVO boardVo = service.getArticle(num);	
		service.updateComment(commentVo);	
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:adminFreeBoardContent.mdo");
		mav.addObject("num",num);
		return mav;
	}
	
	
}
