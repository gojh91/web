package go.home.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import go.home.project.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public int checklogin(Member member) {
		// TODO Auto-generated method stub
		return session.selectOne("checklogin", member);
	}
	
	public Member memberdetail(Member member) {
		return session.selectOne("memberdetail", member);
	}
	
	public int totalMember() {
		return session.selectOne("totalMember");
	}

	@Override
	public List<Member> listMember(Member member) {
		// TODO Auto-generated method stub
		return session.selectList("listMember", member);
	}
	
	public int memberNickNameCnt(String mb_nickName) {
		return session.selectOne("memberNickNameCnt", mb_nickName);
	}


}
