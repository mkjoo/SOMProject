package com.project.user.board.service;

import com.project.user.board.model.QnaDAO;
import com.project.user.board.model.QnaVO;

public class QnaUpdateServiceImpl implements QnaUpdateService{
	private QnaDAO dao;
	public void setDao(QnaDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public QnaVO getArticle(Integer num) {
		QnaVO vo=dao.getArticle(num);
		return vo;
	}

	@Override
	public String getPass(Integer num) {
		String pass=dao.getPass(num);
		return pass;
	}

	@Override
	public void updateArticle(QnaVO vo) {
		dao.updateArticle(vo);
	}
}
