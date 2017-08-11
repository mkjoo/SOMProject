package com.project.user.board.service;

import com.project.user.board.model.NoticeDAO;
import com.project.user.board.model.NoticeVO;

public class NoticeWriteServiceImpl implements NoticeWriteService{
	private NoticeDAO dao;
	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public void insertWriting(NoticeVO boardVo) {
		dao.insertArticle(boardVo);
	}

}
