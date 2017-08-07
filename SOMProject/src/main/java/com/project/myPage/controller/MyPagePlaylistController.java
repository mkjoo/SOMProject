package com.project.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPagePlaylistController {

	@RequestMapping(value="Playlist.do", method=RequestMethod.GET)
	public String Playlist(){
		return "myPage/Playlist";
	}
}
