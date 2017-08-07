package com.project.busking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuskingController {
	
	@RequestMapping(value="busking.do", method=RequestMethod.GET)
	public String busking(){
		return "busking/busking";
	}

}
