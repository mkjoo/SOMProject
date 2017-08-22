package com.project.user.search.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.popular.model.PopularVO;
import com.project.user.search.service.SearchService;

@Controller
public class SearchController {
	private SearchService service;

	public void setService(SearchService service) {
		this.service = service;
	}
	
	@RequestMapping(value="search.do", method=RequestMethod.GET)
	public ModelAndView myPage_acc(@RequestParam String search_text){
		if(search_text.equals("")){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("search/search");
		return mav;
		}
		List<PopularVO> list=service.searchMname(search_text);
		List<PopularVO> list2=service.searchMartist(search_text);
		List<PopularVO> list3=service.searchMalbum(search_text);
		List<PopularVO> list4=service.searchMgenre(search_text);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("search/search");
		mav.addObject("list",list);
		mav.addObject("list2",list2);
		mav.addObject("list3",list3);
		mav.addObject("list4",list4);
		return mav;
	}
	
	@RequestMapping(value="search.mdo", method=RequestMethod.GET)
	public ModelAndView adminSearch(@RequestParam String search_text){
		if(search_text.equals("")){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("a_search");
		return mav;
		}
		List<PopularVO> list=service.searchMname(search_text);
		List<PopularVO> list2=service.searchMartist(search_text);
		List<PopularVO> list3=service.searchMalbum(search_text);
		List<PopularVO> list4=service.searchMgenre(search_text);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("a_search");
		mav.addObject("list",list);
		mav.addObject("list2",list2);
		mav.addObject("list3",list3);
		mav.addObject("list4",list4);
		return mav;
	}	
}
