package com.project.user.board.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.NoticeVO;
import com.project.user.board.service.NoticeWriteService;

@Controller
public class NoticeWriteController {
	private NoticeWriteService writeService;
	public void setWriteService(NoticeWriteService writeService) {
		this.writeService = writeService;
	}
	@RequestMapping(value="noticeWriteForm.do", method=RequestMethod.GET)
	public String setView(){
		return "board/noticeWriteForm";
	}
	
	@RequestMapping(value="noticeWriteProc.do", method=RequestMethod.POST)
	public ModelAndView onSubmit(NoticeVO boardVo){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String date=sdf.format(new Date());
		boardVo.setRegdate(new Date());
		this.writeService.insertWriting(boardVo);
		return new ModelAndView("redirect:noticeList.do");
	}
}
