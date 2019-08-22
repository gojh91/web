package go.home.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import go.home.project.model.MemberBoard;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<MemberBoard> reviewList() {
		// TODO Auto-generated method stub
		return session.selectList("reviewList");
	}

}
