package com.kh.app.board.vo;

public class HeadVo {
	
	private String id;
	private int lv;
	private int cnt;
	public String getId() {
		return id;
	}
	public int getLv() {
		return lv;
	}
	public int getCnt() {
		return cnt;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setLv(int lv) {
		this.lv = lv;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "HeadVo [id=" + id + ", lv=" + lv + ", cnt=" + cnt + "]";
	}
	public HeadVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HeadVo(String id, int lv, int cnt) {
		super();
		this.id = id;
		this.lv = lv;
		this.cnt = cnt;
	}

}
