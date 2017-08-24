package com.project.busking.model;

import java.util.List;

public interface BuskingDAO {
	public List<BuskingVO> getNewestBusking(BuskingVO vo);
	
	public List<BuskingVO> getPopularBusking(BuskingVO vo);
	
	public List<BuskingVO> getMainBusking(Object obj);
}
