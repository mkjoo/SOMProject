package com.project.main.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.busking.model.BuskingVO;
import com.project.busking.service.BuskingService;
import com.project.popular.model.PopularVO;
import com.project.popular.service.PopularService;
import com.project.user.board.model.NoticeVO;
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
		HashMap map=new HashMap();
		map.put("startRow",1);
		map.put("endRow",5);
		List<PopularVO> list1=popularService.getMainNewest(map);
		List<PopularVO> list2=popularService.getMainPopular(map);
		List<PopularVO> list3=buskingService.getMainBusking(map);
		List<NoticeVO> list4=noticeListService.getBoardList(map);
		SimpleDateFormat simpledateformat =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		for(NoticeVO vo:list4){
			vo.setFormatdate(simpledateformat.format(vo.getRegdate()));
		}
		
		ModelAndView mav=new ModelAndView("main/mainPage");
		mav.addObject("newestList",list1);
		mav.addObject("popularList",list2);
		mav.addObject("buskingList",list3);
		mav.addObject("noticeList",list4);
		
		return mav;
	}
	
}
