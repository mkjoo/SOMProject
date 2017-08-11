package com.project.user.board.model;
import java.util.List;


public interface QnaDAO {
	int getListCount();
	List<QnaVO> getList(Object obj);
	void insertArticle(QnaVO boardVo);
	QnaVO getArticle(Integer num);
	void updateArticle(QnaVO boardVo);
	String getPass(Integer num);
	void deleteArticle(Integer num);
	int getMaxRef();
	void updateStep(QnaVO2 vo);
}
