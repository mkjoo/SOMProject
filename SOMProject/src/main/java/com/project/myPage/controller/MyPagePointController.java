package com.project.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPagePointController {

	@RequestMapping(value="myPoint.do", method=RequestMethod.GET)
	public String myPoint(){
		return "myPage/myPoint";
	}
}
