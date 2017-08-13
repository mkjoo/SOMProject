package com.project.user.board.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.QnaVO;
import com.project.user.board.service.QnaUpdateService;

@Controller
public class QnaUpdateController {
	private QnaUpdateService service;
	public void setService(QnaUpdateService service) {
		this.service = service;
	}

	@RequestMapping(value="qnaUpdateForm.do", method=RequestMethod.GET)
	public ModelAndView setView(Integer num){
		QnaVO boardVo = service.getArticle(num);
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("vo",boardVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/qnaUpdateForm");
		mav.addObject("num",num);
		mav.addAllObjects(model);
		return mav;
	}
	

		
	@RequestMapping(value="qnaUpdateProc.do", method=RequestMethod.POST)
	public String ooo(QnaVO boardVo){
		System.out.println(boardVo.getNum()+1);
		service.updateArticle(boardVo);
		return "redirect:qnaList.do";
	}
}
