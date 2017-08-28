package com.project.user.myPage.service;

import java.util.List;

import com.project.user.myPage.model.PaymentVO;
import com.project.user.myPage.model.PointVO;

public interface MyPagePointService {
	public void chargeMoney(PointVO vo);
	public void updateMoney(PointVO vo);
	public Integer getMoney(String email);
	public void buyMusic(PointVO vo);
	public void insertMyPayment(Object obj);
	public List<PaymentVO> getMyPayment(String str);
}
