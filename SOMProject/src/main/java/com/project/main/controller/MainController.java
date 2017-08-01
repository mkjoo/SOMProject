package com.project.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.model.MemberVO;
import com.project.member.service.MemberInsertService;

@Controller
public class MainController {
	// 모든 컨트롤러는 수행하려는 작업의 서비스를 주입
//	private MemberInsertService memberInsertService;
//
//	public void setMemberInsertService(MemberInsertService memberInsertService) {
//		this.memberInsertService = memberInsertService;
//	}
	
	@RequestMapping(value="mainPage.do", method=RequestMethod.GET)
	public String mainPage(){
		return "main/mainPage";
	}
	
//	@RequestMapping(value="/member/regProc.do", method=RequestMethod.POST)
//	public ModelAndView regProcess(MemberVO vo){
//		ModelAndView mav = new ModelAndView("mamber/regProc");
////		memberInsertService.memberInsert(vo);
//		return mav;		
//	}
}
