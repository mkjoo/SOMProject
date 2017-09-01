package com.project.user.myPage.model;

import java.util.Date;

public class MusicVO2 {
	private int m_num;
	private String m_name;
	private String m_artist;
	private String m_album;
	private String m_genre;
	private Date m_create_date; 
	private String m_path;
	private int m_count_play;
	private int m_download;
	private String m_lyrics;
	private String m_musicvideo;
	private String src;
	private int turn;
	
	public int getTurn() {
		return turn;
	}
	public void setTurn(int turn) {
		this.turn = turn;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
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
	public int getM_count_play() {
		return m_count_play;
	}
	public void setM_count_play(int m_count_play) {
		this.m_count_play = m_count_play;
	}
	public int getM_download() {
		return m_download;
	}
	public void setM_download(int m_download) {
		this.m_download = m_download;
	}
	public String getM_lyrics() {
		return m_lyrics;
	}
	public void setM_lyrics(String m_lyrics) {
		this.m_lyrics = m_lyrics;
	}
	public String getM_musicvideo() {
		return m_musicvideo;
	}
	public void setM_musicvideo(String m_musicvideo) {
		this.m_musicvideo = m_musicvideo;
	}
}
