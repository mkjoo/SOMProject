package com.project.user.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.member.model.MemberVO;
import com.project.user.member.service.MemberLoginService;

@Controller
public class MemberLoginController {
	private MemberLoginService memberLoginService;

	public void setMemberLoginService(MemberLoginService memberLoginService) {
		this.memberLoginService = memberLoginService;
	}

	@RequestMapping(value = "loginProc.do", method = RequestMethod.POST)
	public ModelAndView loginCheck(@RequestParam String email, @RequestParam String pass,HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();
		MemberVO vo = memberLoginService.getMemberPass(email);

		if (vo == null) {
			System.out.println("1");
			mav.setViewName("main/mainPage");
			mav.addObject("result", "resultNoId");
			return mav;
		}

		if (pass.equals(vo.getPass())) {
			HttpSession session=request.getSession();
			session.setAttribute("loginID",vo);			
			mav.setViewName("main/mainPage");
			mav.addObject("result", "resultOK");
			mav.addObject("vo", vo);
			return mav;
		} else {
			System.out.println("3");
			mav.setViewName("main/mainPage");
			mav.addObject("result", "resultNoPass");
			return mav;
		}
	}
}
