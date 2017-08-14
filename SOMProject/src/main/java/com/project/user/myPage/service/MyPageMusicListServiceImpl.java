package com.project.user.myPage.service;

import java.util.List;

import com.project.user.myPage.model.MusicVO;
import com.project.user.myPage.model.MyPageDAO;

public class MyPageMusicListServiceImpl implements MyPageMusicListService{
	private MyPageDAO dao;
	
	public void setDao(MyPageDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<MusicVO> getMusic(Object obj) {
		List<MusicVO> list=dao.getMusic(obj);
		return list;
	}
	@Override
	public void upCountPlay(String musicName) {
		dao.upCountPlay(musicName);
	}
}
