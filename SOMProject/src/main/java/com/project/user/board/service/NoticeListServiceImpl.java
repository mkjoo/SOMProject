package com.project.user.board.service;

import java.util.List;

import com.project.user.board.model.NoticeDAO;
import com.project.user.board.model.NoticeVO;

public class NoticeListServiceImpl implements NoticeListService{
	private NoticeDAO dao;
	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public Integer getListCount() {
		int count=dao.getListCount();
		return count;
	}

	@Override
	public List<NoticeVO> getBoardList(Object obj) {
		List<NoticeVO> list=dao.getList(obj);
		return list;
	}

}
