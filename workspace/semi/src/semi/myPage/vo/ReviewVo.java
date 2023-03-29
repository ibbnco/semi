package semi.myPage.vo;

public class ReviewVo {

	private String reviewNo;
	private String content;
	private String reviewDate;
	private String reviewStatus;
	private String star;
	private String movieNo;
	private String movieTitle;
	
	public String getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(String reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getReviewStatus() {
		return reviewStatus;
	}
	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getMovieNo() {
		return movieNo;
	}
	public void setMovieNo(String movieNo) {
		this.movieNo = movieNo;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	@Override
	public String toString() {
		return "ReviewVo [reviewNo=" + reviewNo + ", content=" + content + ", reviewDate=" + reviewDate
				+ ", reviewStatus=" + reviewStatus + ", star=" + star + ", movieNo=" + movieNo + ", movieTitle="
				+ movieTitle + "]";
	}
	public ReviewVo(String reviewNo, String content, String reviewDate, String reviewStatus, String star,
			String movieNo, String movieTitle) {
		super();
		this.reviewNo = reviewNo;
		this.content = content;
		this.reviewDate = reviewDate;
		this.reviewStatus = reviewStatus;
		this.star = star;
		this.movieNo = movieNo;
		this.movieTitle = movieTitle;
	}
	public ReviewVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
