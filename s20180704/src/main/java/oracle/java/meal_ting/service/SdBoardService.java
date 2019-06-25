package oracle.java.meal_ting.service;

import java.util.List;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.MemberBoard;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.MemberReply;

public interface SdBoardService {
	List<MemberBoard> sdList(MemberBoard memberBoard);	// 모델 받아와서 리스트
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
