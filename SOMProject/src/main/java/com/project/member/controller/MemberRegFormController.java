package com.project.member.controller;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.model.MemberVO;
import com.project.member.service.MemberInsertService;

@Controller
public class MemberRegFormController {
	// 모든 컨트롤러는 수행하려는 작업의 서비스를 주입
	private MemberInsertService memberInsertService;

	public void setMemberInsertService(MemberInsertService memberInsertService) {
		this.memberInsertService = memberInsertService;
	}

	@RequestMapping(value = "regForm.do", method = RequestMethod.GET)
	public ModelAndView checkCertify(@RequestParam("Address") String Address, @RequestParam("certify") String certify,
			@RequestParam("certifyNumber") String certifyNumber) throws AddressException, MessagingException {

		if (certify.equals(certifyNumber)) {
			ModelAndView mv1 = new ModelAndView();
			mv1.setViewName("/member/regForm");
			mv1.addObject("Address", Address);
			mv1.addObject("certify", certify);
			mv1.addObject("certifyNumber", certifyNumber);
			return mv1;
		} else {
			ModelAndView mv1 = new ModelAndView();
			mv1.setViewName("/member/regForm2");
			mv1.addObject("Address", Address);
			mv1.addObject("certifyNumber", certifyNumber);
			
			return mv1;
		}

	}

}