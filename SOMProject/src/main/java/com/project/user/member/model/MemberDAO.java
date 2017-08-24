package com.project.user.member.model;

import java.util.List;

public interface MemberDAO {
	//회원 정보 하나를 얻어올 메서드
	public MemberVO getMember(String id);
	
	//회원 전체 목록을 얻어올 메서드
	public List<MemberVO> getMemberList();
	
	//회원을 등록해 줄 메서드
	public void insertMember(MemberVO vo);
	
	//회원 정보를 수정해 줄 메서드
	public void updateMember(MemberVO vo);
	
	//회원 정보를 삭제해 줄 메서드
	public void deleteMember(String id, String pass);
	
	//회원의 비밀번호를 얻어와 주는 메서드
	public MemberVO getMemberPass(String email);
	
	public void createTable(Object obj);
	
	public void createTableMusicList(Object obj);
	
	public void createTablePlay(Object obj);
	
	public void createPlayListSequence(Object obj);
	
	public void createPlaySequence(Object obj);
	
	public void insertPlayList(Object obj);
	
	public String getMemberLogin(String email);
	
	public void updateMemberLogin(Object obj);
	//필요하다고 생각되는 것을 쭉 기재...
}
