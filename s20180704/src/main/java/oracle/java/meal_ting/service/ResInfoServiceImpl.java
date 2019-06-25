package oracle.java.meal_ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oracle.java.meal_ting.dao.ResInfoDao;
import oracle.java.meal_ting.model.Menu;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.model.ResInfoBoard;

@Service
public class ResInfoServiceImpl implements ResInfoService{

	@Autowired
	private ResInfoDao rid;
	
	public List<ResInfo> mainpage(ResInfo ri) {
		
		return rid.mainpage(ri);
	}

	public List<ResInfo> likeCnt(ResInfo ri){
		return rid.likeCnt(ri);
	}

	public List<ResInfo> mainList() {
		System.out.println("Service mainList() 실행 ");
		return rid.mainList();
	}
	
	public ResInfo getInfo(int res_num) {
		return rid.getInfo(res_num);
	}
	
	public List<ResInfoBoard> bestInfo(){
		return rid.bestInfo();
	}
	
	public List<Menu> getMenuInfo(int res_num) {
		return rid.getMenuInfo(res_num);
	}

	public List<ResInfoBoard> reviewRanking() {
		
		return rid.reviewRanking();
	}

	public List<ResInfoBoard> scoreRanking() {
		
		return rid.scoreRanking();
	}
	
	public List<ResInfoBoard> mealTingRanking(){
		return rid.mealTingRanking();
	}

}
