package com.project.user.board.model;

import java.util.List;

public interface NoticeDAO {
	int getListCount();
	List<NoticeVO> getList(Object obj);
	void insertArticle(NoticeVO boardVo);
	NoticeVO getArticle(Integer num);
	void updateArticle(NoticeVO boardVo);
	void deleteArticle(Integer num);

}
