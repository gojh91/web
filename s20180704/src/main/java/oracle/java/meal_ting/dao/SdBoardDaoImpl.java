package oracle.java.meal_ting.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.MemberBoard;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.MemberReply;

@Repository
public class SdBoardDaoImpl implements SdBoardDao{
	@Autowired
	private SqlSession session;
	
	public List<MemberBoard> sdList(MemberBoard memberBoard) {	
		return session.selectList("SdListAll", memberBoard);
	}

	public void sdSave(Board board) {
		session.insert("SdSaveOne", board);
	}

	public Board sdDetail(int bd_num) {
		return session.selectOne("SdDetail", bd_num);
	}

	public Board sdDelete(int bd_num) {
		return session.selectOne("sdDelete", bd_num);
	}

	public MemberBoard sdMemberDetail(int bd_num) {
		return session.selectOne("sdMemberDetail", bd_num);
	}

	public Board sdUpdateForm(int bd_num) {
		return session.selectOne("sdUpdateForm", bd_num);
	}

	public Board sdUpdate(Board board) {
		return session.selectOne("sdUpdate", board);
	}

	public List<MemberReply> sdReply(MemberReply memberReply) {
		return session.selectList("sdReply", memberReply);
	}

	public void sdReplySave(Reply reply) {
		session.insert("sdReplySave", reply);
	}

	public Reply sdReplyDelete(Reply reply) {
		return session.selectOne("sdReplyDelete", reply);
	}

	public Reply sdReplyUpdate(Reply reply) {
		return session.selectOne("sdReplyUpdate", reply);
	}
}
