package com.project.user.board.service;

import java.util.List;

import com.project.user.board.model.QnaVO;

public interface QnaListService {
	Integer getListCount();
	List<QnaVO> getBoardList(Object obj);
}
