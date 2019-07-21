package go.home.project.dao;

import java.util.List;

import go.home.project.model.Board;
import go.home.project.model.MemberBoard;

public interface BoardDao {
	List<MemberBoard> memberboardlist(MemberBoard memberboard);
	void memberboardsave(Board board);
	MemberBoard boardmemberdetail(int bd_num);

}
