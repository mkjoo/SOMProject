package com.project.user.find.controller;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.find.service.FindService;

import sun.misc.BASE64Decoder;
@Controller
public class FindController {
	private FindService findService;

	public void setFindService(FindService findService) {
		this.findService = findService;
	}
	@RequestMapping(value="gumseck.do", method=RequestMethod.GET)
	public String a(){
		return "member/search";
	}
	@RequestMapping(value="gumseckID.do", method=RequestMethod.GET)
	public ModelAndView searchID(@RequestParam String mem_name,@RequestParam String mem_phone){
		ModelAndView modelandview=new ModelAndView();
		System.out.println(mem_name+","+mem_phone);
		HashMap map=new HashMap();
		map.put("name", mem_name);
		map.put("phone", mem_phone);
		String id=findService.findEmail(map);
		System.out.println("userID :"+id);
		modelandview.setViewName("member/search");
		modelandview.addObject("id",id);
		return modelandview;
	}
	
	@RequestMapping(value="gumseckPASS.do", method=RequestMethod.GET)
	public ModelAndView searchPASS(@RequestParam String mem_name,@RequestParam String mem_email) throws IOException{
		ModelAndView modelandview=new ModelAndView();
		System.out.println(mem_name+","+mem_email);
		HashMap map=new HashMap();
		map.put("name", mem_name);
		map.put("email", mem_email);
		String pass=findService.findPassword(map);
		BASE64Decoder b64d=new BASE64Decoder();
		byte b[]= b64d.decodeBuffer(pass);
		String deb=new String(b);
		System.out.println("userPASS :"+pass);
		modelandview.setViewName("member/search");
		modelandview.addObject("pass",deb);
		return modelandview;
	}
}
