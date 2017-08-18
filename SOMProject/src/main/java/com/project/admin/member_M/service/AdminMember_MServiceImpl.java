package com.project.admin.member_M.service;

import java.util.List;

import com.project.admin.member_M.model.AdminMember_MDAO;
import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.MusicVO;

public class AdminMember_MServiceImpl implements AdminMember_MService{
	private AdminMember_MDAO dao;

	public AdminMember_MDAO getDao() {
		return dao;
	}

	public void setDao(AdminMember_MDAO dao) {
		this.dao = dao;
	}

	@Override
	public void addMusic(MusicVO vo) {
		dao.addMusic(vo);
	}

	@Override
	public List<MemberVO> getAllMember() {
		List<MemberVO> list=dao.getAllMember();
		return list;
	}

	@Override
	public int getCountMember() {
		int a=dao.getCountMember();
		return a;
	}

	@Override
	public int getCountNotice() {
		int a=dao.getCountNotice();
		return a;
	}

	@Override
	public int getCountQna() {
		int a=dao.getCountQna();
		return a;
	}

	@Override
	public int getCountMusic() {
		int a=dao.getCountMusic();
		return a;
	}

	@Override
	public int getCountFreeBoard() {
		int a=dao.getCountFreeBoard();
		return a;
	}

	@Override
	public int deleteMember(String email) {
		int a=dao.deleteMember(email);
		return a;
	}
	
	
}
