package com.project.user.board.service;

import com.project.user.board.model.NoticeVO;

public interface NoticeUpdateService {
	NoticeVO getArticle(Integer num);
	void updateArticle(NoticeVO boardVo);
}
