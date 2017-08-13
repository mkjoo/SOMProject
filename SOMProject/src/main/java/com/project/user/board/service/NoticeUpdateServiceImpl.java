package com.project.user.board.service;

import com.project.user.board.model.NoticeDAO;
import com.project.user.board.model.NoticeVO;
public class NoticeUpdateServiceImpl implements NoticeUpdateService{
	private NoticeDAO dao;
		
	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}

	@Override
	public NoticeVO getArticle(Integer num) {
		NoticeVO vo=dao.getArticle(num);
		return vo;
	}

	@Override
	public void updateArticle(NoticeVO boardVo) {
		dao.updateArticle(boardVo);
	}

}
