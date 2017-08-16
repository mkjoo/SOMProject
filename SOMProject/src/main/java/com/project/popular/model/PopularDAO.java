package com.project.popular.model;

import java.util.List;

public interface PopularDAO {
	public List<PopularVO> getNewestPopMusic(PopularVO vo);
}
