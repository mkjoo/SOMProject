package com.project.admin.board_M.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.project.user.board.model.QnaVO;
import com.project.user.board.model.QnaVO2;

public class AdminQnaDAOImpl implements AdminQnaDAO{
	private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public int getListCount() {
		String statement="com.project.admin.qna.getAllCount";
		int a=sqlSession.selectOne(statement);
		return a;
	}

	@Override
	public List<QnaVO> getList(Object obj) {
		String statement="com.project.admin.qna.getList";
		List<QnaVO> list = sqlSession.selectList(statement,obj);
		return list;
	}

	@Override
	public void insertArticle(QnaVO boardVo) {
		String statement="com.project.admin.qna.insertArticle";
		sqlSession.insert(statement,boardVo);
	}

	@Override
	public QnaVO getArticle(Integer num) {
		String statement="com.project.admin.qna.getArticle";
		QnaVO vo = sqlSession.selectOne(statement,num);
		return vo;
	}

	@Override
	public void updateArticle(QnaVO boardVo) {
		String statement="com.project.admin.qna.updateArticle";
		sqlSession.update(statement,boardVo);
	}

	@Override
	public String getPass(Integer num) {
		String statement="com.project.admin.qna.getPass";
		String a=sqlSession.selectOne(statement,num);
		return a;
	}

	@Override
	public void deleteArticle(Integer num) {
		String statement="com.project.admin.qna.deleteArticle";
		sqlSession.delete(statement,num);
	}

	@Override
	public int getMaxRef() {
		String statement="com.project.admin.qna.getMaxRef";
		int a=0;
		try{a=sqlSession.selectOne(statement);
		}catch(Exception e){a=0;}
		return a;
	}

	@Override
	public void updateStep(QnaVO2 vo) {
		String statement="com.project.admin.qna.updateStep";
		sqlSession.update(statement,vo);
	}
	@Override
	public String getQnaComment(Integer num) {
		String statement="com.project.admin.qna.getQnaComment";
		String content=sqlSession.selectOne(statement,num);
		return content;
	}
	@Override
	public void insertQnaComment(Object obj) {
		String statement="com.project.admin.qna.insertQnaComment";
		sqlSession.insert(statement,obj);
	}
	@Override
	public void updateCommentOX(Object obj) {
		String statement="com.project.admin.qna.updateCommentOX";
		sqlSession.update(statement,obj);
	}
}
