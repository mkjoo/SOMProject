package com.project.user.board.controller;

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
import com.project.user.board.model.NoticeVO;
import com.project.user.board.model.Paging;
import com.project.user.board.service.UserFreeBoardService;
import com.project.user.member.model.MemberVO;

@Controller
public class UserFreeBoardController {
	private Paging boardPaging;
	private UserFreeBoardService service;
	
	public void setBoardPaging(Paging boardPaging) {
		this.boardPaging = boardPaging;
	}

	public void setService(UserFreeBoardService service) {
		this.service = service;
	}
	@RequestMapping(value="freeboardList.do", method=RequestMethod.GET)
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
		SimpleDateFormat simpledateformat =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		for(FreeBoardVO vo:boardList){
			int commentcount=service.getCommentCount(vo.getNum());
			vo.setCommentcount(commentcount);
			vo.setFormatdate(simpledateformat.format(vo.getRegdate()));
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
		modelAndView.setViewName("board/freeboardList");
		modelAndView.addAllObjects(model);
		return modelAndView;
	}
	
	@RequestMapping(value="freeBoardWriteForm.do", method=RequestMethod.GET)
	public ModelAndView setView(HttpServletRequest request){
		HttpSession session=null;
		try{session=request.getSession();}catch(Exception e){ModelAndView mav=new ModelAndView("main/noLogin2");mav.addObject("result","noLogin");return mav;}
		if((MemberVO)session.getAttribute("loginID") == null){ModelAndView mav=new ModelAndView("main/noLogin2");mav.addObject("result","noLogin");return mav;}
		session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name=vo.getName().trim();
		ModelAndView mav=new ModelAndView("board/freeboardWriteForm");
		mav.addObject("writer",name);
		return mav;
	}
	
	@RequestMapping(value="freeBoardWriteProc.do", method=RequestMethod.POST)
	public ModelAndView onSubmit(FreeBoardVO boardVo){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String date=sdf.format(new Date());
		boardVo.setRegdate(new Date());
		service.insertArticle(boardVo);
		return new ModelAndView("redirect:freeboardList.do");
	}
	
	@RequestMapping(value="freeBoardContent.do",method=RequestMethod.GET)
	public ModelAndView getArticle(Integer num,HttpServletRequest request){
		List<CommentVO> commentList=service.getComment(num);		
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name="noLogin";
		String email="noLogin";
		try{name=vo.getName().trim();email=vo.getEmail().trim();}catch(Exception e){}
		service.upReadcount(num);
		FreeBoardVO boardVo = service.getArticle(num);		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/freeboardContent");
		mav.addObject("list",commentList);
		mav.addObject("name",name);
		mav.addObject("email",email);		
		mav.addObject("vo",boardVo);
		mav.addObject("noLogin","noLogin");
		System.out.println("name="+name+"/email="+email);
		return mav;
	}
	
	@RequestMapping(value="freeBoardDeleteProc.do",method=RequestMethod.GET)
	public ModelAndView onSubmit(Integer num,NoticeVO boardVo){
		service.deleteArticle(boardVo.getNum());	
		return new ModelAndView("redirect:freeboardList.do");					
	}
	
	@RequestMapping(value="freeBoardUpdateForm.do", method=RequestMethod.GET)
	public ModelAndView setView(Integer num){
		FreeBoardVO boardVo = service.getArticle(num);
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("vo",boardVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/freeboardUpdateForm");
		mav.addObject("num",num);
		mav.addAllObjects(model);
		return mav;
	}
	
		
	@RequestMapping(value="freeBoardUpdateProc.do", method=RequestMethod.POST)
	public String ooo(FreeBoardVO boardVo){
		service.updateArticle(boardVo);
		return "redirect:freeboardList.do";
	}
	
	@RequestMapping(value="insertComment.do", method=RequestMethod.GET)
	public ModelAndView insertcomment(CommentVO commentVo){
		System.out.println(commentVo.getNum());
		commentVo.setRegdate(new Date());
		service.insertComment(commentVo);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:freeBoardContent.do");
		mav.addObject("num",commentVo.getNum());
		return mav;
	}
	
	@RequestMapping(value="deleteComment.do", method=RequestMethod.GET)
	public ModelAndView deletecomment(CommentVO commentVo){
		int ccnum=Integer.valueOf(commentVo.getCnum());
		service.deleteComment(ccnum);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:freeBoardContent.do");
		mav.addObject("num",commentVo.getNum());
		return mav;
	}
	
	@RequestMapping(value="updateCommentForm.do",method=RequestMethod.GET)
	public ModelAndView update(Integer num,HttpServletRequest request,CommentVO commentVo){
		List<CommentVO> commentList=service.getComment(num);
		int ccnum=Integer.valueOf(commentVo.getCnum());
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name=vo.getName().trim();
		
		FreeBoardVO boardVo = service.getArticle(num);	
		CommentVO commentvo = service.getMyComment(ccnum);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/freeboardUpdateCommentForm");
		mav.addObject("list",commentList);
		mav.addObject("cnum",ccnum);
		mav.addObject("name",name);
		mav.addObject("vo",boardVo);
		mav.addObject("commentVo",commentvo);
		return mav;
	}
	
	
	@RequestMapping(value="updateCommentProc.do",method=RequestMethod.GET)
	public ModelAndView updateProc(Integer num,HttpServletRequest request,CommentVO commentVo){
		
		List<CommentVO> commentList=service.getComment(num);
		int ccnum=Integer.valueOf(commentVo.getCnum());
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name=vo.getName().trim();
		FreeBoardVO boardVo = service.getArticle(num);	
		service.updateComment(commentVo);	
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:freeboardList.do");
		mav.addObject("num",num);
		return mav;
	}
	
}
