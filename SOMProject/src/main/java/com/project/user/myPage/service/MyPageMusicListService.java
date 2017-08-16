package com.project.user.myPage.service;

import java.util.List;

import com.project.user.myPage.model.MusicVO;

public interface MyPageMusicListService {
	public List<MusicVO> getMusic(Object obj);
	public void upCountPlay(String musicName);
	public void insertMyMusicList(Object obj);
}
