package com.project.user.board.controller;

import org.springframework.stereotype.Controller;

import com.project.user.board.service.NoticeDeleteService;

@Controller
public class NoticeDeleteController {
	private NoticeDeleteService service;

	public void setService(NoticeDeleteService service) {
		this.service = service;
	}
	
}
