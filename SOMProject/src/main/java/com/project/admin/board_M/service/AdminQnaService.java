package com.project.admin.board_M.service;

import java.util.List;

import com.project.user.board.model.QnaVO;
import com.project.user.board.model.QnaVO2;

public interface AdminQnaService {
	int getListCount();
	List<QnaVO> getList(Object obj);
	void insertArticle(QnaVO boardVo);
	QnaVO getArticle(Integer num);
	void updateArticle(QnaVO boardVo);
	String getPass(Integer num);
	void deleteArticle(Integer num);
	int getMaxRef();
	void updateStep(QnaVO2 vo);
	String getQnaComment(Integer num);
	void insertQnaComment(Object obj);
	void updateCommentOX(Object obj);
}
