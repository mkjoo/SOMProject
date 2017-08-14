package com.project.user.myPage.service;

import com.project.user.member.model.MemberVO;

public interface MyPageUpdateService {
	public MemberVO getMemberPass(String email);
	public void updateMember(MemberVO vo);
}
