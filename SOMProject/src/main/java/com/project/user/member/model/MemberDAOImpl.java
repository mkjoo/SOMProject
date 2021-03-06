package com.project.user.member.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	//마이바티스를 통한 데이터베이스 연결을 위한 sqlSession을 주입
	private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public MemberVO getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberVO> getMemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertMember(MemberVO vo) {
		String statement="com.project.member.insertMember";
		sqlSession.insert(statement,vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMember(String id, String pass) {
		// TODO Auto-generated method stub

	}

	@Override
	public MemberVO getMemberPass(String email) {
		String statement="com.project.member.getMemberPass";
		MemberVO vo=sqlSession.selectOne(statement,email);
		return vo;	
	}

	@Override
	public void createTable(Object obj) {
		String statement="com.project.member.createTable";
		sqlSession.update(statement,obj);		
	}

	@Override
	public void createTableMusicList(Object obj) {
		String statement="com.project.member.createTableMusicList";
		sqlSession.update(statement,obj);
	}

	@Override
	public void createTablePlay(Object obj) {
		String statement="com.project.member.createTablePlay";
		sqlSession.update(statement,obj);		
	}

	@Override
	public void createPlayListSequence(Object obj) {
		String statement="com.project.member.createPlayListSequence";
		sqlSession.update(statement,obj);
	}

	@Override
	public void createPlaySequence(Object obj) {
		String statement="com.project.member.createPlaySequence";
		sqlSession.update(statement,obj);
	}

	@Override
	public void insertPlayList(Object obj) {
		String statement="com.project.member.insertPlayList";
		sqlSession.update(statement,obj);
		
	}

	@Override
	public String getMemberLogin(String email) {
		String statement="com.project.member.getMemberLogin";
		String loginStatement=sqlSession.selectOne(statement,email);
		return loginStatement;
	}

	@Override
	public void updateMemberLogin(Object obj) {
		String statement="com.project.member.updateMemberLogin";
		sqlSession.update(statement,obj);
	}

}
