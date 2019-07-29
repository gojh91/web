package go.home.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import go.home.project.dao.SocialDao;
import go.home.project.model.Board;
import go.home.project.model.MemberBoard;
import go.home.project.model.MemberReply;
import go.home.project.model.Reply;

@Service
public class SocialServiceImpl implements SocialService{
	@Autowired
	private SocialDao sd;

	@Override
	public List<MemberBoard> memberboardlist(MemberBoard memberboard) {
		// TODO Auto-generated method stub
		return sd.memberboardlist(memberboard);
	}

	@Override
	public void memberboardsave(Board board) {
		// TODO Auto-generated method stub
		sd.memberboardsave(board);
		
	}

	@Override
	public MemberBoard boardmemberdetail(int bd_num) {
		// TODO Auto-generated method stub
		return sd.boardmemberdetail(bd_num);
	}

	@Override
	public List<MemberReply> memberreplylist(int bd_num) {
		// TODO Auto-generated method stub
		return sd.memberreplylist(bd_num);
	}

	@Override
	public void boardreplysave(Reply reply) {
		// TODO Auto-generated method stub
		sd.boardreplysave(reply);
		
	}

	@Override
	public void boardReplyUpdate(Reply reply) {
		// TODO Auto-generated method stub
		sd.boardReplyUpdate(reply);
		
	}

	@Override
	public void boardreplydelete(Reply reply) {
		// TODO Auto-generated method stub
		sd.boardreplydelete(reply);
	}

	@Override
	public void boardDelete(int bd_num) {
		// TODO Auto-generated method stub
		sd.boardDelete(bd_num);
	}

	@Override
	public Board board(int bd_num) {
		// TODO Auto-generated method stub
		return sd.board(bd_num);
	}

	@Override
	public void boardUpdate(Board board) {
		// TODO Auto-generated method stub
		sd.boardUpdate(board);
	}

	

}
