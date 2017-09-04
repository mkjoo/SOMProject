package com.project.user.board.controller;

import java.text.SimpleDateFormat;

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
		SimpleDateFormat simpledateformat =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		boardVo.setFormatdate(simpledateformat.format(boardVo.getRegdate()));
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/noticeContent");
		mav.addObject("vo",boardVo);
		return mav;
	}
}
