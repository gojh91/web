package oracle.java.meal_ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oracle.java.meal_ting.dao.SearchDao;
import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.model.Menu;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.model.ResInfoBoard;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private SearchDao sd;

	@Override
	public List<Menu> searchmenu(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchmenu(keyword);
	}

	/*@Override
	public List<Member> searchmember(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchmember(keyword);
	}*/

	@Override
	public List<Reply> searchreply(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchreply(keyword);
	}

	@Override
	public List<Board> searchboard(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchboard(keyword);
	}

	@Override
	public List<ResInfo> searchresinfo(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchresinfo(keyword);
	}

	@Override
	public List<ResInfoBoard> searchresinfoboard(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchresinfoboard(keyword);
	}

	@Override
	public int searchmenu1(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchmenu1(keyword);
	}

	@Override
	public int searchreply1(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchreply1(keyword);
	}

	@Override
	public int searchboard1(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchboard1(keyword);
	}

	@Override
	public int searchresinfo1(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchresinfo1(keyword);
	}

	@Override
	public int searchresinfoboard1(String keyword) {
		// TODO Auto-generated method stub
		return sd.searchresinfoboard1(keyword);
	}

}
