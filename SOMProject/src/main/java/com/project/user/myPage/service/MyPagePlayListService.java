package com.project.user.myPage.service;

import java.util.List;

import com.project.user.myPage.model.MusicVO;
import com.project.user.myPage.model.MusicVO2;
import com.project.user.myPage.model.PlayListVO;

public interface MyPagePlayListService {
	public void insertPlayList(PlayListVO vo);
	public List<PlayListVO> getPlayList(String email);
	public List<MusicVO> getMusic(Object obj);
	public List<MusicVO> getMyMusic(Object obj);
	public List<PlayListVO> getMyPlayList(Object obj);
	public void insertMyPlayList(Object obj);
	public void insertMyPlay(Object obj);
	public List<MusicVO2> getMyPlay(Object obj);
	public void upCountPlay2(Integer a);
	public void deleteList(Object obj);
	public void deleteMusicPlayer(Object obj);
}
