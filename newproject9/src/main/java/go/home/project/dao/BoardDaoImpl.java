package go.home.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import go.home.project.model.MemberBoard;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired
	private SqlSession session;

	@Override
	public List<MemberBoard> memberboardlist(MemberBoard memberboard) {
		// TODO Auto-generated method stub
		return session.selectList("memberboardlist", memberboard);
	}

}
