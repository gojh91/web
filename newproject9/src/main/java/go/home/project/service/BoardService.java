package go.home.project.service;

import java.util.List;

import go.home.project.model.Board;
import go.home.project.model.MemberBoard;

public interface BoardService {
	List<MemberBoard> memberboardlist(MemberBoard memberboard);
	void memberboardsave(Board board);
	MemberBoard boardmemberdetail(int bd_num);


}
