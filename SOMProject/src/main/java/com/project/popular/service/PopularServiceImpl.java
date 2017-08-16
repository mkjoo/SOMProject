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

}
