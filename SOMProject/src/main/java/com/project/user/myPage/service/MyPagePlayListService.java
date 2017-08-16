package com.project.user.myPage.service;

import java.util.List;

import com.project.user.myPage.model.MusicVO;
import com.project.user.myPage.model.PlayListVO;

public interface MyPagePlayListService {
	public void insertPlayList(PlayListVO vo);
	public List<PlayListVO> getPlayList(String email);
	public List<MusicVO> getMusic(Object obj);
	public List<MusicVO> getMyMusic(Object obj);
	public List<PlayListVO> getMyPlayList(Object obj);
	public void insertMyPlayList(Object obj);
	public void insertMyPlay(Object obj);
	public List<MusicVO> getMyPlay(Object obj);
}