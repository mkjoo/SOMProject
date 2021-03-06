package com.project.user.myPage.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.project.user.member.model.MemberVO;

public class MyPageDAOImpl implements MyPageDAO{
	private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public MemberVO getMemberPass(String email) {
		String statement="com.project.user.myPage.getMemberPass";
		MemberVO vo=sqlSession.selectOne(statement,email);
		return vo;	
	}

	@Override
	public void updateMember(MemberVO vo) {
		String statement="com.project.user.myPage.updateMember";
		sqlSession.update(statement,vo);
	}

	@Override
	public void chargeMoney(PointVO vo) {
		String statement="com.project.user.myPage.chargeMoney";
		sqlSession.insert(statement,vo);
	}

	@Override
	public void updateMoney(PointVO vo) {
		String statement="com.project.user.myPage.updateMoney";
		sqlSession.update(statement,vo);
		
	}

	@Override
	public Integer getMoney(String email) {
		String statement="com.project.user.myPage.getMoney";
		Integer startMoney=sqlSession.selectOne(statement,email);
		return startMoney;
	}

	@Override
	public void buyMusic(PointVO vo) {
		String statement="com.project.user.myPage.buyMusic";
		sqlSession.update(statement,vo);
	}

	@Override
	public void insertPlayList(PlayListVO vo) {
		String statement="com.project.user.myPage.insertPlayList";
		sqlSession.insert(statement,vo);
	}

	@Override
	public List<PlayListVO> getPlayList(String email) {
		String statement="com.project.user.myPage.getPlayList";
		List<PlayListVO> list=sqlSession.selectList(statement,email);
		return list;
	}

	@Override
	public List<MusicVO> getMusic(Object obj) {
		String statement="com.project.user.myPage.getMusic";
		List<MusicVO> list=sqlSession.selectList(statement,obj);
		return list;
	}

	@Override
	public void upCountPlay(String musicName) {
		String statement="com.project.user.myPage.upCountPlay";
		sqlSession.update(statement,musicName);
	}

	@Override
	public List<PlayListVO> getMyPlayList(Object obj) {
		String statement="com.project.user.myPage.getMyPlayList";
		List<PlayListVO> list=sqlSession.selectList(statement,obj);
		return list;
	}

	@Override
	public void insertMyPlayList(Object obj) {
		String statement="com.project.user.myPage.insertMyPlayList";
		sqlSession.insert(statement,obj);
	}

	@Override
	public void insertMyMusicList(Object obj) {
		String statement="com.project.user.myPage.insertMyMusicList";
		sqlSession.insert(statement,obj);	
	}

	@Override
	public List<MusicVO> getMyMysic(Object obj) {
		String statement="com.project.user.myPage.getMyMysic";
		List<MusicVO> list=sqlSession.selectList(statement,obj);
		return list;
	}

	@Override
	public void insertMyPlay(Object obj) {
		String statement="com.project.user.myPage.insertMyPlay";
		sqlSession.insert(statement,obj);	
	}

	@Override
	public List<MusicVO2> getMyPlay(Object obj) {
		String statement="com.project.user.myPage.getMyPlay";
		List<MusicVO2> list=sqlSession.selectList(statement,obj);
		return list;
	}

	@Override
	public void insertMyPayment(Object obj) {
		String statement="com.project.user.myPage.insertMyPayment";
		sqlSession.insert(statement,obj);
	}

	@Override
	public List<PaymentVO> getMyPayment(String str) {
		String statement="com.project.user.myPage.getMyPayment";
		List<PaymentVO> list=sqlSession.selectList(statement,str);
		return list;
	}

	@Override
	public void upCountPlay2(int a) {
		String statement="com.project.user.myPage.upCountPlay";
		sqlSession.update(statement,a);
	}

	@Override
	public void deleteList(Object obj) {
		String statement="com.project.user.myPage.deleteList";
		sqlSession.delete(statement,obj);
	}

	@Override
	public void deleteMusicPlayer(Object obj) {
		String statement="com.project.user.myPage.deleteMusicPlayer";
		sqlSession.delete(statement,obj);
		
	}
}