package com.project.user.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.QnaVO;
import com.project.user.board.service.QnaGetService;
import com.project.user.member.model.MemberVO;

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
	public ModelAndView getArticle(HttpServletRequest request,@RequestParam String num,@RequestParam String pass){
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO) session.getAttribute("loginID");
		try{
		if(getArticleService.getPass(Integer.valueOf(num)).equals(pass)){
			QnaVO QnaVo = this.getArticleService.getArticle(Integer.valueOf(num));
			ModelAndView mav=new ModelAndView();
			mav.setViewName("board/qnaContent");
			
			mav.addObject("vo",QnaVo);
			mav.addObject("memberVO",vo);
			return mav;
		}else{
			ModelAndView mav=new ModelAndView();
			mav.setViewName("board/passConfirm");
			mav.addObject("value","passerror");
			return mav;
		}
		}catch(Exception e){e.printStackTrace();}
		
		return new ModelAndView("");
	}
}
