package com.project.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
	// ��� ��Ʈ�ѷ��� �����Ϸ��� �۾��� ���񽺸� ����
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
