package com.project.user.board.service;

import java.util.List;

import com.project.user.board.model.QnaDAO;
import com.project.user.board.model.QnaVO;

public class QnaListServiceImpl implements QnaListService{

	private QnaDAO dao;
	public void setDao(QnaDAO dao) {
		this.dao = dao;
	}
	@Override
	public Integer getListCount() {
		int a=dao.getListCount();
		return a;
	}
	
	
	//Object 에 맵이들어간다.select * from (select rownum rnum,num,writer,email,subject,pass,regdate,content,ref,step,depth from (select * from qna order by ref desc,step asc)) where rnum>=#{startRow} and rnum<=#{endRow}
	//셀렉트문은 위와같고,#붙은애들은 map 의 key 에 해당하는 값들이다. map 에 startrow 등등을 넣어놨겠지..
	@Override
	public List<QnaVO> getBoardList(Object obj) {
		List<QnaVO> list=dao.getList(obj);
		return list;
	}
}
