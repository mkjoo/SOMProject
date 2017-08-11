package com.project.user.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.QnaVO;
import com.project.user.board.service.QnaDeleteService;

@Controller
public class QnaDeleteController {
	private QnaDeleteService service;
	
	public void setService(QnaDeleteService service) {
		this.service = service;
	}

	@RequestMapping("qnaDeleteForm.do")
	public ModelAndView setView(Integer num){
		ModelAndView mav=new ModelAndView("qnaDeleteForm");
		mav.addObject("num",num);
		return mav;
	}
	
	@RequestMapping(value="qnaDeleteProc.do",method=RequestMethod.POST)
	public ModelAndView onSubmit(Integer num,QnaVO boardVo){
		String dbpass = service.getPass(num);
		if(boardVo.getPass().equals(dbpass)){
			service.deleteArticle(boardVo.getNum());	
			return new ModelAndView("redirect:list.do");
		}else{
			ModelAndView mav=new ModelAndView("qnaDeleteForm");
			mav.addObject("num",num);
			mav.addObject("value","passerror");
			return mav;
		}		
}
}
