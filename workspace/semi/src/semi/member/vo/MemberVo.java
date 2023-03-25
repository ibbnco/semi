package semi.member.vo;

public class MemberVo {
	private String memberNo;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String memberNick;
	private String memberTel;
	private String memberEmail;
	private String quitYn;
	private String memberGrade;
	private String enrollDate;
	private String memberPoint;
	private String gradeNo;
	private String memberImg;
	
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberNick() {
		return memberNick;
	}
	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}
	public String getMemberTel() {
		return memberTel;
	}
	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getQuitYn() {
		return quitYn;
	}
	public void setQuitYn(String quitYn) {
		this.quitYn = quitYn;
	}
	public String getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(String memberPoint) {
		this.memberPoint = memberPoint;
	}
	public String getGradeNo() {
		return gradeNo;
	}
	public void setGradeNo(String gradeNo) {
		this.gradeNo = gradeNo;
	}
	public String getMemberImg() {
		return memberImg;
	}
	public void setMemberImg(String memberImg) {
		this.memberImg = memberImg;
	}
	@Override
	public String toString() {
		return "MemberVo [memberNo=" + memberNo + ", memberId=" + memberId + ", memberPwd=" + memberPwd
				+ ", memberName=" + memberName + ", memberNick=" + memberNick + ", memberTel=" + memberTel
				+ ", memberEmail=" + memberEmail + ", quitYn=" + quitYn + ", memberGrade=" + memberGrade
				+ ", enrollDate=" + enrollDate + ", memberPoint=" + memberPoint + ", gradeNo=" + gradeNo
				+ ", memberImg=" + memberImg + "]";
	}
	public MemberVo(String memberNo, String memberId, String memberPwd, String memberName, String memberNick,
			String memberTel, String memberEmail, String quitYn, String memberGrade, String enrollDate,
			String memberPoint, String gradeNo, String memberImg) {
		super();
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.memberNick = memberNick;
		this.memberTel = memberTel;
		this.memberEmail = memberEmail;
		this.quitYn = quitYn;
		this.memberGrade = memberGrade;
		this.enrollDate = enrollDate;
		this.memberPoint = memberPoint;
		this.gradeNo = gradeNo;
		this.memberImg = memberImg;
	}
	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	
}
