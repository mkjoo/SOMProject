package com.project.user.board.service;

import com.project.user.board.model.QnaDAO;
import com.project.user.board.model.QnaVO;

public class QnaGetServiceImpl implements QnaGetService{
	private QnaDAO dao;
	public void setDao(QnaDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public QnaVO getArticle(Integer num) {
		QnaVO vo = dao.getArticle(num);
		return vo;
	}

	@Override
	public String getPass(Integer num) {
		return dao.getPass(num);
	}

}
