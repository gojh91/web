package oracle.java.meal_ting.dao;

import java.util.List;

import oracle.java.meal_ting.model.Menu;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.model.ResInfoBoard;

public interface ResInfoDao {

	//최현규

	List<ResInfo> likeCnt(ResInfo ri);

	List<Menu> getMenuInfo(int res_num);

	ResInfo getInfo(int res_num);
	
	//박종혁

	List<ResInfo> mainList();

	List<ResInfoBoard> bestInfo();

	List<ResInfo> mainpage(ResInfo ri);

	List<ResInfoBoard> reviewRanking();

	List<ResInfoBoard> scoreRanking();

	List<ResInfoBoard> mealTingRanking();
}
