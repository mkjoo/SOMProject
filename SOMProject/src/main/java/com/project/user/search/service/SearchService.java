package com.project.user.search.service;

import java.util.List;

import com.project.popular.model.PopularVO;

public interface SearchService {
	List<PopularVO> searchMname(String search_text);
	List<PopularVO> searchMartist(String search_text);
	List<PopularVO> searchMalbum(String search_text);
	List<PopularVO> searchMgenre(String search_text);
}
