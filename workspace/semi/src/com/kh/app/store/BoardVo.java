package com.kh.app.store;

public class BoardVo {
	
	private String product_no;
	private String product_name;
	private String product_price;
	private String product_detail;
	private String product_image;
	private String count;
	private String delete_yn;
	private String product_date;
	private String product_revise;
	
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getDelete_yn() {
		return delete_yn;
	}
	public void setDelete_yn(String delete_yn) {
		this.delete_yn = delete_yn;
	}
	public String getProduct_date() {
		return product_date;
	}
	public void setProduct_date(String product_date) {
		this.product_date = product_date;
	}
	public String getProduct_revise() {
		return product_revise;
	}
	public void setProduct_revise(String product_revise) {
		this.product_revise = product_revise;
	}
	@Override
	public String toString() {
		return "BoardVo [product_no=" + product_no + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_detail=" + product_detail + ", product_image=" + product_image + ", count="
				+ count + ", delete_yn=" + delete_yn + ", product_date=" + product_date + ", product_revise="
				+ product_revise + "]";
	}
	public BoardVo(String product_no, String product_name, String product_price, String product_detail,
			String product_image, String count, String delete_yn, String product_date, String product_revise) {
		super();
		this.product_no = product_no;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_detail = product_detail;
		this.product_image = product_image;
		this.count = count;
		this.delete_yn = delete_yn;
		this.product_date = product_date;
		this.product_revise = product_revise;
	}
	public BoardVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
