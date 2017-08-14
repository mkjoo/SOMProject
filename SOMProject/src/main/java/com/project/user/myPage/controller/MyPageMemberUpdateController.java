package com.project.user.myPage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.service.MyPageUpdateService;

@Controller
public class MyPageMemberUpdateController {
	private MyPageUpdateService service;
	
	public void setService(MyPageUpdateService service) {
		this.service = service;
	}

	

	@RequestMapping(value="member_update.do", method=RequestMethod.GET)
	public String member_update(){
		return "myPage/member_update";
	}
	
	
	@RequestMapping(value="member_passConfirm.do",method=RequestMethod.POST)
	public ModelAndView pwdConfirm(HttpServletRequest request,@RequestParam String password){
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String email=vo.getEmail().trim();
		MemberVO memberVo=service.getMemberPass(email);
		if(password.equals(memberVo.getPass())){
			ModelAndView mav=new ModelAndView();
			mav.setViewName("myPage/member_update");
			mav.addObject("vo",memberVo);
			return mav;
		}else{
			return new ModelAndView("myPage/myPage_acc");
		}
		
	}	
	
	@RequestMapping(value="member_updateProc.do",method=RequestMethod.POST)
	public ModelAndView studentUpdateProc(MemberVO vo){
		service.updateMember(vo);
		ModelAndView mav=new ModelAndView();
		MemberVO memberVo=service.getMemberPass(vo.getEmail());
		mav.setViewName("myPage/member_update");
		mav.addObject("vo",memberVo);
		mav.addObject("value","success");
		return mav;
	}
	
	
	
	
	
	
}
