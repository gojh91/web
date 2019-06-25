package oracle.java.meal_ting.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.model.Menu;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.model.ResInfoBoard;



@Repository
public class SearchDaoImpl implements SearchDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<Menu> searchmenu(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("GOsearchmenu",keyword);
	}

	/*@Override
	public List<Member> searchmember(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("GOsearchmember",keyword);
	}
*/
	@Override
	public List<Reply> searchreply(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("GOsearchreply",keyword);
	}

	@Override
	public List<Board> searchboard(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("GOsearchboard",keyword);
	}

	@Override
	public List<ResInfo> searchresinfo(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("GOsearchresinfo",keyword);
	}

	@Override
	public List<ResInfoBoard> searchresinfoboard(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("GOsearchresinfoboard",keyword);
	}

	@Override
	public int searchmenu1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("GOsearchmenu1",keyword);
	}

	@Override
	public int searchreply1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("GOsearchreply1",keyword);
	}

	@Override
	public int searchboard1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("GOsearchboard1",keyword);
	}

	@Override
	public int searchresinfo1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("GOsearchresinfo1",keyword);
	}

	@Override
	public int searchresinfoboard1(String keyword) {
		// TODO Auto-generated method stub
		return session.selectOne("GOsearchresinfoboard1",keyword);
	}

}
