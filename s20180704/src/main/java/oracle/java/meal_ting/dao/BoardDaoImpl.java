package oracle.java.meal_ting.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.MemberBoard;
import oracle.java.meal_ting.model.Reply;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired
	private SqlSession session;
	
/*	public List<Board> reviewList(Board board) {
		return session.selectList("JYreviewList", board);
	}*/
	
	public List<MemberBoard> reviewList(MemberBoard memberboard) {
		return session.selectList("JYreviewList", memberboard);
	}

	
	public Board reviewDetail(int bd_num) {
		return session.selectOne("JYreviewDetail", bd_num);
	}


	public void insert(Board board) {
		System.out.println("BoardDaoImpl insert board.getBd_title()->"+board.getBd_title());
		System.out.println("BoardDaoImpl insert board.getBd_content()->"+board.getBd_content());
		try {
			 session.insert("JYinsertReview", board);
		} catch (Exception e) {
			System.out.println("BoardDaoImpl insert Exception->"+e.getMessage());
			
			return;
		}
	
	}
	public Board delete(int bd_num) {
		return session.selectOne("JYdelete",bd_num);
	}

	public MemberBoard memberDetail(String mb_id) {
		return session.selectOne("JYmemberDetail", mb_id);
	}
	
	public List<Board> reviewListManager() {
		
		return session.selectList("JYselectManager");
	}


	public List<Reply> replyList(int bd_num) {
		return session.selectList("JYreplyList", bd_num);
	}


	public void replyWrite(Reply reply) {
		session.insert("JYreplyWrite", reply);
	}

	public Reply JYReplyUpdate(Reply reply) {
		return session.selectOne("JYReplyUpdate", reply);
	}

	public Reply JYReplyDelete(Reply reply) {
		return session.selectOne("JYReplyDelete", reply);
	}

	public Board JYupdateForm(int bd_num) {
		return session.selectOne("JYupdateForm", bd_num);
	}

	public Board JYupdate(Board board) {
		return session.selectOne("JYupdate", board);
	}

	public int JYReplyCnt(int bd_num) {
		return session.selectOne("JYReplyCnt", bd_num);
	}

	public void JYdeleteWithReply(int bd_num) {
		session.update("JYdeleteWithReply", bd_num);
	}


	public void JYaddLikeCnt(int bd_num) {
		session.update("JYaddLikeCnt", bd_num);
	}


	public String JYgetResName(int res_num) {
		return session.selectOne("JYgetResName", res_num);
	}


	public List<MemberBoard> reviewList2(int res_num) {
		return session.selectList("JYreviewList2", res_num);
	}


	@Override
	public List<Board> avgScore() {
		// TODO Auto-generated method stub
		return session.selectList("JYavgScore");
	}


	@Override
	public void setAvgScore(Board avgboard) {
		// TODO Auto-generated method stub
		session.update("JYsetAvgScore",avgboard);
	}


	public String getReplyImgSrc(String mb_id) {
		return session.selectOne("JYgetReplyImgSrc", mb_id);
	}


	public void setVisitCnt(int bd_num) {
		session.update("JYsetVisitCnt", bd_num);
	}



	
	

}
