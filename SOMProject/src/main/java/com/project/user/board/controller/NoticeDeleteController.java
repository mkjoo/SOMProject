package com.project.user.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.NoticeVO;
import com.project.user.board.service.NoticeDeleteService;

@Controller
public class NoticeDeleteController {
	private NoticeDeleteService service;

	public void setService(NoticeDeleteService service) {
		this.service = service;
	}
	
	@RequestMapping(value="noticeDeleteProc.do",method=RequestMethod.GET)
	public ModelAndView onSubmit(Integer num,NoticeVO boardVo){
			service.deleteArticle(boardVo.getNum());	
			return new ModelAndView("redirect:noticeList.do");
		
				
}
}
