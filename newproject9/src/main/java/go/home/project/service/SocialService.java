package go.home.project.service;

import java.util.List;

import go.home.project.model.Board;
import go.home.project.model.MemberBoard;
import go.home.project.model.MemberReply;
import go.home.project.model.Reply;

public interface SocialService {
	List<MemberBoard> memberboardlist(MemberBoard memberboard);
	void memberboardsave(Board board);
	MemberBoard boardmemberdetail(int bd_num);
	List<MemberReply> memberreplylist(int bd_num);
	void boardreplysave(Reply reply);
	void boardReplyUpdate(Reply reply);
	void boardreplydelete(Reply reply);
	void boardDelete(int bd_num);
	Board board(int bd_num);
	void boardUpdate(Board board);
}
