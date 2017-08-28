package com.project.user.filedownload.controller;

import java.io.File;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.PointVO;
import com.project.user.myPage.service.MyPagePointService;

@Controller
public class FileDownloadController {
		private MyPagePointService service;
		
		public void setService(MyPagePointService service) {
			this.service = service;
		}

	@RequestMapping(value="download.do",method=RequestMethod.GET)
	public ModelAndView buy(HttpServletRequest request,@RequestParam String path,@RequestParam String fileName){
		
		HttpSession session=request.getSession();
		MemberVO MemberVo=(MemberVO)session.getAttribute("loginID");
		String email=MemberVo.getEmail().trim();
		int mymoney=service.getMoney(email);
		if(mymoney<500){
			ModelAndView mav=new ModelAndView();
			mav.addObject("path",path);
			mav.addObject("fileName",fileName);
			mav.addObject("value","success");
			mav.setViewName("fileDownload/confirm");
			return mav;
		}else{
		PointVO vo = new PointVO();
		vo.setUsecontent("buymusic");
		vo.setUsepoint(500);
		vo.setEmail(email);
		service.buyMusic(vo);
		
		
		HashMap map=new HashMap();
		map.put("email",email);
		map.put("usepoint","500");
		map.put("usecontent","buymusic");
		map.put("chargepoint",0);
		service.insertMyPayment(map);
		
		
		//아래 path 를 직접 입력해주도록 한다..
		//c:/본인꺼/somProject/넣고싶은곳/xx.mp3
		//String fullPath = path+"/"+fileName+".mp3";
		System.out.println(fileName);
		String fullPath="C:/Users/welcometothehell/git/SOMProject/SOMProject/src/main/webapp/music/"+fileName+".mp3";
		File file = new File(fullPath);
		System.out.println(fullPath);
		ModelAndView mav=new ModelAndView("download","downloadFile",file);
		return mav;
		}
	}
}
