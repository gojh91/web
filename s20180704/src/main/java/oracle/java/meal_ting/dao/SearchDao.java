package oracle.java.meal_ting.dao;

import java.util.List;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.model.Menu;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.model.ResInfoBoard;



public interface SearchDao {
	List<Menu> searchmenu(String keyword);
	int searchmenu1(String keyword);
	List<Reply> searchreply(String keyword);
	int searchreply1(String keyword);
	List<Board> searchboard(String keyword);
	int searchboard1(String keyword);
	/*List<Member> searchmember(String keyword);*/
	List<ResInfo> searchresinfo(String keyword);
	int searchresinfo1(String keyword);
	List<ResInfoBoard> searchresinfoboard(String keyword);
	int searchresinfoboard1(String keyword);
}
