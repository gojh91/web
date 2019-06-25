package go.home.project.model;

import java.sql.Timestamp;

public class MemberReply {
	private String mb_id;
	private String mb_nickName;
	private String mb_pw;
	private String mb_name;
	private String mb_imgSrc;
	private String mb_sex;
	private String mb_phone;
	private String mb_birthDate;
	private String mb_email;
	private String mb_postCode;
	private String mb_addr1;
	private String mb_addr2;
	private String mb_remark;
	private String mb_authority;
	private String mb_status;
	private String mb_regDate;
	private String mb_wdDate;
	private String tlogin;    // Î°úÍ∑∏?ù∏ Ï≤¥ÌÅ¨
	// Ï°∞Ìöå?ö©
	private String keyword;
	private String pageNum;  
	private int start; 		     
	private int end;
	
	private String bd_category;
	private int bd_num;
	private int re_seqNum;
	private String re_content;
	private Timestamp re_regDate;
	private String re_status;
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_nickName() {
		return mb_nickName;
	}
	public void setMb_nickName(String mb_nickName) {
		this.mb_nickName = mb_nickName;
	}
	public String getMb_pw() {
		return mb_pw;
	}
	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public String getMb_imgSrc() {
		return mb_imgSrc;
	}
	public void setMb_imgSrc(String mb_imgSrc) {
		this.mb_imgSrc = mb_imgSrc;
	}
	public String getMb_sex() {
		return mb_sex;
	}
	public void setMb_sex(String mb_sex) {
		this.mb_sex = mb_sex;
	}
	public String getMb_phone() {
		return mb_phone;
	}
	public void setMb_phone(String mb_phone) {
		this.mb_phone = mb_phone;
	}
	public String getMb_birthDate() {
		return mb_birthDate;
	}
	public void setMb_birthDate(String mb_birthDate) {
		this.mb_birthDate = mb_birthDate;
	}
	public String getMb_email() {
		return mb_email;
	}
	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}
	public String getMb_postCode() {
		return mb_postCode;
	}
	public void setMb_postCode(String mb_postCode) {
		this.mb_postCode = mb_postCode;
	}
	public String getMb_addr1() {
		return mb_addr1;
	}
	public void setMb_addr1(String mb_addr1) {
		this.mb_addr1 = mb_addr1;
	}
	public String getMb_addr2() {
		return mb_addr2;
	}
	public void setMb_addr2(String mb_addr2) {
		this.mb_addr2 = mb_addr2;
	}
	public String getMb_remark() {
		return mb_remark;
	}
	public void setMb_remark(String mb_remark) {
		this.mb_remark = mb_remark;
	}
	public String getMb_authority() {
		return mb_authority;
	}
	public void setMb_authority(String mb_authority) {
		this.mb_authority = mb_authority;
	}
	public String getMb_status() {
		return mb_status;
	}
	public void setMb_status(String mb_status) {
		this.mb_status = mb_status;
	}
	public String getMb_regDate() {
		return mb_regDate;
	}
	public void setMb_regDate(String mb_regDate) {
		this.mb_regDate = mb_regDate;
	}
	public String getMb_wdDate() {
		return mb_wdDate;
	}
	public void setMb_wdDate(String mb_wdDate) {
		this.mb_wdDate = mb_wdDate;
	}
	public String getTlogin() {
		return tlogin;
	}
	public void setTlogin(String tlogin) {
		this.tlogin = tlogin;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getPageNum() {
		return pageNum;
	}
	public void setPageNum(String pageNum) {
		this.pageNum = pageNum;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getBd_category() {
		return bd_category;
	}
	public void setBd_category(String bd_category) {
		this.bd_category = bd_category;
	}
	public int getBd_num() {
		return bd_num;
	}
	public void setBd_num(int bd_num) {
		this.bd_num = bd_num;
	}
	public int getRe_seqNum() {
		return re_seqNum;
	}
	public void setRe_seqNum(int re_seqNum) {
		this.re_seqNum = re_seqNum;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public Timestamp getRe_regDate() {
		return re_regDate;
	}
	public void setRe_regDate(Timestamp re_regDate) {
		this.re_regDate = re_regDate;
	}
	public String getRe_status() {
		return re_status;
	}
	public void setRe_status(String re_status) {
		this.re_status = re_status;
	}
}
