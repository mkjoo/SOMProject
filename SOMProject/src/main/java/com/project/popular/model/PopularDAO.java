package com.project.popular.model;

import java.util.List;

public interface PopularDAO {
	public List<PopularVO> getNewestPopMusic(PopularVO vo);
	public List<PopularVO> getPopularPopMusic(PopularVO vo);
	
	public List<PopularVO> getMainNewest(Object obj);
	public List<PopularVO> getMainPopular(Object obj);
}
