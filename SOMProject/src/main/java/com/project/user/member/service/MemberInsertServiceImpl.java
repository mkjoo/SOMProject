package com.project.user.member.service;

import org.springframework.stereotype.Service;

import com.project.user.member.model.MemberDAO;
import com.project.user.member.model.MemberVO;

@Service
public class MemberInsertServiceImpl implements MemberInsertService{
	
	//모든 서비스 객체 아래 코드가 공통적으로 들어온다.-DAO를 이용한 작업을 수행
	private MemberDAO memberDao;
	
	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public void insertMember(MemberVO vo) {
		memberDao.insertMember(vo);
	}




}
