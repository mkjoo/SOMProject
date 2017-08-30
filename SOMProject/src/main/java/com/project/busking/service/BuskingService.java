package com.project.busking.service;

import java.util.List;

import com.project.busking.model.BuskingVO;
import com.project.popular.model.PopularVO;
import com.project.user.myPage.model.MusicVO;

public interface BuskingService {
	public List<PopularVO> getNewestBusking(Object obj);
	
	public List<PopularVO> getPopularBusking(Object obj);
	
	public List<PopularVO> getMainBusking(Object obj);
	
	void addMusic(MusicVO vo);
	
	void insertBusking(BuskingVO vo);
	public List<BuskingVO> getBuskingNew(BuskingVO vo);
	public List<BuskingVO> getBuskingPopular(BuskingVO vo);
}
