package com.project.user.find.model;

import org.mybatis.spring.SqlSessionTemplate;

public class FindDAOImpl implements FindDAO {
	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;

	}

	@Override
	public String findEmail(Object find_e) {
		String statement = "com.project.member.search_Email";
		String email = sqlSession.selectOne(statement, find_e);
		return email;
	}

	@Override
	public String findPassword(Object find_p) {
		String statement = "com.project.member.search_Password";
		String pass = sqlSession.selectOne(statement, find_p);
		return pass;
	}

}
