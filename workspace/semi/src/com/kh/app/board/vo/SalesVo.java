package com.kh.app.board.vo;

public class SalesVo {
	private int movieSales;
	private int storeSales;
	private int totalSales;
	
	public int getMovieSales() {
		return movieSales;
	}
	public int getStoreSales() {
		return storeSales;
	}
	public int getTotalSales() {
		return totalSales;
	}
	@Override
	public String toString() {
		return "SalesVo [movieSales=" + movieSales + ", storeSales=" + storeSales + ", totalSales=" + totalSales + "]";
	}
	public SalesVo(int movieSales, int storeSales, int totalSales) {
		super();
		this.movieSales = movieSales;
		this.storeSales = storeSales;
		this.totalSales = totalSales;
	}
}
