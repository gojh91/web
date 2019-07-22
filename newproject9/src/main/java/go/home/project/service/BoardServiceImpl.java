package go.home.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import go.home.project.dao.BoardDao;
import go.home.project.model.Board;
import go.home.project.model.MemberBoard;
import go.home.project.model.MemberReply;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDao bd;

	@Override
	public List<MemberBoard> memberboardlist(MemberBoard memberboard) {
		// TODO Auto-generated method stub
		return bd.memberboardlist(memberboard);
	}

	@Override
	public void memberboardsave(Board board) {
		// TODO Auto-generated method stub
		bd.memberboardsave(board);
		
	}

	@Override
	public MemberBoard boardmemberdetail(int bd_num) {
		// TODO Auto-generated method stub
		return bd.boardmemberdetail(bd_num);
	}

	@Override
	public List<MemberReply> memberreplylist(int bd_num) {
		// TODO Auto-generated method stub
		return bd.memberreplylist(bd_num);
	}

}
