package com.project.admin.board_M.model;

import java.util.List;

import com.project.user.board.model.NoticeVO;

public interface AdminNoticeDAO {
	int getListCount();
	List<NoticeVO> getList(Object obj);
	void insertArticle(NoticeVO boardVo);
	NoticeVO getArticle(Integer num);
	void updateArticle(NoticeVO boardVo);
	void deleteArticle(Integer num);
	void upReadcount(Integer num);
}
