package semi.myPage.vo;

public class QnaVo {
	
	private String  qnaNo;
	private String	qnaTitle;
	private String	qnaContent;
	private String	qnaDate;
	private String	qnaDelStatus;
	private String	qnaAnswer;
	private String	qnaAnswerDate;
	private String	memberNo;
	private String	adminNo;
	
	public String getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(String qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public String getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(String qnaDate) {
		this.qnaDate = qnaDate;
	}
	public String getQnaDelStatus() {
		return qnaDelStatus;
	}
	public void setQnaDelStatus(String qnaDelStatus) {
		this.qnaDelStatus = qnaDelStatus;
	}
	public String getQnaAnswer() {
		return qnaAnswer;
	}
	public void setQnaAnswer(String qnaAnswer) {
		this.qnaAnswer = qnaAnswer;
	}
	public String getQnaAnswerDate() {
		return qnaAnswerDate;
	}
	public void setQnaAnswerDate(String qnaAnswerDate) {
		this.qnaAnswerDate = qnaAnswerDate;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(String adminNo) {
		this.adminNo = adminNo;
	}
	@Override
	public String toString() {
		return "QnaVo [qnaNo=" + qnaNo + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent + ", qnaDate="
				+ qnaDate + ", qnaDelStatus=" + qnaDelStatus + ", qnaAnswer=" + qnaAnswer + ", qnaAnswerDate="
				+ qnaAnswerDate + ", memberNo=" + memberNo + ", adminNo=" + adminNo + "]";
	}
	public QnaVo(String qnaNo, String qnaTitle, String qnaContent, String qnaDate, String qnaDelStatus,
			String qnaAnswer, String qnaAnswerDate, String memberNo, String adminNo) {
		super();
		this.qnaNo = qnaNo;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.qnaDelStatus = qnaDelStatus;
		this.qnaAnswer = qnaAnswer;
		this.qnaAnswerDate = qnaAnswerDate;
		this.memberNo = memberNo;
		this.adminNo = adminNo;
	}
	public QnaVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
