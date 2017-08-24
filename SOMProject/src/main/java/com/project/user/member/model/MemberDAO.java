package com.project.user.member.model;

import java.util.List;

public interface MemberDAO {
	//ȸ�� ���� �ϳ��� ���� �޼���
	public MemberVO getMember(String id);
	
	//ȸ�� ��ü ����� ���� �޼���
	public List<MemberVO> getMemberList();
	
	//ȸ���� ����� �� �޼���
	public void insertMember(MemberVO vo);
	
	//ȸ�� ������ ������ �� �޼���
	public void updateMember(MemberVO vo);
	
	//ȸ�� ������ ������ �� �޼���
	public void deleteMember(String id, String pass);
	
	//ȸ���� ��й�ȣ�� ���� �ִ� �޼���
	public MemberVO getMemberPass(String email);
	
	public void createTable(Object obj);
	
	public void createTableMusicList(Object obj);
	
	public void createTablePlay(Object obj);
	
	public void createPlayListSequence(Object obj);
	
	public void createPlaySequence(Object obj);
	
	public void insertPlayList(Object obj);
	
	public String getMemberLogin(String email);
	
	public void updateMemberLogin(Object obj);
	//�ʿ��ϴٰ� �����Ǵ� ���� �� ����...
}
