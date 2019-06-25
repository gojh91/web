package oracle.java.meal_ting.service;

import java.util.List;

import oracle.java.meal_ting.model.Menu;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.model.ResInfoBoard;

public interface ResInfoService {

	List<ResInfo> mainpage(ResInfo ri);

	List<ResInfo> likeCnt(ResInfo ri);
	
	List<ResInfo> mainList();

	List<ResInfoBoard> bestInfo();
	

	ResInfo getInfo(int res_num);

	List<Menu> getMenuInfo(int res_num);

	List<ResInfoBoard> reviewRanking();

	List<ResInfoBoard> scoreRanking();

	List<ResInfoBoard> mealTingRanking();
}
