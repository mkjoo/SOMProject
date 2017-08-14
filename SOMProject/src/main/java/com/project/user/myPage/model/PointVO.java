package com.project.user.myPage.model;

import java.util.Date;

public class PointVO {
	private String email;
	private int m_point;
	private String usetype;
	private String usecontent;
	private int usepoint; 
	private Date usedate;
	private int startMoney;
	
	public int getStartMoney() {
		return startMoney;
	}
	public void setStartMoney(int startMoney) {
		this.startMoney = startMoney;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getM_point() {
		return m_point;
	}
	public void setM_point(int m_point) {
		this.m_point = m_point;
	}
	public String getUsetype() {
		return usetype;
	}
	public void setUsetype(String usetype) {
		this.usetype = usetype;
	}
	public String getUsecontent() {
		return usecontent;
	}
	public void setUsecontent(String usecontent) {
		this.usecontent = usecontent;
	}
	public int getUsepoint() {
		return usepoint;
	}
	public void setUsepoint(int usepoint) {
		this.usepoint = usepoint;
	}
	public Date getUsedate() {
		return usedate;
	}
	public void setUsedate(Date usedate) {
		this.usedate = usedate;
	}
}
