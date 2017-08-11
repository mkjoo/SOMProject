package com.project.user.board.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
		mav.setViewName("qnaUpdateForm");
		mav.addAllObjects(model);
		return mav;
	}
	
	@RequestMapping("qnaUpdateProc.do")
	public ModelAndView onSubmit(HttpServletRequest request,QnaVO boardVo){
		System.out.println("update!");
		String pass=service.getPass(boardVo.getNum());
		if(boardVo.getPass().equals(pass)){
			this.service.updateArticle(boardVo);
			return new ModelAndView("redirect:list.do");
		}else{
			boardVo = service.getArticle(boardVo.getNum());
			Map<String,Object> model = new HashMap<String,Object>();
			model.put("vo",boardVo);
			String passerror="pass";
			model.put("value",passerror);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("qnaUpdateForm");
			mav.addAllObjects(model);
			return mav;
		}
}
}
