package com.project.popular.service;

import java.util.List;

import com.project.popular.model.PopularVO;

public interface PopularService {
	public List<PopularVO> getNewestPopMusic(PopularVO vo);
}
