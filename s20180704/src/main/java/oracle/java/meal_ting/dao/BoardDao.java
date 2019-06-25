package oracle.java.meal_ting.dao;

import java.util.List;
import java.util.Map;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.MemberBoard;
import oracle.java.meal_ting.model.Reply;


public interface BoardDao {

	/*List<Board> reviewList(Board board);*/
	
	List<MemberBoard> reviewList(MemberBoard memberboard);

	Board reviewDetail(int bd_num);

	void insert(Board board);

	Board delete(int bd_num);

	MemberBoard memberDetail(String mb_id);
	
	List<Board> reviewListManager();

	List<Reply> replyList(int bd_num);

	void replyWrite(Reply reply);

	Reply JYReplyUpdate(Reply reply);

	Reply JYReplyDelete(Reply reply);

	Board JYupdateForm(int bd_num);

	Board JYupdate(Board board);

	int JYReplyCnt(int bd_num);

	void JYdeleteWithReply(int bd_num);

	void JYaddLikeCnt(int bd_num);

	String JYgetResName(int res_num);

	List<MemberBoard> reviewList2(int res_num);
	
	List<Board> avgScore();
	
	void setAvgScore(Board avgboard);

	String getReplyImgSrc(String mb_id);

	void setVisitCnt(int bd_num);

}
