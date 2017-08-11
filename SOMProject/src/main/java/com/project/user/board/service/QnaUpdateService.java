package com.project.user.board.service;

import com.project.user.board.model.QnaVO;

public interface QnaUpdateService {
	QnaVO getArticle(Integer num);
	String getPass(Integer num);
	void updateArticle(QnaVO boardVo);
}
