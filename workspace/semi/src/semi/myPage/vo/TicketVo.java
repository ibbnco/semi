package semi.myPage.vo;

public class TicketVo {

	private String movieTitle;
	private String ticketDate;
	private String startTime;
	private String theaterType;
	private String moviePerson;
	
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getTicketDate() {
		return ticketDate;
	}
	public void setTicketDate(String ticketDate) {
		this.ticketDate = ticketDate;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getTheaterType() {
		return theaterType;
	}
	public void setTheaterType(String theaterType) {
		this.theaterType = theaterType;
	}
	public String getMoviePerson() {
		return moviePerson;
	}
	public void setMoviePerson(String moviePerson) {
		this.moviePerson = moviePerson;
	}
	@Override
	public String toString() {
		return "TicketVo [movieTitle=" + movieTitle + ", ticketDate=" + ticketDate + ", startTime=" + startTime
				+ ", theaterType=" + theaterType + ", moviePerson=" + moviePerson + "]";
	}
	public TicketVo(String movieTitle, String ticketDate, String startTime, String theaterType, String moviePerson) {
		super();
		this.movieTitle = movieTitle;
		this.ticketDate = ticketDate;
		this.startTime = startTime;
		this.theaterType = theaterType;
		this.moviePerson = moviePerson;
	}
	public TicketVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
		
}
