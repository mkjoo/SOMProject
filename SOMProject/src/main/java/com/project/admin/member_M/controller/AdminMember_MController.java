package com.project.admin.member_M.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.project.admin.member_M.service.AdminMember_MService;

@Controller
public class AdminMember_MController {
	private AdminMember_MService service;

	public AdminMember_MService getService() {
		return service;
	}

	public void setService(AdminMember_MService service) {
		this.service = service;
	}
	
	@RequestMapping(value="upload_album.mdo",method=RequestMethod.GET)
	public ModelAndView a()	{
		
		
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("upload_album");
		return mav;
	}
}
