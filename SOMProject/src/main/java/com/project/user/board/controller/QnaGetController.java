package com.project.user.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.QnaVO;
import com.project.user.board.service.QnaGetService;

@Controller
public class QnaGetController {
	private QnaGetService getArticleService;
	public void setGetArticleService(QnaGetService getArticleService) {
		this.getArticleService = getArticleService;
	}
	
	@RequestMapping("passConfirm.do")
	public ModelAndView confirm(@RequestParam String num,@RequestParam String pageNum){
		System.out.println(num+pageNum);
		ModelAndView mav=new ModelAndView("board/passConfirm");
		mav.addObject("num",num);
		mav.addObject("pageNum",pageNum);
		return mav;
	}
	@RequestMapping(value="qnaContent.do",method=RequestMethod.GET)
	public ModelAndView getArticle(@RequestParam String num,@RequestParam String pass){
		System.out.println("qnaContent.do");
		try{
		if(getArticleService.getPass(Integer.valueOf(num)).equals(pass)){
			QnaVO QnaVo = this.getArticleService.getArticle(Integer.valueOf(num));
			ModelAndView mav=new ModelAndView();
			mav.setViewName("board/qnaContent");
			mav.addObject("vo",QnaVo);
			return mav;
		}else{
			ModelAndView mav=new ModelAndView();
			mav.setViewName("board/passConfirm");
			return mav;
		}
		}catch(Exception e){}
		
		return new ModelAndView("");
	}
}
