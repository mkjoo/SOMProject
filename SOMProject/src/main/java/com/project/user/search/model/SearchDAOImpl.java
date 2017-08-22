package com.project.user.search.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.project.popular.model.PopularVO;

public class SearchDAOImpl implements SearchDAO{
private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<PopularVO> searchMname(String search_text) {
		String statement="com.project.search.searchMname";
		List<PopularVO> list=sqlSession.selectList(statement,search_text);
		return list;
	}

	@Override
	public List<PopularVO> searchMartist(String search_text) {
		String statement="com.project.search.searchMartist";
		List<PopularVO> list=sqlSession.selectList(statement,search_text);
		return list;
	}

	@Override
	public List<PopularVO> searchMalbum(String search_text) {
		String statement="com.project.search.searchMalbum";
		List<PopularVO> list=sqlSession.selectList(statement,search_text);
		return list;	
	}

	@Override
	public List<PopularVO> searchMgenre(String search_text) {
		String statement="com.project.search.searchMgenre";
		List<PopularVO> list=sqlSession.selectList(statement,search_text);
		return list;	
	}
}
