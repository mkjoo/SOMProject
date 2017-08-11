package com.project.user.board.service;

import java.util.List;
import com.project.user.board.model.NoticeVO;

public interface NoticeListService {

	Integer getListCount();
	List<NoticeVO> getBoardList(Object obj);
}
