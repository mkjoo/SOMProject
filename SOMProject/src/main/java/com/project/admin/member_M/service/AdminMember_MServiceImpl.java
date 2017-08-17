package com.project.admin.member_M.service;

import com.project.admin.member_M.model.AdminMember_MDAO;

public class AdminMember_MServiceImpl implements AdminMember_MService{
	private AdminMember_MDAO dao;

	public AdminMember_MDAO getDao() {
		return dao;
	}

	public void setDao(AdminMember_MDAO dao) {
		this.dao = dao;
	}
	
	
}
