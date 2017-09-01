package com.project.admin.member_M.controller;

import java.io.File;
import java.util.HashMap;
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
import com.project.busking.service.BuskingService;
import com.project.popular.model.PopularVO;
import com.project.popular.service.PopularService;
import com.project.user.board.model.NoticeVO;
import com.project.user.board.service.NoticeListService;
import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.MusicVO;

@Controller
public class AdminMember_MController {
	private AdminMember_MService service;
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

		HashMap map=new HashMap();
		map.put("startRow",1);
		map.put("endRow",5);
		List<PopularVO> list1=popularService.getMainNewest(map);
		List<PopularVO> list2=popularService.getMainPopular(map);
		List<PopularVO> list3=buskingService.getMainBusking(map);
		List<NoticeVO> list4=noticeListService.getBoardList(map);
		mav.addObject("newestList",list1);
		mav.addObject("popularList",list2);
		mav.addObject("buskingList",list3);
		mav.addObject("noticeList",list4);
		mav.addObject("vo", vo);
		return mav;
	}
}
