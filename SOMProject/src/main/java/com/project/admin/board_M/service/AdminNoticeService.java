package com.project.admin.board_M.service;

import java.util.List;

import com.project.user.board.model.NoticeVO;

public interface AdminNoticeService {
	int getListCount();
	List<NoticeVO> getList(Object obj);
	void insertArticle(NoticeVO boardVo);
	NoticeVO getArticle(Integer num);
	void updateArticle(NoticeVO boardVo);
	void deleteArticle(Integer num);
}
