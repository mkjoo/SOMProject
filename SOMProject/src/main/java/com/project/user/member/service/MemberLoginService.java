package com.project.user.member.service;

import com.project.user.member.model.MemberVO;

public interface MemberLoginService {
	public MemberVO getMemberPass(String email);
	public String getMemberLogin(String email);
	public void updateMemberLogin(Object obj);
}
