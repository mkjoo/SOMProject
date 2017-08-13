package com.project.user.board.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.NoticeVO;
import com.project.user.board.service.NoticeUpdateService;

@Controller
public class NoticeUpdateController {
	private NoticeUpdateService service;

	public void setService(NoticeUpdateService service) {
		this.service = service;
	}
	
	@RequestMapping(value="noticeUpdateForm.do", method=RequestMethod.GET)
	public ModelAndView setView(Integer num){
		NoticeVO boardVo = service.getArticle(num);
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("vo",boardVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/noticeUpdateForm");
		mav.addObject("num",num);
		mav.addAllObjects(model);
		return mav;
	}
	

		
	@RequestMapping(value="noticeUpdateProc.do", method=RequestMethod.POST)
	public String ooo(NoticeVO boardVo){
		System.out.println(boardVo.getNum()+1);
		service.updateArticle(boardVo);
		return "redirect:noticeList.do";
	}
}
