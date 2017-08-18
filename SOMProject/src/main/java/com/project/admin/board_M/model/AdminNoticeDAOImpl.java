package com.project.admin.board_M.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.project.user.board.model.NoticeVO;

public class AdminNoticeDAOImpl implements AdminNoticeDAO{
	private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int getListCount() {
		String statement="com.project.admin.board.getAllCount";
		int count=sqlSession.selectOne(statement);
		return count;
	}

	@Override
	public List<NoticeVO> getList(Object obj) {
		String statement="com.project.admin.board.getList";
		List<NoticeVO> list=sqlSession.selectList(statement,obj);
		return list;
	}

	@Override
	public void insertArticle(NoticeVO boardVo) {
		String statement="com.project.admin.board.insertArticle";
		sqlSession.insert(statement,boardVo);
	}

	@Override
	public NoticeVO getArticle(Integer num) {
		sqlSession.update("com.project.admin.board.upReadcount",num);
		String statement="com.project.admin.board.getArticle";
		NoticeVO vo=sqlSession.selectOne(statement,num);
		return vo;
	}

	@Override
	public void updateArticle(NoticeVO boardVo) {
		String statement="com.project.admin.board.updateArticle";
		sqlSession.update(statement,boardVo);
	}


	@Override
	public void deleteArticle(Integer num) {
		String statement="com.project.admin.board.deleteArticle";
		sqlSession.delete(statement,num);
	}


}
