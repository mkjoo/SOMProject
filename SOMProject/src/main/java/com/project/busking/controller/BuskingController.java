package com.project.busking.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.busking.model.BuskingVO;
import com.project.busking.service.BuskingService;
import com.project.popular.model.PopularVO;
import com.project.user.myPage.model.MusicVO;

@Controller
public class BuskingController {
	private BuskingService service;
	
	public void setService(BuskingService service){
		this.service = service;
	}
	
	@RequestMapping(value="busking.do", method=RequestMethod.GET)
	public ModelAndView busking(BuskingVO BuskingVo){
		List<PopularVO> list=service.getNewestBusking(BuskingVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("busking/busking");
		mav.addObject("list", list);
		return mav;
	}
	@RequestMapping(value="busking1.do", method=RequestMethod.GET)
	public ModelAndView busking1(BuskingVO BuskingVo){
		List<BuskingVO> list=service.getPopularBusking(BuskingVo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("busking/busking");
		mav.addObject("list", list);
		return mav;
	}
	@RequestMapping(value="buskingUploadForm.do", method=RequestMethod.GET)
	public String b(){
		return "busking/buskingUploadForm";
	}
	
	@RequestMapping(value="buskingUploadProc.do",method=RequestMethod.POST)
	public ModelAndView submitVideo(@RequestParam("image") MultipartFile multipartFile1,@RequestParam("mp3") MultipartFile multipartFile2,MusicVO musicVo) throws Exception{
		String imageFileName=multipartFile1.getOriginalFilename();
		// 아래의 path 는 정해지면 바꿔주자 
		String path="C:/Users/welcometothehell/git/SOMProject/SOMProject/src/main/webapp/";
		File f=new File(path+"images/music/"+imageFileName);
		multipartFile1.transferTo(f);
		
		String mp3FileName=multipartFile2.getOriginalFilename();
		File f2=new File(path+"music/"+mp3FileName);
		multipartFile2.transferTo(f2);
		//////////////////////여까지가 파일업로드//////////////////////////////
		
		musicVo.setM_path("/som/music/"+mp3FileName);
		musicVo.setSrc("/som/images/music/"+imageFileName);
		service.addMusic(musicVo);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("busking/uploadComplete");
		mav.addObject("imageFileName",imageFileName);
		mav.addObject("mp3FileName",mp3FileName);
		return mav; 
	}
	
	
}
