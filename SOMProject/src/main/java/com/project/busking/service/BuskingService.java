package com.project.busking.service;

import java.util.List;

import com.project.busking.model.BuskingVO;

public interface BuskingService {
	public List<BuskingVO> getNewestBusking(BuskingVO vo);
	
	public List<BuskingVO> getPopularBusking(BuskingVO vo);
}
