package com.project.admin.member_M.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.admin.member_M.service.AdminMember_MService;
import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.MusicVO;

@Controller
public class AdminMember_MController {
	private AdminMember_MService service;

	public AdminMember_MService getService() {
		return service;
	}

	public void setService(AdminMember_MService service) {
		this.service = service;
	}
	
	@RequestMapping(value="upload_album.mdo",method=RequestMethod.GET)
	public ModelAndView a()	{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("upload_album");
		return mav;
	}
		
	@RequestMapping(value="uploadProc.mdo",method=RequestMethod.POST)
	public ModelAndView submitVideo(@RequestParam("image") MultipartFile multipartFile1,@RequestParam("mp3") MultipartFile multipartFile2,MusicVO musicVo) throws Exception{
		String imageFileName=multipartFile1.getOriginalFilename();
		String path="C:/Users/welcometothehell/Desktop/8.22/0/SOMProject/src/main/webapp/WEB-INF/mp3";
		File f=new File("C:/Users/welcometothehell/Desktop/8.22/0/SOMProject/src/main/webapp/WEB-INF/mp3/"+imageFileName);
		multipartFile1.transferTo(f);
		
		String mp3FileName=multipartFile2.getOriginalFilename();
		File f2=new File("C:/Users/welcometothehell/Desktop/8.22/0/SOMProject/src/main/webapp/WEB-INF/mp3/"+mp3FileName);
		multipartFile2.transferTo(f2);
		//////////////////////여까지가 파일업로드//////////////////////////////
		
		musicVo.setM_path(path);
		musicVo.setSrc(path);
		service.addMusic(musicVo);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("uploadComplete");
		mav.addObject("imageFileName",imageFileName);
		mav.addObject("mp3FileName",mp3FileName);
		return mav; 
	}
	
	@RequestMapping(value="admin_home.mdo",method=RequestMethod.GET)
	public ModelAndView adminHome(){
		ModelAndView mav=new ModelAndView();
		List<MemberVO> list=service.getAllMember();
		int countMember=service.getCountMember();
		int countNotice=service.getCountNotice();
		int countQna=service.getCountQna();
		int countMusic=service.getCountMusic();
		
		mav.setViewName("admin_home");
		mav.addObject("list",list);
		mav.addObject("countMember",countMember);
		mav.addObject("countNotice",countNotice);
		mav.addObject("countQna",countQna);
		mav.addObject("countMusic",countMusic);
		return mav;
	}
	
	@RequestMapping(value="deleteMember.mdo",method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam String email){
		ModelAndView mav=new ModelAndView();
		int a=service.deleteMember(email);
		System.out.println(a);
		mav.setViewName("redirect:admin_home.mdo");
		return mav;
	}
	
	@RequestMapping(value = "adminMainPage_home.mdo", method = RequestMethod.GET)
	public ModelAndView adminMain(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("a_mainPage");
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO) session.getAttribute("loginID");
		mav.addObject("vo", vo);
		return mav;
	}
}
