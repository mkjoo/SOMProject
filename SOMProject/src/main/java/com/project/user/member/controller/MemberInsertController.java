package com.project.user.member.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.member.model.MemberVO;
import com.project.user.member.service.MemberInsertService;

@Controller
public class MemberInsertController {
	// 모든 컨트롤러는 수행하려는 작업의 서비스를 주입
	private MemberInsertService memberInsertService;

	public void setMemberInsertService(MemberInsertService memberInsertService) {
		this.memberInsertService = memberInsertService;
	}
	
	@RequestMapping(value="regForm1.do", method=RequestMethod.GET)
	public String regForm(){
		return "member/regForm1";
	}
	
	@RequestMapping(value="regProc.do", method=RequestMethod.GET)
	public ModelAndView regProc(MemberVO vo){
		vo.setJoindate(new Date());
		memberInsertService.insertMember(vo);
		ModelAndView mav=new ModelAndView("member/regProc");
		return mav;
	}
	
}
