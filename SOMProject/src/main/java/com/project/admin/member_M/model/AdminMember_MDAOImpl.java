package com.project.admin.member_M.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.project.user.member.model.MemberVO;
import com.project.user.myPage.model.MusicVO;

public class AdminMember_MDAOImpl implements AdminMember_MDAO{
	SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void addMusic(MusicVO vo) {
		String statement="com.project.admin.addMusic";
		sqlSession.insert(statement,vo);
	}

	@Override
	public List<MemberVO> getAllMember() {
		String statement="com.project.admin.getAllMember";
		List<MemberVO> list=sqlSession.selectList(statement);
		return list;
	}

	@Override
	public int getCountMember() {
		String statement="com.project.admin.getCountMember";
		int a=sqlSession.selectOne(statement);
		return a;
	}

	@Override
	public int getCountNotice() {
		String statement="com.project.admin.getCountNotice";
		int a=sqlSession.selectOne(statement);
		return a;
	}

	@Override
	public int getCountQna() {
		String statement="com.project.admin.getCountQna";
		int a=sqlSession.selectOne(statement);
		return a;
	}

	@Override
	public int getCountMusic() {
		String statement="com.project.admin.getCountMusic";
		int a=sqlSession.selectOne(statement);
		return a;
	}

	@Override
	public int getCountFreeBoard() {
		String statement="com.project.admin.getCountFreeBoard";
		int a=sqlSession.selectOne(statement);
		return a;
	}

	@Override
	public int deleteMember(String email) {
		String statement="com.project.admin.deleteMember";
		sqlSession.selectOne(statement,email);
		return 0;
	}

}
