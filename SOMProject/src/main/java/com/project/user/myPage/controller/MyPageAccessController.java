
package com.project.user.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageAccessController {
	
	@RequestMapping(value="myPage_acc.do", method=RequestMethod.GET)
	public String myPage_acc(){
		return "myPage/myPage_acc";
	}
		
}