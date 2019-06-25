package oracle.java.meal_ting.model;

import java.sql.Timestamp;

public class Reply {
	private String bd_category;
	private int bd_num;
	private int re_seqNum;
	private String re_content;
	private String mb_id;
	private Timestamp re_regDate;
	private String re_status;
	
	public String getBd_category() {
		return bd_category;
	}
	public void setBd_category(String bd_category) {
		this.bd_category = bd_category;
	}
	public int getRe_seqNum() {
		return re_seqNum;
	}
	public void setRe_seqNum(int re_seqNum) {
		this.re_seqNum = re_seqNum;
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
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public int getBd_num() {
		return bd_num;
	}
	public void setBd_num(int bd_num) {
		this.bd_num = bd_num;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}

}
