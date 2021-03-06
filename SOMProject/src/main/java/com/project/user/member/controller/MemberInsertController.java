package com.project.user.member.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.user.member.model.MemberVO;
import com.project.user.member.service.MemberCreateService;
import com.project.user.member.service.MemberInsertService;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

@Controller
public class MemberInsertController {
	// 모든 컨트롤러는 수행하려는 작업의 서비스를 주입
	private MemberInsertService memberInsertService;
	private MemberCreateService memberCreateService;

	
	public void setMemberCreateService(MemberCreateService memberCreateService) {
		this.memberCreateService = memberCreateService;
	}

	public void setMemberInsertService(MemberInsertService memberInsertService) {
		this.memberInsertService = memberInsertService;
	}
	
	@RequestMapping(value="regForm1.do", method=RequestMethod.GET)
	public String regForm(){
		return "member/regForm1";
	}
	
	
	@RequestMapping(value="regProc.do", method=RequestMethod.GET)
	public ModelAndView regProc(MemberVO vo) throws IOException{
		////암호화작업/////
		BASE64Encoder encoding = new BASE64Encoder();
		BASE64Decoder decoding = new BASE64Decoder();
		String encodingPass = encoding.encode(vo.getPass().getBytes());
		String decodingPass = new String(decoding.decodeBuffer(encodingPass));
		vo.setPass(encodingPass);
		vo.setJoindate(new Date());
		//memberInsertService.insertMember(vo);
		HashMap map=new HashMap();
		String[] str=vo.getEmail().split("@");
		String deleteAt=str[0];
		String tableName=deleteAt+"_playList";
		String sql="create table "+tableName+"(list_name varchar2(40), list_num number(6,0) primary key)";
		map.put("sql",sql);
		memberCreateService.createTable(map);
		///////////////////CREATE PLAYLIST/////////
		
		String tableName3=deleteAt+"_play";
		String sql3="create table "+tableName3+"(turn number(6,0), m_num number(6,0), constraint "+tableName3+"_FK foreign key(m_num) references music(m_num))";
		map.put("sql",sql3);
		memberCreateService.createTablePlay(map);
		///////////////////CREATE PLAY/////////////////
		
		String tableName2=deleteAt+"_musicList";
		String sql2="create table "+tableName2+"(num number(6,0), m_num number(6,0), list_num number(6,0), constraint "+tableName2+"_FK1 foreign key(m_num) references music(m_num), "+"constraint "+tableName2+"_FK2 foreign key(list_num) references "+tableName+"(list_num))";
		map.put("sql",sql2);
		memberCreateService.createTableMusicList(map);
		///////////////////CREATE MUSICLIST/////////////////
	
		String sequenceName1 = deleteAt+"_playList_seq";
		String sql4="create sequence "+sequenceName1+" increment by 1 nocache nomaxvalue";
		map.put("sql",sql4);
		//memberCreateService.createPlayListSequence(map);
		////////////////////CREATE playlist_SEQUENCE///////////
		String sequenceName2 = deleteAt+"_play_seq";
		String sql5="create sequence "+sequenceName2+" increment by 1 nocache nomaxvalue";
		map.put("sql",sql5);
		//memberCreateService.createPlayListSequence(map);
		
		////////////////////CREATE play_SEQUENCE///////////
		map.put("tableName", tableName);
		map.put("listName", "내재생목록1");
		map.put("sequenceName", sequenceName1);
		//memberCreateService.insertPlayList(map);
		
		ModelAndView mav=new ModelAndView("member/regProc");
		return mav;
	}

}
