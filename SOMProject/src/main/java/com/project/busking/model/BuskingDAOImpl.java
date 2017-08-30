package com.project.busking.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.project.popular.model.PopularVO;
import com.project.user.myPage.model.MusicVO;

public class BuskingDAOImpl implements BuskingDAO{
	SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession){
		this.sqlSession = sqlSession;
	}
	@Override
	public List<PopularVO> getNewestBusking(Object obj){
		String statement="com.project.busking.getNewestBusking";
		List<PopularVO> list=sqlSession.selectList(statement,obj);
		return list;
	}
	@Override
	public List<PopularVO> getPopularBusking(Object obj) {
		String statement="com.project.busking.getPopularBusking";
		List<PopularVO> list=sqlSession.selectList(statement, obj);
		return list;
	}
	@Override
	public List<PopularVO> getMainBusking(Object obj) {
		String statement="com.project.user.mainList.getMainBusking";
		return sqlSession.selectList(statement,obj);
	}
	
	@Override
	public void addMusic(MusicVO vo) {
		String statement="com.project.admin.addMusic";
		sqlSession.insert(statement,vo);
	}
	@Override
	public void insertBusking(BuskingVO vo) {
		String statement="com.project.busking.insertBusking";
		sqlSession.insert(statement,vo);
	}
	@Override
	public List<BuskingVO> getBuskingNew(BuskingVO vo) {
		String statement="com.project.busking.getBuskingNew";
		List<BuskingVO> list=sqlSession.selectList(statement, vo);
		return list;
	}
	@Override
	public List<BuskingVO> getBuskingPopular(BuskingVO vo) {
		String statement="com.project.busking.getBuskingPopular";
		List<BuskingVO> list=sqlSession.selectList(statement, vo);
		return list;
	}
}
