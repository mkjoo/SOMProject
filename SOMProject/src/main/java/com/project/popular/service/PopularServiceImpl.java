package com.project.popular.service;

import java.util.List;

import com.project.popular.model.PopularDAO;
import com.project.popular.model.PopularVO;

public class PopularServiceImpl implements PopularService{
	private PopularDAO dao;	
	
	public void setDao(PopularDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<PopularVO> getNewestPopMusic(PopularVO vo) {
		List<PopularVO> list=dao.getNewestPopMusic(vo);
		return list;
	}

	@Override
	public List<PopularVO> getPopularPopMusic(PopularVO vo) {
		List<PopularVO> list=dao.getPopularPopMusic(vo);
		return list;
	}

	@Override
	public List<PopularVO> getMainNewest(Object obj) {
		return dao.getMainNewest(obj);
	}

	@Override
	public List<PopularVO> getMainPopular(Object obj) {
		return dao.getMainPopular(obj);
	}

}
