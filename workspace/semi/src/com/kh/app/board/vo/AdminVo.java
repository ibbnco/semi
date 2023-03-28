package com.kh.app.board.vo;

public class AdminVo {
	
	private String no;
	private String title;
	private String content;
	private String writer;
	private String date;
	private String isDeleted;
	private String hit;
	private String changeName;
	private String open;
	private String actor;
	private String summary;
	private String genre;
	private String rate;
	private String pr;
	private String run;
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(String isDeleted) {
		this.isDeleted = isDeleted;
	}
	
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	
	public String getOpen() {
		return open;
	}
	public void setOpen(String open) {
		this.open = open;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getPr() {
		return pr;
	}
	public void setPr(String pr) {
		this.pr = pr;
	}
	public String getRun() {
		return run;
	}
	public void setRun(String run) {
		this.run = run;
	}
	public AdminVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "AdminVo [no=" + no + ", title=" + title + ", content=" + content + ", writer=" + writer + ", date="
				+ date + ", isDeleted=" + isDeleted + ", hit=" + hit + ", changeName=" + changeName + ", open=" + open
				+ ", actor=" + actor + ", summary=" + summary + ", genre=" + genre + ", rate=" + rate + ", pr=" + pr
				+ ", run=" + run + "]";
	}
	public AdminVo(String no, String title, String content, String writer, String date, String isDeleted, String hit,
			String changeName, String open, String actor, String summary, String genre, String rate, String pr,
			String run) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.date = date;
		this.isDeleted = isDeleted;
		this.hit = hit;
		this.changeName = changeName;
		this.open = open;
		this.actor = actor;
		this.summary = summary;
		this.genre = genre;
		this.rate = rate;
		this.pr = pr;
		this.run = run;
	}	
	
}