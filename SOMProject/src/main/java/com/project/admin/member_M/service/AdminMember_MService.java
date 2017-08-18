package com.project.admin.member_M.service;

import java.util.List;

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.MusicVO;

public interface AdminMember_MService {
	void addMusic(MusicVO vo);
	List<MemberVO> getAllMember();
	int getCountMember();
	int getCountNotice();
	int getCountQna();
	int getCountMusic();
	int getCountFreeBoard();
	int deleteMember(String email);
	
}
