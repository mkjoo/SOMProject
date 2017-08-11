package com.project.user.board.service;

import com.project.user.board.model.QnaDAO;

public class QnaDeleteServiceImpl implements QnaDeleteService{
	private QnaDAO dao;
	public void setDao(QnaDAO dao) {
		this.dao = dao;
	}
	@Override
	public String getPass(Integer num) {
		return dao.getPass(num);
	}

	@Override
	public void deleteArticle(Integer num) {
		dao.deleteArticle(num);
	}

}
