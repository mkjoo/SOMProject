package com.project.user.myPage.model;

import java.util.Date;

public class PlayListVO {
	
	private String email; 
	private String m_name; 
	private String m_artist;
	private String m_album; 
	private String m_genre; 
	private Date m_create_date; 
	private String m_path;
	private String m_lyrics;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_artist() {
		return m_artist;
	}
	public void setM_artist(String m_artist) {
		this.m_artist = m_artist;
	}
	public String getM_album() {
		return m_album;
	}
	public void setM_album(String m_album) {
		this.m_album = m_album;
	}
	public String getM_genre() {
		return m_genre;
	}
	public void setM_genre(String m_genre) {
		this.m_genre = m_genre;
	}
	public Date getM_create_date() {
		return m_create_date;
	}
	public void setM_create_date(Date m_create_date) {
		this.m_create_date = m_create_date;
	}
	public String getM_path() {
		return m_path;
	}
	public void setM_path(String m_path) {
		this.m_path = m_path;
	}
	public String getM_lyrics() {
		return m_lyrics;
	}
	public void setM_lyrics(String m_lyrics) {
		this.m_lyrics = m_lyrics;
	}
	
	
}
