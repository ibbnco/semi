package semi.myPage.vo;

public class DibsVo {
	
	private String memberNo;
	private String movieNo;
	private String movieTitle;
	private String openningDate;
	private String movieImgNo;
	private String movieImg;
	
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
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
	public String getOpenningDate() {
		return openningDate;
	}
	public void setOpenningDate(String openningDate) {
		this.openningDate = openningDate;
	}
	public String getMovieImgNo() {
		return movieImgNo;
	}
	public void setMovieImgNo(String movieImgNo) {
		this.movieImgNo = movieImgNo;
	}
	public String getMovieImg() {
		return movieImg;
	}
	public void setMovieImg(String movieImg) {
		this.movieImg = movieImg;
	}
	@Override
	public String toString() {
		return "DibsVo [memberNo=" + memberNo + ", movieNo=" + movieNo + ", movieTitle=" + movieTitle
				+ ", openningDate=" + openningDate + ", movieImgNo=" + movieImgNo + ", movieImg=" + movieImg + "]";
	}
	public DibsVo(String memberNo, String movieNo, String movieTitle, String openningDate, String movieImgNo,
			String movieImg) {
		super();
		this.memberNo = memberNo;
		this.movieNo = movieNo;
		this.movieTitle = movieTitle;
		this.openningDate = openningDate;
		this.movieImgNo = movieImgNo;
		this.movieImg = movieImg;
	}
	public DibsVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
