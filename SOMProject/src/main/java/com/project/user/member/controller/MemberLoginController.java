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
import com.project.user.myPage.service.MyPagePointService;

@Controller
public class MemberLoginController {
	private MemberLoginService memberLoginService;
	private MyPagePointService service;
	
	public void setService(MyPagePointService service) {
		this.service = service;
	}

	public void setMemberLoginService(MemberLoginService memberLoginService) {
		this.memberLoginService = memberLoginService;
	}

	@RequestMapping(value = "loginProc.do", method = RequestMethod.POST)
	public ModelAndView loginCheck(@RequestParam String email, @RequestParam String pass,HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();
		MemberVO vo = memberLoginService.getMemberPass(email);

		if (vo == null) {
			mav.setViewName("main/mainPage");
			mav.addObject("result", "resultNoId");
			return mav;
		}

		if (pass.equals(vo.getPass())) {
			HttpSession session=request.getSession();
			session.setAttribute("loginID",vo);
			if(vo.getCode().equals("0")){
			mav.setViewName("main/u_mainPage");
			int money=0;
			try{money=service.getMoney(vo.getEmail());}catch(Exception e){}
			mav.addObject("money",money);	
			mav.addObject("result", "resultOK");
			mav.addObject("vo", vo);
			return mav;
			}else{
				mav.setViewName("main/a_mainPage");				
				mav.addObject("result", "resultOK");
				mav.addObject("vo", vo);
				return mav;	
			}
		} else {
			System.out.println("3");
			mav.setViewName("main/mainPage");
			mav.addObject("result", "resultNoPass");
			return mav;
		}
	}
	
	@RequestMapping(value = "userMainPage_home.do", method = RequestMethod.GET)
	public ModelAndView adminMain(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/u_mainPage");
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO) session.getAttribute("loginID");
		int money=0;
		try{money=service.getMoney(vo.getEmail());}catch(Exception e){}
		mav.addObject("money",money);	
		mav.addObject("vo", vo);
		return mav;
	}
	
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public ModelAndView adminLogout(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/mainPage");
		return mav;
	}
}

