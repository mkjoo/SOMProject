package com.project.busking.service;

import java.util.List;

import com.project.busking.model.BuskingDAO;
import com.project.busking.model.BuskingVO;
import com.project.user.myPage.model.MusicVO;

public class BuskingServiceImpl implements BuskingService{
	private BuskingDAO dao;
	
	public void setDao(BuskingDAO dao){
		this.dao = dao;
	}

	@Override
	public List<BuskingVO> getNewestBusking(BuskingVO vo) {
		List<BuskingVO> list=dao.getNewestBusking(vo);
		return list;
	}

	@Override
	public List<BuskingVO> getPopularBusking(BuskingVO vo) {
		List<BuskingVO> list=dao.getPopularBusking(vo);
		return list;
	}

	@Override
	public List<BuskingVO> getMainBusking(Object obj) {
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
	
	
}
