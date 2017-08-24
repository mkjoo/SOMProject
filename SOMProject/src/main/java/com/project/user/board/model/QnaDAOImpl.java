package com.project.user.board.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class QnaDAOImpl implements QnaDAO{
	private SqlSessionTemplate sqlSession;
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public int getListCount() {
		String statement="com.project.user.board.qna.getAllCount";
		int a=sqlSession.selectOne(statement);
		return a;
	}

	@Override
	public List<QnaVO> getList(Object obj) {
		String statement="com.project.user.board.qna.getList";
		List<QnaVO> list = sqlSession.selectList(statement,obj);
		return list;
	}

	@Override
	public void insertArticle(QnaVO boardVo) {
		String statement="com.project.user.board.qna.insertArticle";
		sqlSession.insert(statement,boardVo);
	}

	@Override
	public QnaVO getArticle(Integer num) {
		String statement="com.project.user.board.qna.getArticle";
		QnaVO vo = sqlSession.selectOne(statement,num);
		return vo;
	}

	@Override
	public void updateArticle(QnaVO boardVo) {
		String statement="com.project.user.board.qna.updateArticle";
		sqlSession.update(statement,boardVo);
	}

	@Override
	public String getPass(Integer num) {
		String statement="com.project.user.board.qna.getPass";
		String a=sqlSession.selectOne(statement,num);
		return a;
	}

	@Override
	public void deleteArticle(Integer num) {
		String statement="com.project.user.board.qna.deleteArticle";
		sqlSession.delete(statement,num);
	}

	@Override
	public int getMaxRef() {
		String statement="com.project.user.board.qna.getMaxRef";
		int a=sqlSession.selectOne(statement);
		return a;
	}

	@Override
	public void updateStep(QnaVO2 vo) {
		String statement="com.project.user.board.qna.updateStep";
		sqlSession.update(statement,vo);
	}
	
	
	@Override
	public String getQnaComment(Integer num) {
		String statement="com.project.user.board.qna.getQnaComment";
		String content=sqlSession.selectOne(statement,num);
		return content;
	}
	@Override
	public void insertQnaComment(Object obj) {
		String statement="com.project.user.board.qna.insertQnaComment";
		sqlSession.insert(statement);
	}
}
