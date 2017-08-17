package com.project.admin.member_M.model;

import org.mybatis.spring.SqlSessionTemplate;

public class AdminMember_MDAOImpl implements AdminMember_MDAO{
	SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

}
