package oracle.java.meal_ting.dao;

import java.util.List;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.MemberBoard;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.MemberReply;

public interface SdBoardDao {
	List<MemberBoard> sdList(MemberBoard memberBoard);
	void sdSave(Board board);
	Board sdDetail(int bd_num);
	Board sdDelete(int bd_num);
	MemberBoard sdMemberDetail(int bd_num);
	Board sdUpdateForm(int bd_num);
	Board sdUpdate(Board board);
	List<MemberReply> sdReply(MemberReply memberReply);
	void sdReplySave(Reply reply);
	Reply sdReplyDelete(Reply reply);
	Reply sdReplyUpdate(Reply reply);
}
