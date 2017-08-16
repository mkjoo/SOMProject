package com.project.user.member.service;

import com.project.user.member.model.MemberDAO;
import com.project.user.member.model.MemberVO;

public class MemberLoginServiceImpl implements MemberLoginService{
	//��� ���� ��ü �Ʒ� �ڵ尡 ���������� ���´�.-DAO�� �̿��� �۾��� ����
	private MemberDAO memberDao;
	
	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public MemberVO getMemberPass(String email) {
		MemberVO vo=memberDao.getMemberPass(email);
		return vo;
	}
}