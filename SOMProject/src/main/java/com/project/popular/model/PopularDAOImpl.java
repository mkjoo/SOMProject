package com.project.popular.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class PopularDAOImpl implements PopularDAO{
	SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<PopularVO> getMusic() {
		String statement="com.project.popular.getMusic";		
		List<PopularVO> list=sqlSession.selectList(statement);
		return list;
	}
	
}
