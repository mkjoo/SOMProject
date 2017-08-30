package com.project.busking.service;

import java.util.List;

import com.project.busking.model.BuskingDAO;
import com.project.busking.model.BuskingVO;
import com.project.popular.model.PopularVO;
import com.project.user.myPage.model.MusicVO;

public class BuskingServiceImpl implements BuskingService{
	private BuskingDAO dao;
	
	public void setDao(BuskingDAO dao){
		this.dao = dao;
	}

	@Override
	public List<PopularVO> getNewestBusking(Object obj) {
		List<PopularVO> list=dao.getNewestBusking(obj);
		return list;
	}

	@Override
	public List<PopularVO> getPopularBusking(Object obj) {
		List<PopularVO> list=dao.getPopularBusking(obj);
		return list;
	}

	@Override
	public List<PopularVO> getMainBusking(Object obj) {
		return dao.getMainBusking(obj);
	}

	@Override
	public void addMusic(MusicVO vo) {
		dao.addMusic(vo);
	}

	@Override
	public void insertBusking(BuskingVO vo) {
		dao.insertBusking(vo);
	}
	@Override
	public List<BuskingVO> getBuskingNew(BuskingVO vo) {
		List<BuskingVO> list=dao.getBuskingNew(vo);
		return list;
	}

	@Override
	public List<BuskingVO> getBuskingPopular(BuskingVO vo) {
		List<BuskingVO> list=dao.getBuskingPopular(vo);
		return list;
	}
	
}
