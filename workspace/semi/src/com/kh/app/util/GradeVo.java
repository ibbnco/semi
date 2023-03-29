package com.kh.app.util;

public class GradeVo {
	
	private int white;
	private int silver;
	private int gold;
	private int live;
	private int death;
	private int sleep;
	private int total;
	public int getWhite() {
		return white;
	}
	public int getSilver() {
		return silver;
	}
	public int getGold() {
		return gold;
	}	
	public int getLive() {
		return live;
	}
	public int getDeath() {
		return death;
	}
	public int getSleep() {
		return sleep;
	}
	public int getTotal() {
		return total;
	}
	
	public GradeVo(int white, int silver, int gold, int live, int death, int sleep, int total) {
		super();
		this.white = white;
		this.silver = silver;
		this.gold = gold;
		this.live = live;
		this.death = death;
		this.sleep = sleep;
		this.total = total;
	}
	@Override
	public String toString() {
		return "GradeVo [white=" + white + ", silver=" + silver + ", gold=" + gold + ", live=" + live + ", death="
				+ death + ", sleep=" + sleep + ", total=" + total + "]";
	}


}
