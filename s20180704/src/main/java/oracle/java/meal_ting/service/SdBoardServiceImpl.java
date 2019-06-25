package oracle.java.meal_ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oracle.java.meal_ting.dao.SdBoardDao;
import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.MemberBoard;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.MemberReply;

@Service
public class SdBoardServiceImpl implements SdBoardService{
	@Autowired
	private SdBoardDao bd;
	
	public List<MemberBoard> sdList(MemberBoard memberBoard) {
		return bd.sdList(memberBoard);
	}

	public void sdSave(Board board) {
		bd.sdSave(board);
	}

	public Board sdDetail(int bd_num) {
		return bd.sdDetail(bd_num);
	}

	public Board sdDelete(int bd_num) {
		return bd.sdDelete(bd_num);
	}

	public MemberBoard sdMemberDetail(int bd_num) {
		return bd.sdMemberDetail(bd_num);
	}

	public Board sdUpdateForm(int bd_num) {
		return bd.sdUpdateForm(bd_num);
	}

	public Board sdUpdate(Board board) {
		return bd.sdUpdate(board);
	}

	public List<MemberReply> sdReply(MemberReply memberReply) {
		return bd.sdReply(memberReply);
	}

	public void sdReplySave(Reply reply) {
		bd.sdReplySave(reply);
		
	}

	public Reply sdReplyDelete(Reply reply) {
		return bd.sdReplyDelete(reply);
	}

	public Reply sdReplyUpdate(Reply reply) {
		return bd.sdReplyUpdate(reply);
	}
}
