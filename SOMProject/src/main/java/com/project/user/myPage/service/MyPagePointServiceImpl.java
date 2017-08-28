package com.project.user.myPage.service;

import java.util.List;

import com.project.user.myPage.model.MyPageDAO;
import com.project.user.myPage.model.PaymentVO;
import com.project.user.myPage.model.PointVO;

public class MyPagePointServiceImpl implements MyPagePointService{
	private MyPageDAO dao;
	
	public void setDao(MyPageDAO dao) {
		this.dao = dao;
	}

	@Override
	public void chargeMoney(PointVO vo) {
		dao.chargeMoney(vo);
	}

	@Override
	public void updateMoney(PointVO vo) {
		dao.updateMoney(vo);
	}
	
	@Override
	public Integer getMoney(String email) {
		Integer startMoney=dao.getMoney(email);
		return startMoney;
	}

	@Override
	public void buyMusic(PointVO vo) {
		dao.buyMusic(vo);
	}

	@Override
	public void insertMyPayment(Object obj) {
		dao.insertMyPayment(obj);
	}

	@Override
	public List<PaymentVO> getMyPayment(String str) {
		return dao.getMyPayment(str);
		
	}


}
