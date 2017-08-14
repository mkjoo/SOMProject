package com.project.user.myPage.service;

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.MyPageDAO;

public class MyPageUpdateServiceImpl implements MyPageUpdateService{
	private MyPageDAO dao;
	
	public void setDao(MyPageDAO dao) {
		this.dao = dao;
	}

	@Override
	public MemberVO getMemberPass(String email) {
		MemberVO vo=dao.getMemberPass(email);
		return vo;
	}

	@Override
	public void updateMember(MemberVO vo) {
		dao.updateMember(vo);
	}

}
