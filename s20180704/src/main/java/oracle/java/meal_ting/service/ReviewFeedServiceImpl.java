package oracle.java.meal_ting.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oracle.java.meal_ting.dao.BoardDao;
import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.MemberBoard;
import oracle.java.meal_ting.model.Reply;

@Service
public class ReviewFeedServiceImpl implements ReviewFeedService {

	@Autowired
	private BoardDao bdd;

	
/*	public List<Board> reviewList(Board board) {
		
		return bdd.reviewList(board);
	}*/
	
	public List<MemberBoard> reviewList(MemberBoard memberboard) {
		return bdd.reviewList(memberboard);
	}

	
	public Board reviewDetail(int bd_num) {
		return bdd.reviewDetail(bd_num);
	}


	public List<Board> reviewListManager() {
		return bdd.reviewListManager();
	}

	public void insert(Board board) {
		System.out.println("insert board.getBd_category()->"+board.getBd_category());
		 bdd.insert(board);	
	}

	public Board delete(int bd_num) {
		return bdd.delete(bd_num);
	}

	public MemberBoard memberDetail(String mb_id) {
		return bdd.memberDetail(mb_id);
	}


	public List<Reply> replyList(int bd_num) {
		return bdd.replyList(bd_num);
	}


	public void replyWrite(Reply reply) {
		bdd.replyWrite(reply);		
	}

	public Reply JYReplyUpdate(Reply reply) {
		return bdd.JYReplyUpdate(reply);
	}

	public Reply JYReplyDelete(Reply reply) {	
		return bdd.JYReplyDelete(reply);
	}

	public Board JYupdateForm(int bd_num) {
		return  bdd.JYupdateForm(bd_num);
	}

	public Board JYupdate(Board board) {
		return bdd.JYupdate(board);
	}


	public int replyCnt(int bd_num) {
		return bdd.JYReplyCnt(bd_num);
	}

	public void deleteWithReply(int bd_num) {
		bdd.JYdeleteWithReply(bd_num);
	}


	public void JYaddLikeCnt(int bd_num) {
		bdd.JYaddLikeCnt(bd_num);
	}


	public String getResName(int res_num) {
		return bdd.JYgetResName(res_num);
	}

	public List<MemberBoard> reviewList2(int res_num) {
		return bdd.reviewList2(res_num);
	}


	@Override
	public List<Board> avgScore() {
		// TODO Auto-generated method stub
		return bdd.avgScore();
	}


	@Override
	public void setAvgScore(Board avgboard) {
		// TODO Auto-generated method stub
		bdd.setAvgScore(avgboard);
	}


	public String getReplyImgSrc(String mb_id) {
		return bdd.getReplyImgSrc(mb_id);
	}


	public void setVisitCnt(int bd_num) {
		bdd.setVisitCnt(bd_num);
	}




}
