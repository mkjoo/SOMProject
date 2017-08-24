package com.project.user.myPage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.PointVO;
import com.project.user.myPage.service.MyPagePointService;

@Controller
public class MyPagePointController {
	private MyPagePointService service;
	
	public void setService(MyPagePointService service) {
		this.service = service;
	}


	@RequestMapping(value="myPoint.do", method=RequestMethod.GET)
	public ModelAndView myPoint(HttpServletRequest request){
		if(request.getSession()==null){return new ModelAndView("main/mainPage");}
		HttpSession session=request.getSession();
		MemberVO MemberVo=(MemberVO)session.getAttribute("loginID");
		String email=MemberVo.getEmail().trim();
		ModelAndView mav=new ModelAndView();
		int money=0;
		try{money=service.getMoney(email);}catch(Exception e){}
		mav.addObject("money",money);	
		mav.setViewName("myPage/myPoint");
		return mav;
	}
	

	@RequestMapping(value="payment.do",method=RequestMethod.POST)
	public ModelAndView charge(HttpServletRequest request,PointVO pointVo){
		if(request.getSession()==null){return new ModelAndView("main/mainPage");}
		ModelAndView mav=new ModelAndView();
		HttpSession session=request.getSession();
		MemberVO MemberVo=(MemberVO)session.getAttribute("loginID");
		String email=MemberVo.getEmail().trim();
		if(service.getMoney(email)==null){
			pointVo.setEmail(email);
			service.chargeMoney(pointVo);
			int money=service.getMoney(email);
			mav.addObject("money",money);	
			mav.addObject("value","success");
			mav.setViewName("myPage/myPoint");
			return mav;	
		}else{
			//처음머니랑 가져온머니 셋팅해야대
			pointVo.setEmail(email);
			pointVo.setStartMoney(service.getMoney(email));
			service.updateMoney(pointVo);
			int money=service.getMoney(email);
			mav.addObject("money",money);	
			mav.addObject("value","success");
			mav.setViewName("myPage/myPoint");
			return mav;
		}
	}//end charge 메서드	
	
	@RequestMapping(value="buyProc.do",method=RequestMethod.GET)
	public ModelAndView buyMusic(HttpServletRequest request,PointVO pointVo){
		if(request.getSession()==null){return new ModelAndView("main/mainPage");}
		//내가 구매한 노래가 어디로 insert 해놔야하는데 어디로 넣는지 아직 모르겠다.
		HttpSession session=request.getSession();
		MemberVO MemberVo=(MemberVO)session.getAttribute("loginID");
		String email=MemberVo.getEmail().trim();
		
		pointVo.setEmail(email);
		pointVo.setM_point(service.getMoney(email));
		service.buyMusic(pointVo);		
		ModelAndView mav=new ModelAndView();
		mav.addObject("value","success");		
		mav.setViewName("myPage/myPage_home");
		return mav;
	}
	
}
