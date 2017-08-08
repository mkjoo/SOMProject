package com.project.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageMemberUpdateController {

	@RequestMapping(value="member_update.do", method=RequestMethod.GET)
	public String member_update(){
		return "myPage/member_update";
	}
}
