package com.project.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageMusicListController {

	@RequestMapping(value="myMusic_list.do", method=RequestMethod.GET)
	public String myMusic_list(){
		return "myPage/myMusic_list";
	}
}
