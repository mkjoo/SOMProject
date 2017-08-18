package com.project.popular.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.popular.model.PopularVO;
import com.project.popular.service.PopularService;

@Controller
public class PopularController {
	private PopularService service;
	
	public void setService(PopularService service) {
			this.service = service;
		}

	@RequestMapping(value="newest.do",method=RequestMethod.GET)
	public ModelAndView popular2(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/newest");
		return mav;
	}
	
	@RequestMapping(value="popNewest.do",method=RequestMethod.GET)
	public ModelAndView popular1(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/pop");
		List<PopularVO> list=service.getNewestPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="ccmNewest.do",method=RequestMethod.GET)
	public ModelAndView popular3(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/ccm");
		List<PopularVO> list=service.getNewestPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	@RequestMapping(value="classicNewest.do",method=RequestMethod.GET)
	public ModelAndView popular4(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/classic");
		List<PopularVO> list=service.getNewestPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="edmNewest.do",method=RequestMethod.GET)
	public ModelAndView popular8(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/edm");
		List<PopularVO> list=service.getNewestPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="jazzNewest.do",method=RequestMethod.GET)
	public ModelAndView popular5(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/jazz");
		List<PopularVO> list=service.getNewestPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	@RequestMapping(value="j-popNewest.do",method=RequestMethod.GET)
	public ModelAndView popular6(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/j-pop");
		List<PopularVO> list=service.getNewestPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	@RequestMapping(value="ostNewest.do",method=RequestMethod.GET)
	public ModelAndView popular7(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/ost");
		List<PopularVO> list=service.getNewestPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="popular.do",method=RequestMethod.GET)
	public ModelAndView popular3(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/popular");
		return mav;
	}
	
	
	
	
	
}
