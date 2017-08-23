package com.project.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.busking.service.BuskingService;
import com.project.popular.service.PopularService;
import com.project.user.board.service.NoticeListService;


@Controller
public class MainController {
	private PopularService popularService;
	private BuskingService buskingService;
	private NoticeListService noticeListService;
		
	public void setPopularService(PopularService popularService) {
		this.popularService = popularService;
	}


	public void setBuskingService(BuskingService buskingService) {
		this.buskingService = buskingService;
	}


	public void setNoticeListService(NoticeListService noticeListService) {
		this.noticeListService = noticeListService;
	}

	@RequestMapping(value="mainPage.do", method=RequestMethod.GET)
	public ModelAndView mainPage(){
		System.out.println("MainController ¿‘¥œ¥Ÿ.");
		
		ModelAndView mav=new ModelAndView("main/mainPage");
		return mav;
	}
	
}
