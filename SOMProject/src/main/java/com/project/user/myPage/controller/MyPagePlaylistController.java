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

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.MusicVO;
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
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String email=vo.getEmail().trim();
		String[] str=email.split("@");
		String deleteGolbengEE=str[0];
		String tableName=deleteGolbengEE+"_playList";
		HashMap map=new HashMap();
		map.put("tableName",tableName);
		List<PlayListVO> list=service.getMyPlayList(map);
		ModelAndView mav=new ModelAndView("myPage/Playlist");
		mav.addObject("list",list);
		return mav; 
	}
	
	@RequestMapping(value="insertPlay.do", method=RequestMethod.GET)
	public ModelAndView insertList(HttpServletRequest request,PlayListVO playListVo){
		HttpSession session=request.getSession();
		MemberVO memberVo=(MemberVO)session.getAttribute("loginID");
		String email=memberVo.getEmail().trim();
		//playListVo.setEmail(email);
		service.insertPlayList(playListVo);
		System.out.println("insertPlay.do");
		HashMap map = new HashMap();
		//map.put();
		List<MusicVO> list=service.getMusic(map);
		ModelAndView mav=new ModelAndView("popular/popular");
		mav.addObject("list",list);
		mav.addObject("value","succes");
		return mav;
	}
	
	@RequestMapping(value="selectPlayList.do", method=RequestMethod.GET)
	public ModelAndView playListSelect(HttpServletRequest request,@RequestParam String m_num){
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String email=vo.getEmail().trim();
		String[] str=email.split("@");
		String deleteGolbengEE=str[0];
		String tableName=deleteGolbengEE+"_playList";
		HashMap map=new HashMap();
		map.put("tableName",tableName);
		List<PlayListVO> list=service.getMyPlayList(map);
		ModelAndView mav=new ModelAndView("myPage/playList_select");
		mav.addObject("m_num",m_num);
		mav.addObject("list",list);
		return mav; 
	}
	
	@RequestMapping(value="addPlayList.do", method=RequestMethod.GET)
	public ModelAndView addPlayList(){
		ModelAndView mav=new ModelAndView("myPage/addPlayList");
		return mav; 
	}
	
	
	
		@RequestMapping(value="addPlaylistProc.do", method=RequestMethod.GET)
		public ModelAndView addPlaylistProc(HttpServletRequest request,@RequestParam String name){
			HttpSession session=request.getSession();
			MemberVO vo=(MemberVO)session.getAttribute("loginID");
			String email=vo.getEmail().trim();
			String[] str=email.split("@");
			String deleteGolbengEE=str[0];
			String tableName=deleteGolbengEE+"_playList";
			String sequenceName = deleteGolbengEE+"_playList_seq";
			HashMap map=new HashMap();
			map.put("tableName",tableName);
			map.put("sequenceName",sequenceName);
			map.put("list_name",name);
			service.insertMyPlayList(map);
			ModelAndView mav=new ModelAndView("myPage/addPlayList");
			mav.addObject("value","success");
			return mav; 
		}
		
	
		@RequestMapping(value="getMypl.do", method=RequestMethod.GET)
		public ModelAndView getMypl(HttpServletRequest request,@RequestParam String list_num){
			HttpSession session=request.getSession();
			MemberVO vo=(MemberVO)session.getAttribute("loginID");
			String email=vo.getEmail().trim();
			String[] str=email.split("@");
			String deleteGolbengEE=str[0];
			String tableName=deleteGolbengEE+"_musicList";
			HashMap map=new HashMap();
			map.put("tableName",tableName);
			map.put("list_num",list_num);
			List<MusicVO> list=service.getMyMusic(map);
			ModelAndView mav=new ModelAndView("myPage/myPlayList");
			mav.addObject("list",list);
			return mav; 
		}
		
		@RequestMapping(value="addPlay.do", method=RequestMethod.GET)
		public ModelAndView addPlay(HttpServletRequest request,@RequestParam String m_num){
			HttpSession session=request.getSession();
			MemberVO vo=(MemberVO)session.getAttribute("loginID");
			String email=vo.getEmail().trim();
			String[] str=email.split("@");
			String deleteGolbengEE=str[0];
			String tableName=deleteGolbengEE+"_play";
			String sequenceName = deleteGolbengEE+"_play_seq";
			HashMap map=new HashMap();
			map.put("tableName",tableName);
			map.put("sequenceName",sequenceName);
			map.put("m_num",m_num);
			service.insertMyPlay(map);
			List<MusicVO> list=service.getMyPlay(map);
			ModelAndView mav=new ModelAndView("myPage/myPlay");
			mav.addObject("list",list);
			return mav; 
		}
		
}