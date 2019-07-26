package go.home.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import go.home.project.model.Board;
import go.home.project.model.MemberBoard;
import go.home.project.model.MemberReply;
import go.home.project.model.Reply;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired
	private SqlSession session;

	@Override
	public List<MemberBoard> memberboardlist(MemberBoard memberboard) {
		// TODO Auto-generated method stub
		return session.selectList("memberboardlist", memberboard);
	}

	@Override
	public void memberboardsave(Board board) {
		// TODO Auto-generated method stub
		session.insert("memberboardsave", board);
	}

	@Override
	public MemberBoard boardmemberdetail(int bd_num) {
		// TODO Auto-generated method stub
		return session.selectOne("boardMemberDetail", bd_num);
	}

	@Override
	public List<MemberReply> memberreplylist(int bd_num) {
		// TODO Auto-generated method stub
		return session.selectList("memberReplyList", bd_num);
	}

	@Override
	public void boardreplysave(Reply reply) {
		// TODO Auto-generated method stub
		session.insert("replySave",reply);
		
	}

	@Override
	public void replyupdate(Reply reply) {
		// TODO Auto-generated method stub
		session.selectOne("replyUpdate", reply);
	}

}
