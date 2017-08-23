package com.project.busking.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.busking.model.BuskingVO;
import com.project.busking.service.BuskingService;

@Controller
public class BuskingController {
	private BuskingService service;
	
	public void setService(BuskingService service){
		this.service = service;
	}
	
	@RequestMapping(value="busking.do", method=RequestMethod.GET)
	public ModelAndView busking(BuskingVO BuskingVo){
		List<BuskingVO> list=service.getNewestBusking(BuskingVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("busking/busking");
		mav.addObject("list", list);
		return mav;
	}
	@RequestMapping(value="busking1.do", method=RequestMethod.GET)
	public ModelAndView busking1(BuskingVO BuskingVo){
		List<BuskingVO> list=service.getPopularBusking(BuskingVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("busking/busking");
		mav.addObject("list", list);
		return mav;
	}

}
