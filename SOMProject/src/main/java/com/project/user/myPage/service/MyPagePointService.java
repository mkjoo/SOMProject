package com.project.user.myPage.service;

import com.project.user.myPage.model.PointVO;

public interface MyPagePointService {
	public void chargeMoney(PointVO vo);
	public void updateMoney(PointVO vo);
	public Integer getMoney(String email);
	public void buyMusic(PointVO vo);
}
