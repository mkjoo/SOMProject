package com.project.user.board.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.board.model.QnaVO;
import com.project.user.board.model.QnaVO2;
import com.project.user.board.service.QnaWriteService;

@Controller
public class QnaWriteController {
	private QnaWriteService writeService;
	public void setWriteService(QnaWriteService writeService) {
		this.writeService = writeService;
	}

	@RequestMapping(value="qnaWriteForm.do", method=RequestMethod.GET)
	public String setView(){
		return "qnaWriteForm";
	}
	
	
	@RequestMapping(value="qnaWriteProc.do", method=RequestMethod.POST)
	public ModelAndView onSubmit(HttpServletRequest request,QnaVO boardVo,BindingResult bindingResult)throws Exception{
		int num=0,ref=1,step=0,depth=0;
				
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String date=sdf.format(new Date());
		boardVo.setRegdate(new Date());
		int maxref=writeService.getMaxRef();
		ref=maxref+1;
		boardVo.setRef(ref);
		boardVo.setStep(step);
		boardVo.setDepth(depth);

		System.out.println("n="+num+"/  r="+ref+"/  s="+step+"/  d="+depth);
		this.writeService.insertWriting(boardVo);
		return new ModelAndView("redirect:list.do");
	}
	
	
	
	
	
	@RequestMapping(value="qnaReplyWriteForm.do", method=RequestMethod.GET)
	public ModelAndView onSubmit3(HttpServletRequest request,QnaVO boardVo)throws Exception{
		int num=Integer.valueOf(request.getParameter("num"));
		int ref=Integer.valueOf(request.getParameter("ref"));
		int step=Integer.valueOf(request.getParameter("step"));
		int depth=Integer.valueOf(request.getParameter("depth"));
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/qnaReplyWriteForm");
		mav.addObject("num",num);
		mav.addObject("ref",ref);
		mav.addObject("step",step);
		mav.addObject("depth",depth);
		System.out.println("n="+num+"/  r="+ref+"/  s="+step+"/  d="+depth);
		return mav;
	}
	
	
	@RequestMapping(value="qnaReplyWriteProc.do", method=RequestMethod.POST)
	public ModelAndView onSubmit2(HttpServletRequest request,QnaVO boardVo)throws Exception{
		int num=Integer.valueOf(request.getParameter("num"));
		int ref=Integer.valueOf(request.getParameter("ref"));
		int step=Integer.valueOf(request.getParameter("step"));
		int depth=Integer.valueOf(request.getParameter("depth"));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String date=sdf.format(new Date());
		boardVo.setRegdate(new Date());
		System.out.println("n="+num+"/  r="+ref+"/  s="+step+"/  d="+depth);
		QnaVO2 vo2 = new QnaVO2();
		vo2.setRef(ref);
		vo2.setDepth(depth);
		
		this.writeService.updateStep(vo2);
		
		step=step+1;
		depth=depth+1;
		boardVo.setRef(ref);
		boardVo.setStep(step);
		boardVo.setDepth(depth);
		this.writeService.insertWriting(boardVo);
		return new ModelAndView("redirect:qnaList.do");
	}
	
}
