package com.project.user.member.controller;

import java.io.IOException;
import java.util.HashMap;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.busking.model.BuskingVO;
import com.project.busking.service.BuskingService;
import com.project.popular.model.PopularVO;
import com.project.popular.service.PopularService;
import com.project.user.board.model.NoticeVO;
import com.project.user.board.service.NoticeListService;
import com.project.user.member.model.MemberVO;
import com.project.user.member.service.MemberLoginService;
import com.project.user.myPage.service.MyPagePointService;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

@Controller
public class MemberLoginController {
	private MemberLoginService memberLoginService;
	private MyPagePointService service;
	private PopularService popularService;
	private BuskingService buskingService;
	private NoticeListService noticeListService;
	
	public void setPopularService(PopularService popularService) {
		this.popularService = popularService;
	}

	public void setBuskingService(BuskingService buskingService) {
		this.buskingService = buskingService;
	}

	public void setNoticeListService(NoticeListService noticeListService) {
		this.noticeListService = noticeListService;
	}

	public void setService(MyPagePointService service) {
		this.service = service;
	}

	public void setMemberLoginService(MemberLoginService memberLoginService) {
		this.memberLoginService = memberLoginService;
	}

	@RequestMapping(value = "loginProc.do", method = RequestMethod.POST)
	public ModelAndView loginCheck(@RequestParam String email, @RequestParam String pass,HttpServletRequest request) throws IOException {
		MemberVO vo = memberLoginService.getMemberPass(email);
		BASE64Encoder encoding = new BASE64Encoder();
		BASE64Decoder decoding = new BASE64Decoder();
		String decodingPass = new String(decoding.decodeBuffer(vo.getPass()));
		HashMap map=new HashMap();
		map.put("startRow",1);
		map.put("endRow",5);
		List<PopularVO> list1=popularService.getMainNewest(map);
		List<PopularVO> list2=popularService.getMainPopular(map);
		List<BuskingVO> list3=buskingService.getMainBusking(map);
		List<NoticeVO> list4=noticeListService.getBoardList(map);
				
		ModelAndView mav = new ModelAndView();
		

		if (vo == null) {
			mav.setViewName("main/mainPage");
			mav.addObject("result", "resultNoId");
			return mav;
		}

		if (pass.equals(vo.getPass())) {
			if(memberLoginService.getMemberLogin(email).equals("1")){ModelAndView mav2=new ModelAndView("main/mainPage");mav2.addObject("result","alreadyLogin");return mav2;}
			HttpSession session=request.getSession();
			session.setAttribute("loginID",vo);
			if(vo.getCode().equals("0")){
			mav.setViewName("main/u_mainPage");
			int money=0;
			try{money=service.getMoney(vo.getEmail());}catch(Exception e){}
			mav.addObject("money",money);	
			mav.addObject("result", "resultOK");
			mav.addObject("vo", vo);
			mav.addObject("newestList",list1);
			mav.addObject("popularList",list2);
			mav.addObject("buskingList",list3);
			mav.addObject("noticeList",list4);
			HashMap map2 = new HashMap();
			map2.put("email",email);
			map2.put("login","1");
			memberLoginService.updateMemberLogin(map2);
			return mav;
			}else{
				mav.setViewName("main/a_mainPage");				
				mav.addObject("result", "resultOK");
				mav.addObject("vo", vo);
				mav.addObject("newestList",list1);
				mav.addObject("popularList",list2);
				mav.addObject("buskingList",list3);
				mav.addObject("noticeList",list4);
				return mav;	
			}
		} else {
			System.out.println("3");
			mav.setViewName("main/mainPage");
			mav.addObject("result", "resultNoPass");
			return mav;
		}
	}
	
	@RequestMapping(value = "userMainPage_home.do", method = RequestMethod.GET)
	public ModelAndView adminMain(HttpServletRequest request) {
		HashMap map=new HashMap();
		map.put("startRow",1);
		map.put("endRow",5);
		List<PopularVO> list1=popularService.getMainNewest(map);
		List<PopularVO> list2=popularService.getMainPopular(map);
		List<BuskingVO> list3=buskingService.getMainBusking(map);
		List<NoticeVO> list4=noticeListService.getBoardList(map);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/u_mainPage");
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO) session.getAttribute("loginID");
		int money=0;
		try{money=service.getMoney(vo.getEmail());}catch(Exception e){}
		mav.addObject("money",money);	
		mav.addObject("vo", vo);
		mav.addObject("newestList",list1);
		mav.addObject("popularList",list2);
		mav.addObject("buskingList",list3);
		mav.addObject("noticeList",list4);
		return mav;
	}
	
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public ModelAndView adminLogout(HttpServletRequest request) {
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO) session.getAttribute("loginID");
		HashMap map = new HashMap();
		map.put("email",vo.getEmail());
		map.put("login","0");
		memberLoginService.updateMemberLogin(map);
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/mainPage");
		return mav;
	}
}

