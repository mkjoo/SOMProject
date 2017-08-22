package com.project.admin.board_M.model;

import java.util.List;

public interface AdminFreeBoardDAO {
	int getListCount();
	List<FreeBoardVO> getList(Object obj);
	void insertArticle(FreeBoardVO boardVo);
	FreeBoardVO getArticle(Integer num);
	void updateArticle(FreeBoardVO boardVo);
	void deleteArticle(Integer num);
	void upReadcount(Integer num);
	List<CommentVO> getComment(Integer num);
	int getCommentCount(Integer num);
	void insertComment(CommentVO vo);
	void deleteComment(Integer num);
	CommentVO getMyComment(Integer cnum);
	void updateComment(CommentVO vo);
}
