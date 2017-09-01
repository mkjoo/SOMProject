package com.project.user.myPage.service;

import java.util.List;

import com.project.user.myPage.model.MusicVO;
import com.project.user.myPage.model.MusicVO2;
import com.project.user.myPage.model.MyPageDAO;
import com.project.user.myPage.model.PlayListVO;

public class MyPagePlayListServiceImpl implements MyPagePlayListService{
	private MyPageDAO dao;
	
	public void setDao(MyPageDAO dao) {
		this.dao = dao;
	}

	@Override
	public void insertPlayList(PlayListVO vo) {
		dao.insertPlayList(vo);
	}

	@Override
	public List<PlayListVO> getPlayList(String email) {
		List<PlayListVO> list=dao.getPlayList(email);
		return list;
	}

	@Override
	public List<MusicVO> getMusic(Object obj) {
		List<MusicVO> list=dao.getMusic(obj);
		return list;
	}

	@Override
	public List<PlayListVO> getMyPlayList(Object obj) {
		List<PlayListVO> list=dao.getMyPlayList(obj);
		return list;
	}

	@Override
	public void insertMyPlayList(Object obj) {
		dao.insertMyPlayList(obj);
	}

	@Override
	public List<MusicVO> getMyMusic(Object obj) {
		List<MusicVO> list=dao.getMyMysic(obj);
		return list;
	}

	@Override
	public void insertMyPlay(Object obj) {
		dao.insertMyPlay(obj);
	}

	@Override
	public List<MusicVO2> getMyPlay(Object obj) {
		List<MusicVO2> list=dao.getMyPlay(obj);
		return list;
	}

	@Override
	public void upCountPlay2(Integer a) {
		dao.upCountPlay2(a);
	}

	@Override
	public void deleteList(Object obj) {
		dao.deleteList(obj);
	}

	@Override
	public void deleteMusicPlayer(Object obj) {
		dao.deleteMusicPlayer(obj);
	}

	



}
