package com.project.user.board.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.NoticeVO;
import com.project.user.board.service.NoticeWriteService;
import com.project.user.member.model.MemberVO;

@Controller
public class NoticeWriteController {
	private NoticeWriteService writeService;
	public void setWriteService(NoticeWriteService writeService) {
		this.writeService = writeService;
	}
	@RequestMapping(value="noticeWriteForm.do", method=RequestMethod.GET)
	public ModelAndView setView(HttpServletRequest request){
		HttpSession session=null;
		try{session=request.getSession();}catch(Exception e){ModelAndView mav=new ModelAndView("main/noLogin2");mav.addObject("result","noLogin");return mav;}
		if((MemberVO)session.getAttribute("loginID") == null){ModelAndView mav=new ModelAndView("main/noLogin2");mav.addObject("result","noLogin");return mav;}
		session=request.getSession();
		return new ModelAndView("board/noticeWriteForm");
	}
	
	@RequestMapping(value="noticeWriteProc.do", method=RequestMethod.POST)
	public ModelAndView onSubmit(NoticeVO boardVo){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String date=sdf.format(new Date());
		boardVo.setRegdate(new Date());
		this.writeService.insertWriting(boardVo);
		return new ModelAndView("redirect:noticeList.do");
	}
}
