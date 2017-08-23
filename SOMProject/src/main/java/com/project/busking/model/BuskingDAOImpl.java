package com.project.busking.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class BuskingDAOImpl implements BuskingDAO{
	SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession){
		this.sqlSession = sqlSession;
	}
	@Override
	public List<BuskingVO> getNewestBusking(BuskingVO vo){
		String statement="com.project.busking.getNewestBusking";
		List<BuskingVO> list=sqlSession.selectList(statement, vo);
		return list;
	}
	@Override
	public List<BuskingVO> getPopularBusking(BuskingVO vo) {
		String statement="com.project.busking.getPopularBusking";
		List<BuskingVO> list=sqlSession.selectList(statement, vo);
		return list;
	}
}
