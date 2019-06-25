package oracle.java.meal_ting.model;

import java.sql.Timestamp;

public class ResInfoBoard {
	
	// ResInfo
	private int gubun; 		    // 구분 
	private int res_num; 		// 가게번호					
	private String res_name;		// 이름
	private String res_addr;		// 주소					
	private String res_phone;	// 전화번호
	private String res_foodType;	// 음식종류
	private String res_price;		// 가격
	private String res_parking;  // 주차	
	private String res_bHour;	// 영업시간
	private int res_likeCnt;	// 추천수
	private double res_score;		// 평점
	private int res_reviewCnt;	// 리뷰수	
	private String res_imgSrc1;	// 사전저장경로
	private String res_imgSrc2;
	private String res_imgSrc3;
	
	// Board
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
	private float bd_score;
	private String bd_status;
	
	
	
	public String getBd_status() {return bd_status;}
	public void setBd_status(String bd_status) {this.bd_status = bd_status;}
	public int getGubun() {	return gubun;}
	public void setGubun(int gubun) {this.gubun = gubun;}
	public int getRes_num() {return res_num;}
	public void setRes_num(int res_num) {this.res_num = res_num;}
	public String getRes_name() {return res_name;}
	public void setRes_name(String res_name) {this.res_name = res_name;}
	public String getRes_addr() {return res_addr;}
	public void setRes_addr(String res_addr) {this.res_addr = res_addr;}
	public String getRes_phone() {return res_phone;}
	public void setRes_phone(String res_phone) {this.res_phone = res_phone;}
	public String getRes_foodType() {return res_foodType;}
	public void setRes_foodType(String res_foodType) {this.res_foodType = res_foodType;}
	public String getRes_price() {return res_price;}
	public void setRes_price(String res_price) {this.res_price = res_price;}
	public String getRes_parking() {return res_parking;}
	public void setRes_parking(String res_parking) {this.res_parking = res_parking;}
	public String getRes_bHour() {return res_bHour;}
	public void setRes_bHour(String res_bHour) {this.res_bHour = res_bHour;}
	public int getRes_likeCnt() {return res_likeCnt;}
	public void setRes_likeCnt(int res_likeCnt) {this.res_likeCnt = res_likeCnt;}
	public double getRes_score() {return res_score;}
	public void setRes_score(double res_score) {this.res_score = res_score;}
	public int getRes_reviewCnt() {return res_reviewCnt;}
	public void setRes_reviewCnt(int res_reviewCnt) {this.res_reviewCnt = res_reviewCnt;}
	public String getRes_imgSrc1() {return res_imgSrc1;}
	public void setRes_imgSrc1(String res_imgSrc1) {this.res_imgSrc1 = res_imgSrc1;	}
	public String getRes_imgSrc2() {return res_imgSrc2;}
	public void setRes_imgSrc2(String res_imgSrc2) {this.res_imgSrc2 = res_imgSrc2;}
	public String getRes_imgSrc3() {return res_imgSrc3;}
	public void setRes_imgSrc3(String res_imgSrc3) {this.res_imgSrc3 = res_imgSrc3;}
	public int getBd_num() {return bd_num;}
	public void setBd_num(int bd_num) {this.bd_num = bd_num;}
	public String getMb_id() {return mb_id;}
	public void setMb_id(String mb_id) {this.mb_id = mb_id;}
	public String getBd_title() {return bd_title;}
	public void setBd_title(String bd_title) {this.bd_title = bd_title;}
	public String getBd_content() {return bd_content;}
	public void setBd_content(String bd_content) {this.bd_content = bd_content;}
	public int getBd_visitCnt() {return bd_visitCnt;}
	public void setBd_visitCnt(int bd_visitCnt) {this.bd_visitCnt = bd_visitCnt;}
	public int getBd_likeCnt() {return bd_likeCnt;}
	public void setBd_likeCnt(int bd_likeCnt) {this.bd_likeCnt = bd_likeCnt;}
	public String getBd_hashTag() {return bd_hashTag;}
	public void setBd_hashTag(String bd_hashTag) {this.bd_hashTag = bd_hashTag;}
	public String getBd_location() {return bd_location;}
	public void setBd_location(String bd_location) {this.bd_location = bd_location;}
	public String getBd_imgSrc() {return bd_imgSrc;}
	public void setBd_imgSrc(String bd_imgSrc) {this.bd_imgSrc = bd_imgSrc;}
	public Timestamp getBd_regDate() {return bd_regDate;}
	public void setBd_regDate(Timestamp bd_regDate) {this.bd_regDate = bd_regDate;}
	public String getBd_category() {return bd_category;}
	public void setBd_category(String bd_category) {this.bd_category = bd_category;}
	public float getBd_score() {return bd_score;}
	public void setBd_score(float bd_score) {this.bd_score = bd_score;}

}
