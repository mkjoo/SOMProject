package com.project.user.member.service;

import com.project.user.member.model.MemberDAO;

public class MemberCreateServiceImpl implements MemberCreateService{
	//모든 서비스 객체 아래 코드가 공통적으로 들어온다.-DAO를 이용한 작업을 수행
	private MemberDAO memberDao;
	
	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public void createTable(Object obj) {
		memberDao.createTable(obj);
	}

	@Override
	public void createTableMusicList(Object obj) {
		memberDao.createTableMusicList(obj);
	}

	@Override
	public void createTablePlay(Object obj) {
		memberDao.createTablePlay(obj);
	}

	@Override
	public void createPlayListSequence(Object obj) {
		memberDao.createPlayListSequence(obj);
	}

	@Override
	public void createPlaySequence(Object obj) {
		memberDao.createPlaySequence(obj);
	}

	@Override
	public void insertPlayList(Object obj) {
		memberDao.insertPlayList(obj);
	}



}
