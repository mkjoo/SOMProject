package com.project.user.myPage.model;

import java.util.List;

import com.project.user.member.model.MemberVO;

public interface MyPageDAO {
	//회원의 비밀번호를 얻어와 주는 메서드
	public MemberVO getMemberPass(String email);
	public void updateMember(MemberVO vo); 
	public void chargeMoney(PointVO vo);
	public void updateMoney(PointVO vo);
	public Integer getMoney(String email);
	public void buyMusic(PointVO vo);
	public void insertPlayList(PlayListVO vo);
	public List<PlayListVO> getPlayList(String email);
	public List<MusicVO> getMusic(Object obj);
	public List<MusicVO> getMyMysic(Object obj);
	public List<MusicVO> getMyPlay(Object obj);
	public void upCountPlay(String musicName);
	public void upCountPlay2(int a);
	public List<PlayListVO> getMyPlayList(Object obj);
	public void insertMyPlayList(Object obj);
	public void insertMyMusicList(Object obj);
	public void insertMyPlay(Object obj);
	public void insertMyPayment(Object obj);
	public List<PaymentVO> getMyPayment(String str);
}
