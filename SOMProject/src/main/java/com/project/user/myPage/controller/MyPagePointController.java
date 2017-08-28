package com.project.user.myPage.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.PaymentVO;
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
			
			HashMap map=new HashMap();
			map.put("email",email);
			map.put("usepoint", 0);
			map.put("usecontent", "충전");
			map.put("chargepoint",Integer.valueOf(pointVo.getM_point()));
			service.insertMyPayment(map);
						
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
			
			HashMap map=new HashMap();
			map.put("email",email);
			map.put("usepoint", 0);
			map.put("usecontent", "충전");
			map.put("chargepoint",Integer.valueOf(pointVo.getM_point()));
			service.insertMyPayment(map);
			
			
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
		
		HashMap map=new HashMap();
		map.put("email",email);
		map.put("usepoint","500");
		map.put("usecontent","buymusic");
		map.put("chargepoint",0);
		service.insertMyPayment(map);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("value","success");		
		mav.setViewName("myPage/myPage_home");
		return mav;
	}
	
	@RequestMapping(value="paymentdetail.do", method=RequestMethod.GET)
	public ModelAndView paymentdetail(HttpServletRequest request){
		if(request.getSession()==null){return new ModelAndView("main/mainPage");}
		HttpSession session=request.getSession();
		MemberVO MemberVo=(MemberVO)session.getAttribute("loginID");
		String email=MemberVo.getEmail().trim();
		ModelAndView mav=new ModelAndView();
		List<PaymentVO> list=service.getMyPayment(email);
		mav.addObject("list",list);	
		mav.setViewName("myPage/paymentdetail");
		return mav;
	}
	
	
}
