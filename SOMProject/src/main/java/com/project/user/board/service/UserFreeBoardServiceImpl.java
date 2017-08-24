package com.project.user.board.service;

import java.util.List;

import com.project.admin.board_M.model.CommentVO;
import com.project.admin.board_M.model.FreeBoardVO;
import com.project.user.board.model.UserFreeBoardDAO;

public class UserFreeBoardServiceImpl implements UserFreeBoardService{
	private UserFreeBoardDAO dao;
	
	public void setDao(UserFreeBoardDAO dao) {
		this.dao = dao;
	}

	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<FreeBoardVO> getList(Object obj) {
		return dao.getList(obj);
	}

	@Override
	public void insertArticle(FreeBoardVO boardVo) {
		dao.insertArticle(boardVo);
	}

	@Override
	public FreeBoardVO getArticle(Integer num) {
		return dao.getArticle(num);
	}

	@Override
	public void updateArticle(FreeBoardVO boardVo) {
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

	@Override
	public List<CommentVO> getComment(Integer num) {
		List<CommentVO> list=dao.getComment(num);
		return list;
	}

	@Override
	public int getCommentCount(Integer num) {
		int a=dao.getCommentCount(num);
		return a;
	}

	@Override
	public void insertComment(CommentVO vo) {
		dao.insertComment(vo);
	}

	@Override
	public void deleteComment(Integer num) {
		dao.deleteComment(num);		
	}

	@Override
	public CommentVO getMyComment(Integer cnum) {
		return dao.getMyComment(cnum);
	}

	@Override
	public void updateComment(CommentVO vo) {
		System.out.println(vo.getCnum()+"/content="+vo.getContent());
		dao.updateComment(vo);
	}
	
}
