package com.project.user.board.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.project.admin.board_M.model.CommentVO;
import com.project.admin.board_M.model.FreeBoardVO;

public class UserFreeBoardDAOImpl implements UserFreeBoardDAO{
private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int getListCount() {
		String statement="com.project.admin.freeboard.getAllCount";
		int count=sqlSession.selectOne(statement);
		return count;
	}

	@Override
	public List<FreeBoardVO> getList(Object obj) {
		String statement="com.project.admin.freeboard.getList";
		List<FreeBoardVO> list=sqlSession.selectList(statement,obj);
		return list;
	}

	@Override
	public void insertArticle(FreeBoardVO boardVo) {
		String statement="com.project.admin.freeboard.insertArticle";
		sqlSession.insert(statement,boardVo);
	}

	@Override
	public FreeBoardVO getArticle(Integer num) {
		String statement="com.project.admin.freeboard.getArticle";
		FreeBoardVO vo=sqlSession.selectOne(statement,num);
		return vo;
	}

	@Override
	public void updateArticle(FreeBoardVO boardVo) {
		String statement="com.project.admin.freeboard.updateArticle";
		sqlSession.update(statement,boardVo);
	}

	@Override
	public void deleteArticle(Integer num) {
		String statement="com.project.admin.freeboard.deleteArticle";
		sqlSession.delete(statement,num);
	}

	@Override
	public void upReadcount(Integer num) {
		String statement="com.project.admin.freeboard.upReadcount";
		sqlSession.update(statement, num);
	}

	@Override
	public List<CommentVO> getComment(Integer num) {
		String statement="com.project.admin.freeboard.getComment";
		List<CommentVO> list=sqlSession.selectList(statement,num);
		return list;
	}

	@Override
	public int getCommentCount(Integer num) {
		String statement="com.project.admin.freeboard.getCommentCount";
		int a=sqlSession.selectOne(statement,num);		
		return a;
	}

	@Override
	public void insertComment(CommentVO vo) {
		String statement="com.project.admin.freeboard.insertComment";
		sqlSession.insert(statement,vo);
	}

	@Override
	public void deleteComment(Integer num) {
		String statement="com.project.admin.freeboard.deleteComment";
		sqlSession.delete(statement,num);
	}

	@Override
	public CommentVO getMyComment(Integer cnum) {
		String statement="com.project.admin.freeboard.getMyComment";
		return sqlSession.selectOne(statement,cnum);
	}

	@Override
	public void updateComment(CommentVO vo) {
		System.out.println(vo.getCnum()+"/content="+vo.getContent());
		String statement="com.project.admin.freeboard.updateComment";
		sqlSession.update(statement,vo);
	}

}
