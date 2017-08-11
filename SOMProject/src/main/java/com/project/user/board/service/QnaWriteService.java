package com.project.user.board.service;

import com.project.user.board.model.QnaVO;
import com.project.user.board.model.QnaVO2;

public interface QnaWriteService {
	void insertWriting(QnaVO boardVo);
	public int getMaxRef();
	void updateStep(QnaVO2 vo);
}
