package com.project.admin.board_M.service;

import java.util.List;

import com.project.admin.board_M.model.AdminQnaDAO;
import com.project.user.board.model.QnaVO;
import com.project.user.board.model.QnaVO2;

public class AdminQnaServiceImpl implements AdminQnaService{
	private AdminQnaDAO dao;

	public void setDao(AdminQnaDAO dao) {
		this.dao = dao;
	}

	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<QnaVO> getList(Object obj) {
		List<QnaVO> list=dao.getList(obj);
		return list;
	}

	@Override
	public void insertArticle(QnaVO boardVo) {
		dao.insertArticle(boardVo);
	}

	@Override
	public QnaVO getArticle(Integer num) {
		QnaVO vo=dao.getArticle(num);
		return vo;
	}

	@Override
	public void updateArticle(QnaVO boardVo) {
		dao.updateArticle(boardVo);
	}

	@Override
	public String getPass(Integer num) {
		String pass=dao.getPass(num);
		return pass;
	}

	@Override
	public void deleteArticle(Integer num) {
		dao.deleteArticle(num);
	}

	@Override
	public int getMaxRef() {
		return dao.getMaxRef();
	}

	@Override
	public void updateStep(QnaVO2 vo) {
		dao.updateStep(vo);
	}

	@Override
	public String getQnaComment(Integer num) {
		return dao.getQnaComment(num);
	}

	@Override
	public void insertQnaComment(Object obj) {
		dao.insertQnaComment(obj);		
	}
	
}
