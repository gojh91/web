package go.home.project.model;

import java.sql.Timestamp;

public class Board {
	private int bd_num;
	private String mb_id;
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
	

	public double getAvg_score() {
		return avg_score;
	}
	public void setAvg_score(double avg_score) {
		this.avg_score = avg_score;
	}
	public int getBd_replyCnt() {
		return bd_replyCnt;
	}
	public void setBd_replyCnt(int bd_replyCnt) {
		this.bd_replyCnt = bd_replyCnt;
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
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public double getBd_score() {
		return bd_score;
	}
	public void setBd_score(int bd_score) {
		this.bd_score = bd_score;
	}
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
	public int getBd_status() {
		return bd_status;
	}
	public void setBd_status(int bd_status) {
		this.bd_status = bd_status;
	}
	
	
	

}
