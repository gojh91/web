package go.home.project.model;

import java.sql.Date;
import java.sql.Timestamp;

public class MemberBoard {
	private int bd_num;
	private String bd_title;
	private String bd_content;
	private int bd_visitCnt;
	private int bd_likeCnt;
	private String bd_hashTag;
	private String bd_location;
	private String bd_imgSrc;
	private Timestamp bd_regDate;
	private String bd_category;
	private int res_num;
	private double bd_score;
	private int bd_indent;
	private int bd_step;
	private int bd_status; 
	private int bd_replyCnt;
	private double avg_score;
	
	private String mb_id;	
	private String mb_nickName;	
	private String mb_pw;	 	
	private String mb_name;	
	private String mb_imgSrc;	
	private String mb_sex;	
	private String mb_phone;	
	private Date mb_birthDate;	
	private String mb_email;	
	private String mb_province;	
	private String mb_city;		
	private String mb_borough;	
	private String mb_remark;	
	private String mb_authority;	// ?ûë?óÖÍ∂åÌïú(1:?ùºÎ∞òÏÇ¨?ö©?ûê 2:Í¥?Î¶¨Ïûê)
	private String mb_status;	// STATUS (1:Active 2:Inactive 3:Delete)
	private Date mb_regDate;	
	private Date mb_wdDate;	
	public int getBd_num() {
		return bd_num;
	}
	public void setBd_num(int bd_num) {
		this.bd_num = bd_num;
	}
	public String getBd_title() {
		return bd_title;
	}
	public void setBd_title(String bd_title) {
		this.bd_title = bd_title;
	}
	public String getBd_content() {
		return bd_content;
	}
	public void setBd_content(String bd_content) {
		this.bd_content = bd_content;
	}
	public int getBd_visitCnt() {
		return bd_visitCnt;
	}
	public void setBd_visitCnt(int bd_visitCnt) {
		this.bd_visitCnt = bd_visitCnt;
	}
	public int getBd_likeCnt() {
		return bd_likeCnt;
	}
	public void setBd_likeCnt(int bd_likeCnt) {
		this.bd_likeCnt = bd_likeCnt;
	}
	public String getBd_hashTag() {
		return bd_hashTag;
	}
	public void setBd_hashTag(String bd_hashTag) {
		this.bd_hashTag = bd_hashTag;
	}
	public String getBd_location() {
		return bd_location;
	}
	public void setBd_location(String bd_location) {
		this.bd_location = bd_location;
	}
	public String getBd_imgSrc() {
		return bd_imgSrc;
	}
	public void setBd_imgSrc(String bd_imgSrc) {
		this.bd_imgSrc = bd_imgSrc;
	}
	public Timestamp getBd_regDate() {
		return bd_regDate;
	}
	public void setBd_regDate(Timestamp bd_regDate) {
		this.bd_regDate = bd_regDate;
	}
	public String getBd_category() {
		return bd_category;
	}
	public void setBd_category(String bd_category) {
		this.bd_category = bd_category;
	}
	public int getRes_num() {
		return res_num;
	}
	public void setRes_num(int res_num) {
		this.res_num = res_num;
	}
	public double getBd_score() {
		return bd_score;
	}
	public void setBd_score(double bd_score) {
		this.bd_score = bd_score;
	}
	public int getBd_indent() {
		return bd_indent;
	}
	public void setBd_indent(int bd_indent) {
		this.bd_indent = bd_indent;
	}
	public int getBd_step() {
		return bd_step;
	}
	public void setBd_step(int bd_step) {
		this.bd_step = bd_step;
	}
	public int getBd_status() {
		return bd_status;
	}
	public void setBd_status(int bd_status) {
		this.bd_status = bd_status;
	}
	public int getBd_replyCnt() {
		return bd_replyCnt;
	}
	public void setBd_replyCnt(int bd_replyCnt) {
		this.bd_replyCnt = bd_replyCnt;
	}
	public double getAvg_score() {
		return avg_score;
	}
	public void setAvg_score(double avg_score) {
		this.avg_score = avg_score;
	}
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
	public Date getMb_birthDate() {
		return mb_birthDate;
	}
	public void setMb_birthDate(Date mb_birthDate) {
		this.mb_birthDate = mb_birthDate;
	}
	public String getMb_email() {
		return mb_email;
	}
	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}
	public String getMb_province() {
		return mb_province;
	}
	public void setMb_province(String mb_province) {
		this.mb_province = mb_province;
	}
	public String getMb_city() {
		return mb_city;
	}
	public void setMb_city(String mb_city) {
		this.mb_city = mb_city;
	}
	public String getMb_borough() {
		return mb_borough;
	}
	public void setMb_borough(String mb_borough) {
		this.mb_borough = mb_borough;
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
	public Date getMb_regDate() {
		return mb_regDate;
	}
	public void setMb_regDate(Date mb_regDate) {
		this.mb_regDate = mb_regDate;
	}
	public Date getMb_wdDate() {
		return mb_wdDate;
	}
	public void setMb_wdDate(Date mb_wdDate) {
		this.mb_wdDate = mb_wdDate;
	}
	
}
