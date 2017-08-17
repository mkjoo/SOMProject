package com.project.musicPlayer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MusicPlayerController {

	@RequestMapping(value="musicPlayer.do", method=RequestMethod.GET)
	public String musicPlayer(){
		return "musicPlayer/musicPlayer";
	}
}
