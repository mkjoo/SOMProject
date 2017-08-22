package com.project.admin.board_M.service;

import java.util.List;

import com.project.admin.board_M.model.CommentVO;
import com.project.admin.board_M.model.FreeBoardVO;

public interface AdminFreeBoardService {
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
