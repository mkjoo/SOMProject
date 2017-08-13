package com.project.user.board.service;

import com.project.user.board.model.NoticeDAO;

public class NoticeDeleteServiceImpl implements NoticeDeleteService{
	private NoticeDAO dao;
	
	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}

	@Override
	public void deleteArticle(Integer num) {
		dao.deleteArticle(num);
	}

}
