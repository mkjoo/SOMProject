package com.project.user.myPage.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.MusicVO;
import com.project.user.myPage.service.MyPageMusicListService;

@Controller
public class MyPageMusicListController {
	private MyPageMusicListService service;
	
	public void setService(MyPageMusicListService service) {
		this.service = service;
	}
	@RequestMapping(value="lyrics.do",method=RequestMethod.GET)
	public ModelAndView viewLyrics(String lyrics){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("myPage/lyrics");
		mav.addObject("lyrics",lyrics);
		return mav;
	}
	
	@RequestMapping(value="myMusic_list.do", method=RequestMethod.GET)
	public ModelAndView myMusic_list(HttpServletRequest request){
		HttpSession session=request.getSession();
		MemberVO memberVo=(MemberVO)session.getAttribute("loginID");
		String email=memberVo.getEmail().trim();
		HashMap map = new HashMap();
		//map.put();
		List<MusicVO> list=service.getMusic(map);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("myPage/myMusic_list");
		mav.addObject("email",email);
		mav.addObject("list",list);
		return mav;
	}

	@RequestMapping(value="upCountPlay.do",method=RequestMethod.GET)
	public ModelAndView upCountPlay(@RequestParam String m_name){
		service.upCountPlay(m_name);
		ModelAndView mav=new ModelAndView("redirect:myMusic_list.do");
		return mav;
	}
	
	@RequestMapping(value="addMusicList.do", method=RequestMethod.GET)
	public ModelAndView addMusic(HttpServletRequest request,@RequestParam String m_num,@RequestParam String list_num){
		HttpSession session=request.getSession();
		MemberVO memberVo=(MemberVO)session.getAttribute("loginID");
		String email=memberVo.getEmail().trim();
		String[] str=email.split("@");
		String deleteGolbengEE=str[0];
		String tableName=deleteGolbengEE+"_musicList";
		HashMap map = new HashMap();		
		map.put("tableName",tableName);
		map.put("m_num",m_num);
		map.put("list_num",list_num);
		
		service.insertMyMusicList(map);
		ModelAndView mav=new ModelAndView();
		mav.addObject("m_num",m_num);
		mav.addObject("value","ok");
		mav.setViewName("redirect:selectPlayList.do");
		return mav;
	}

}
