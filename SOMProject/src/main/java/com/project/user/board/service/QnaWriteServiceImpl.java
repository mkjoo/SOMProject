package com.project.user.board.service;

import com.project.user.board.model.QnaDAO;
import com.project.user.board.model.QnaVO;
import com.project.user.board.model.QnaVO2;

public class QnaWriteServiceImpl implements QnaWriteService{
	private QnaDAO dao;
	public void setDao(QnaDAO dao) {
		this.dao = dao;
	}
	@Override
	public void insertWriting(QnaVO vo) {
		dao.insertArticle(vo);
	}

	@Override
	public int getMaxRef() {
		int maxRef=dao.getMaxRef();
		return maxRef;
	}

	@Override
	public void updateStep(QnaVO2 vo) {
		dao.updateStep(vo);
	}
	@Override
	public String getQnaComment(Integer num) {
		return dao.getQnaComment(num);
	}

	@Override
	public void insertQnaComment(Object obj) {
		dao.insertQnaComment(obj);
	}
}
