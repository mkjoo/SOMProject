package com.project.user.member.service;

import org.springframework.stereotype.Service;

import com.project.user.member.model.MemberDAO;
import com.project.user.member.model.MemberVO;

@Service
public class MemberInsertServiceImpl implements MemberInsertService{
	
	//��� ���� ��ü �Ʒ� �ڵ尡 ���������� ���´�.-DAO�� �̿��� �۾��� ����
	private MemberDAO memberDao;
	
	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public void insertMember(MemberVO vo) {
		memberDao.insertMember(vo);
	}




}
