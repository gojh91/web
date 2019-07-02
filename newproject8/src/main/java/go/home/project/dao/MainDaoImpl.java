package go.home.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import go.home.project.model.Board;
import go.home.project.model.Menu;
import go.home.project.model.Reply;
import go.home.project.model.ResInfo;
import go.home.project.model.ResInfoBoard;

@Repository
public class MainDaoImpl implements MainDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<Menu> searchmenu(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("searchmenu",keyword);
		//return session.selectList("GOsearchmenu",keyword);
	}
	
	@Override
	public List<Reply> searchreply(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("searchreply",keyword);
	}

	@Override
	public List<Board> searchboard(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("searchboard",keyword);
	}

	@Override
	public List<ResInfo> searchresinfo(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("searchresinfo",keyword);
	}

	@Override
	public List<ResInfoBoard> searchresinfoboard(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("searchresinfoboard",keyword);
	}

	@Override
	public int searchmenu1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("searchmenu1",keyword);
	}

	@Override
	public int searchreply1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("searchreply1",keyword);
	}

	@Override
	public int searchboard1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("searchboard1",keyword);
	}

	@Override
	public int searchresinfo1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("searchresinfo1",keyword);
	}

	@Override
	public int searchresinfoboard1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("searchresinfoboard1",keyword);
	}
}
