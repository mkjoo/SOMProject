package com.project.user.myPage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.PlayListVO;
import com.project.user.myPage.service.MyPagePlayListService;

@Controller
public class MyPagePlaylistController {
	private MyPagePlayListService service;
	
	public void setService(MyPagePlayListService service) {
		this.service = service;
	}

	@RequestMapping(value="Playlist.do", method=RequestMethod.GET)
	public ModelAndView Playlist(HttpServletRequest request){
		HttpSession session=request.getSession();
		MemberVO memberVo=(MemberVO)session.getAttribute("loginID");
		String email=memberVo.getEmail().trim();
		List<PlayListVO> list=service.getPlayList(email);
		ModelAndView mav=new ModelAndView("myPage/Playlist");
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping(value="insertPlay.do", method=RequestMethod.GET)
	public ModelAndView insertList(HttpServletRequest request,PlayListVO playListVo){
		HttpSession session=request.getSession();
		MemberVO memberVo=(MemberVO)session.getAttribute("loginID");
		String email=memberVo.getEmail().trim();
		
		playListVo.setEmail(email);
		service.insertPlayList(playListVo);
		ModelAndView mav=new ModelAndView("myPage/myMusic_list");
		mav.addObject("value","succes");
		return mav;
	}
	
}
