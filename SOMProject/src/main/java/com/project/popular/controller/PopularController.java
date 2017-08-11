package com.project.popular.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.popular.model.PopularVO;
import com.project.popular.service.PopularService;

@Controller
public class PopularController {
	private PopularService service;
	
	public void setService(PopularService service) {
			this.service = service;
		}

	@RequestMapping(value="popular.do",method=RequestMethod.GET)
	public ModelAndView popular2(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/popular");
		List<PopularVO> list=service.getMusic();
		mav.addObject("list",list);
		return mav;
	}
	
}
