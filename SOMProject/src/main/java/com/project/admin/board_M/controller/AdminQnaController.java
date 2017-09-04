package com.project.admin.board_M.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.admin.board_M.service.AdminQnaService;
import com.project.user.board.model.NoticeVO;
import com.project.user.board.model.Paging;
import com.project.user.board.model.QnaVO;
import com.project.user.board.model.QnaVO2;
import com.project.user.member.model.MemberVO;

@Controller
public class AdminQnaController {
	private AdminQnaService service;
	private Paging boardPaging;
	
	public void setBoardPaging(Paging boardPaging) {
		this.boardPaging = boardPaging;
	}

	public void setService(AdminQnaService service) {
		this.service = service;
	}
	
	@RequestMapping(value="adminQnaList.mdo", method=RequestMethod.GET)
	public ModelAndView getList(HttpServletRequest request,HttpServletResponse response)throws Exception{
		request.setCharacterEncoding("utf-8");
		String pageNum = request.getParameter("pageNum");
		if(pageNum==null||pageNum==""){pageNum="1";}
		int currentPage = Integer.parseInt(pageNum);		
		int pageSize = 10;
		int pagenavi = 5;
		Map<String,Object> map = new HashMap<String,Object>();
		int count = this.service.getListCount();
		int number=count-(currentPage-1)*pageSize;
		boardPaging.setPaging(pageSize,pagenavi,count,currentPage);
		map.put("startRow",boardPaging.getWriting_Start());
		map.put("endRow",boardPaging.getWriting_End());
		List<QnaVO> boardList = this.service.getList(map);
		Map<String,Object> model = new HashMap<String,Object>();
		SimpleDateFormat simpledateformat =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		for(QnaVO vo:boardList){
			System.out.println("찍어:"+vo.getCommentOX());
			vo.setFormatdate(simpledateformat.format(vo.getRegdate()));
		}
		
		model.put("qnaList",boardList);
		model.put("qnaCount",count);
		model.put("qnaNumber",number);
		model.put("qnaPageNum",pageNum);
		model.put("qnaBp",boardPaging);
		model.put("qnaStartRow",boardPaging.getWriting_Start());
		model.put("qnaEndRow",boardPaging.getWriting_End());
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("qna/qnaList");
		modelAndView.addAllObjects(model);
		return modelAndView;
	}
	
	
	@RequestMapping(value="adminQnaContent.mdo",method=RequestMethod.GET)
	public ModelAndView getArticle(@RequestParam String num){
			QnaVO QnaVo =service.getArticle(Integer.valueOf(num));
			SimpleDateFormat simpledateformat =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			QnaVo.setFormatdate(simpledateformat.format(QnaVo.getRegdate()));
			ModelAndView mav=new ModelAndView();
			mav.setViewName("qna/qnaContent");
			mav.addObject("vo",QnaVo);
			return mav;
	}
	
	
	@RequestMapping(value="adminQnaWriteForm.mdo", method=RequestMethod.GET)
	public ModelAndView setView(HttpServletRequest request){
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name=vo.getName().trim();
		ModelAndView mav=new ModelAndView("qna/qnaWriteForm");
		mav.addObject("writer",name);
		mav.addObject("email",vo.getEmail().trim());
		return mav;
	}
	
		
	@RequestMapping(value="adminQnaWriteProc.mdo", method=RequestMethod.POST)
	public ModelAndView onSubmit(HttpServletRequest request,QnaVO boardVo,BindingResult bindingResult)throws Exception{
		int num=0,ref=1,step=0,depth=0;
				
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String date=sdf.format(new Date());
		boardVo.setRegdate(new Date());
		int maxref=service.getMaxRef();
		ref=maxref+1;
		boardVo.setRef(ref);
		boardVo.setStep(step);
		boardVo.setDepth(depth);
		service.insertArticle(boardVo);
		return new ModelAndView("redirect:adminQnaList.mdo");
	}
	
	@RequestMapping(value="adminQnaReplyWriteForm.mdo", method=RequestMethod.GET)
	public ModelAndView onSubmit3(HttpServletRequest request,QnaVO boardVo)throws Exception{
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginID");
		String name=vo.getName().trim();

		
		int num=Integer.valueOf(request.getParameter("num"));
		int ref=Integer.valueOf(request.getParameter("ref"));
		int step=Integer.valueOf(request.getParameter("step"));
		int depth=Integer.valueOf(request.getParameter("depth"));
		ModelAndView mav = new ModelAndView();
		mav.setViewName("qna/qnaReplyWriteForm");
		mav.addObject("writer",name);
		mav.addObject("email",vo.getEmail().trim());
		mav.addObject("num",num);
		mav.addObject("ref",ref);
		mav.addObject("step",step);
		mav.addObject("depth",depth);
		return mav;
	}
		
	@RequestMapping(value="adminQnaReplyWriteProc.mdo", method=RequestMethod.POST)
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
		service.updateStep(vo2);
		step=step+1;
		depth=depth+1;
		boardVo.setRef(ref);
		boardVo.setStep(step);
		boardVo.setDepth(depth);
		service.insertArticle(boardVo);
///////////여기부터는 댓글처럼 들어갈 부분을 넣어주는 인서트작업/////
		HashMap map=new HashMap();
		map.put("num",boardVo.getNum());
		map.put("content",boardVo.getContent());		
		service.insertQnaComment(map);
		service.updateCommentOX(map);
		
		return new ModelAndView("redirect:adminQnaList.mdo");
	}
	
	
	@RequestMapping(value="adminQnaDeleteProc.mdo",method=RequestMethod.GET)
	public ModelAndView onSubmit(Integer num,QnaVO boardVo){
			service.deleteArticle(boardVo.getNum());	
			return new ModelAndView("redirect:adminQnaList.mdo");
					
	}

	@RequestMapping(value="adminQnaUpdateForm.mdo", method=RequestMethod.GET)
	public ModelAndView setView(Integer num){
		QnaVO boardVo = service.getArticle(num);
		SimpleDateFormat simpledateformat =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		boardVo.setFormatdate(simpledateformat.format(boardVo.getRegdate()));
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("vo",boardVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("qna/qnaUpdateForm");
		mav.addObject("num",num);
		mav.addAllObjects(model);
		return mav;
	}
			
	@RequestMapping(value="adminQnaUpdateProc.mdo", method=RequestMethod.POST)
	public String ooo(QnaVO boardVo){
		System.out.println(boardVo.getNum()+1);
		service.updateArticle(boardVo);
		return "redirect:adminQnaList.mdo";
	}
	
	
	
	
	
	
	
	
}
