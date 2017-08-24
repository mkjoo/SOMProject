package com.project.popular.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class PopularDAOImpl implements PopularDAO{
	SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<PopularVO> getNewestPopMusic(PopularVO vo) {
		String statement="com.project.popular.getNewestPopMusic";		
		List<PopularVO> list=sqlSession.selectList(statement,vo);
		return list;
	}

	@Override
	public List<PopularVO> getPopularPopMusic(PopularVO vo) {
		String statement="com.project.popular.getPopularPopMusic";		
		List<PopularVO> list=sqlSession.selectList(statement,vo);
		return list;
	}

	@Override
	public List<PopularVO> getMainNewest(Object obj) {
		String statement="com.project.user.mainList.getMainNewest";
		return sqlSession.selectList(statement,obj);
	}

	@Override
	public List<PopularVO> getMainPopular(Object obj) {
		String statement="com.project.user.mainList.getMainPopular";
		return sqlSession.selectList(statement,obj);
	}
	
}
