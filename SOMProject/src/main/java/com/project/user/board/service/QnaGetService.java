package com.project.user.board.service;

import com.project.user.board.model.QnaVO;

public interface QnaGetService {
	QnaVO getArticle(Integer num);
	public String getPass(Integer num);
	String getQnaComment(Integer num);
	void insertQnaComment(Object obj);
	
}
