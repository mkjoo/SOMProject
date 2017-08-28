package com.project.user.myPage.model;

import java.util.Date;

public class PaymentVO {
	private String email;
	private int usepoint;
	private String usecontent;
	private Date usedate;
	private int chargepoint;
	
	
	public int getChargepoint() {
		return chargepoint;
	}
	public void setChargepoint(int chargepoint) {
		this.chargepoint = chargepoint;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getUsepoint() {
		return usepoint;
	}
	public void setUsepoint(int usepoint) {
		this.usepoint = usepoint;
	}
	public String getUsecontent() {
		return usecontent;
	}
	public void setUsecontent(String usecontent) {
		this.usecontent = usecontent;
	}
	public Date getUsedate() {
		return usedate;
	}
	public void setUsedate(Date usedate) {
		this.usedate = usedate;
	}
	
	
}
