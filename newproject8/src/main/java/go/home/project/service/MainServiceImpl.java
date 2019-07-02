package go.home.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import go.home.project.dao.MainDao;
import go.home.project.model.Board;
import go.home.project.model.Menu;
import go.home.project.model.Reply;
import go.home.project.model.ResInfo;
import go.home.project.model.ResInfoBoard;

@Service
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDao md;
	
	@Override
	public List<Menu> searchmenu(String keyword){
		return md.searchmenu(keyword);
	}
	@Override
	public List<Reply> searchreply(String keyword) {
		// TODO Auto-generated method stub
		return md.searchreply(keyword);
	}

	@Override
	public List<Board> searchboard(String keyword) {
		// TODO Auto-generated method stub
		return md.searchboard(keyword);
	}

	@Override
	public List<ResInfo> searchresinfo(String keyword) {
		// TODO Auto-generated method stub
		return md.searchresinfo(keyword);
	}

	@Override
	public List<ResInfoBoard> searchresinfoboard(String keyword) {
		// TODO Auto-generated method stub
		return md.searchresinfoboard(keyword);
	}

	@Override
	public int searchmenu1(String keyword) {
		// TODO Auto-generated method stub
		return md.searchmenu1(keyword);
	}

	@Override
	public int searchreply1(String keyword) {
		// TODO Auto-generated method stub
		return md.searchreply1(keyword);
	}

	@Override
	public int searchboard1(String keyword) {
		// TODO Auto-generated method stub
		return md.searchboard1(keyword);
	}

	@Override
	public int searchresinfo1(String keyword) {
		// TODO Auto-generated method stub
		return md.searchresinfo1(keyword);
	}

	@Override
	public int searchresinfoboard1(String keyword) {
		// TODO Auto-generated method stub
		return md.searchresinfoboard1(keyword);
	}


}
