package com.project.busking.model;

import java.util.List;

import com.project.user.myPage.model.MusicVO;

public interface BuskingDAO {
	public List<BuskingVO> getNewestBusking(BuskingVO vo);
	
	public List<BuskingVO> getPopularBusking(BuskingVO vo);
	
	public List<BuskingVO> getMainBusking(Object obj);
	
	void addMusic(MusicVO vo);
	
	void insertBusking(BuskingVO vo);
}
