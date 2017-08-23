package com.project.user.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.NoticeVO;
import com.project.user.board.service.NoticeGetService;

@Controller
public class NoticeGetController {
	private NoticeGetService service;
	public void setService(NoticeGetService service) {
		this.service = service;
	}
	
	@RequestMapping(value="noticeContent.do",method=RequestMethod.GET)
	public ModelAndView getArticle(Integer num){
		NoticeVO boardVo = service.getArticle(num);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/noticeContent");
		mav.addObject("vo",boardVo);
		return mav;
	}
}
