package com.project.busking.model;

import java.util.List;

import com.project.popular.model.PopularVO;
import com.project.user.myPage.model.MusicVO;

public interface BuskingDAO {
	public List<PopularVO> getNewestBusking(BuskingVO vo);
	
	public List<BuskingVO> getPopularBusking(BuskingVO vo);
	
	public List<PopularVO> getMainBusking(Object obj);
	
	void addMusic(MusicVO vo);
	
	void insertBusking(BuskingVO vo);
}
