package com.project.popular.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.popular.model.PopularVO;
import com.project.popular.service.PopularService;
import com.project.user.member.model.MemberVO;

@Controller
public class PopularController {
	private PopularService service;
	
	public void setService(PopularService service) {
			this.service = service;
		}

	@RequestMapping(value="newest.do",method=RequestMethod.GET)
	public ModelAndView popular2(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/pop");
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
	
	@RequestMapping(value="k-popNewest.do",method=RequestMethod.GET)
	public ModelAndView popular17(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("newest/k-pop");
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
	public ModelAndView popular9(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/pop");
		return mav;
	}
	
	@RequestMapping(value="k-popPopular.do",method=RequestMethod.GET)
	public ModelAndView popular18(PopularVO PopularVo){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/k-pop");
		List<PopularVO> list=service.getPopularPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}	
	
	@RequestMapping(value="ccmPopular.do",method=RequestMethod.GET)
	public ModelAndView popular10(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/ccm");
		List<PopularVO> list=service.getPopularPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="classicPopular.do",method=RequestMethod.GET)
	public ModelAndView popular11(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/classic");
		List<PopularVO> list=service.getPopularPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="edmPopular.do",method=RequestMethod.GET)
	public ModelAndView popular12(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/edm");
		List<PopularVO> list=service.getPopularPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="jazzPopular.do",method=RequestMethod.GET)
	public ModelAndView popular13(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/jazz");
		List<PopularVO> list=service.getPopularPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="j-popPopular.do",method=RequestMethod.GET)
	public ModelAndView popular14(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/j-pop");
		List<PopularVO> list=service.getPopularPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="ostPopular.do",method=RequestMethod.GET)
	public ModelAndView popular15(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/ost");
		List<PopularVO> list=service.getPopularPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="popPopular.do",method=RequestMethod.GET)
	public ModelAndView popular16(PopularVO PopularVo){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/pop");
		List<PopularVO> list=service.getPopularPopMusic(PopularVo);
		mav.addObject("m_jenre",PopularVo.getM_genre());
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="getPopularMovie.do",method=RequestMethod.GET)
	public ModelAndView getMovie(PopularVO PopularVo){
		String movieSrc=PopularVo.getM_musicvideo();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("popular/movie");
		mav.addObject("m_musicvideo",movieSrc);
		return mav;
	}
	
	@RequestMapping(value="buy.do",method=RequestMethod.GET)
	public ModelAndView buy(HttpServletRequest request,@RequestParam String path,@RequestParam String fileName){		
		HttpSession session=null;
		try{session=request.getSession();}catch(Exception e){ModelAndView mav=new ModelAndView("main/noLogin");mav.addObject("result","noLogin");return mav;}
		if((MemberVO)session.getAttribute("loginID") == null){ModelAndView mav=new ModelAndView("main/noLogin");mav.addObject("result","noLogin");return mav;}
		session=request.getSession();
		ModelAndView mav=new ModelAndView("fileDownload/confirm");
		mav.addObject("path",path);
		mav.addObject("fileName",fileName);
		mav.addObject("m_name",fileName);
		return mav;
	}
}
