package com.project.user.find.service;

import com.project.user.find.model.FindDAO;
import com.project.user.member.model.MemberDAO;

public class FindServiceImpl implements FindService {
	private FindDAO findDao;

	public void setFindDao(FindDAO findDao) {
		this.findDao = findDao;
	}

	@Override
	public String findEmail(Object find_e) {
		String email=findDao.findEmail(find_e);
		return email;
	}

	@Override
	public String findPassword(Object find_p) {
		String pass=findDao.findPassword(find_p);
		return pass;
	}
	
}
