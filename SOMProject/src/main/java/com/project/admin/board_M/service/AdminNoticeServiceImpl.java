package com.project.admin.board_M.service;

import java.util.List;

import com.project.admin.board_M.model.AdminNoticeDAO;
import com.project.user.board.model.NoticeVO;

public class AdminNoticeServiceImpl implements AdminNoticeService{
	private AdminNoticeDAO dao;

	public void setDao(AdminNoticeDAO dao) {
		this.dao = dao;
	}

	@Override
	public int getListCount() {
		int a=dao.getListCount();
		return a;
	}

	@Override
	public List<NoticeVO> getList(Object obj) {
		List<NoticeVO> list=dao.getList(obj);
		return list;
	}

	@Override
	public void insertArticle(NoticeVO boardVo) {
		dao.insertArticle(boardVo);
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

	@Override
	public void deleteArticle(Integer num) {
		dao.deleteArticle(num);
	}

	@Override
	public void upReadcount(Integer num) {
		dao.upReadcount(num);
	}
	
}
