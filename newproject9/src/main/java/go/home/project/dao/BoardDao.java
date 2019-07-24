package go.home.project.dao;

import java.util.List;

import go.home.project.model.Board;
import go.home.project.model.MemberBoard;
import go.home.project.model.MemberReply;
import go.home.project.model.Reply;

public interface BoardDao {
	List<MemberBoard> memberboardlist(MemberBoard memberboard);
	void memberboardsave(Board board);
	MemberBoard boardmemberdetail(int bd_num);
	List<MemberReply> memberreplylist(int bd_num);
	void boardreplysave(Reply reply);
}
