package com.project.busking.model;

import java.util.List;

import com.project.popular.model.PopularVO;
import com.project.user.myPage.model.MusicVO;

public interface BuskingDAO {
	public List<PopularVO> getNewestBusking(Object obj);
	
	public List<PopularVO> getPopularBusking(Object obj);
	
	public List<PopularVO> getMainBusking(Object obj);
	
	void addMusic(MusicVO vo);
	
	void insertBusking(BuskingVO vo);
	
	public List<BuskingVO> getBuskingNew(BuskingVO vo);
	public List<BuskingVO> getBuskingPopular(BuskingVO vo);
}
