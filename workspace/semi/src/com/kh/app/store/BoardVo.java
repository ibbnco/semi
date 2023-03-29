package com.kh.app.store;

public class BoardVo {
	
	private String productNo;
	private String productName;
	private String productPrice;
	private String productDetail;
	private String productImage;
	private String count;
	private String deleteYn;
	private String productDate;
	private String productRevise;
	public String getProductNo() {
		return productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductDetail() {
		return productDetail;
	}
	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getDeleteYn() {
		return deleteYn;
	}
	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}
	public String getProductDate() {
		return productDate;
	}
	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}
	public String getProductRevise() {
		return productRevise;
	}
	public void setProductRevise(String productRevise) {
		this.productRevise = productRevise;
	}
	@Override
	public String toString() {
		return "BoardVo [productNo=" + productNo + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productDetail=" + productDetail + ", productImage=" + productImage + ", count=" + count
				+ ", deleteYn=" + deleteYn + ", productDate=" + productDate + ", productRevise=" + productRevise + "]";
	}
	public BoardVo(String productNo, String productName, String productPrice, String productDetail, String productImage,
			String count, String deleteYn, String productDate, String productRevise) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productDetail = productDetail;
		this.productImage = productImage;
		this.count = count;
		this.deleteYn = deleteYn;
		this.productDate = productDate;
		this.productRevise = productRevise;
	}
	public BoardVo() {
		super();
		// TODO Auto-generated constructor stub
	}
}

	
	
	