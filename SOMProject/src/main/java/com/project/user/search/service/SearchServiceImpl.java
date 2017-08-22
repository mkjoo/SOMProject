package com.project.user.search.service;

import java.util.List;

import com.project.popular.model.PopularVO;
import com.project.user.search.model.SearchDAO;

public class SearchServiceImpl implements SearchService{
	private SearchDAO dao;

	public void setDao(SearchDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<PopularVO> searchMname(String search_text) {
		List<PopularVO> list=dao.searchMname(search_text);
		return list;
	}

	@Override
	public List<PopularVO> searchMartist(String search_text) {
		List<PopularVO> list=dao.searchMartist(search_text);
		return list;
	}

	@Override
	public List<PopularVO> searchMalbum(String search_text) {
		List<PopularVO> list=dao.searchMalbum(search_text);
		return list;
	}

	@Override
	public List<PopularVO> searchMgenre(String search_text) {
		List<PopularVO> list=dao.searchMgenre(search_text);
		return list;
	}
	
}
