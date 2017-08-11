package com.project.user.board.service;

import com.project.user.board.model.NoticeDAO;
import com.project.user.board.model.NoticeVO;

public class NoticeGetServiceImpl implements NoticeGetService{
	private NoticeDAO dao;
	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public NoticeVO getArticle(Integer num) {
		NoticeVO vo=dao.getArticle(num);
		return vo;
	}

}
