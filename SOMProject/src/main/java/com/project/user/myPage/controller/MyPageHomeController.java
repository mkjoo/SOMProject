package com.project.user.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageHomeController {
	
	@RequestMapping(value="myPage_home.do", method=RequestMethod.GET)
	public String myPage_home(){
		return "myPage/myPage_home";
	}

}
