package oracle.java.meal_ting.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.model.MemberBoard;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.service.ReviewFeedService;


@Controller
public class JYReviewFeedController {
	@Autowired
	private ReviewFeedService rs;

	@RequestMapping(value="JYreviewList")
	public String reviewList(Model model, MemberBoard memberboard, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		System.out.println("JYreviewList Start...");
		List<MemberBoard> reviewList = rs.reviewList(memberboard);	//디비에서 리스트에 객체를 넣을 코드
		
		Iterator<MemberBoard> itr = reviewList.iterator();
		
		while(itr.hasNext())
		{
			MemberBoard rvBoard = itr.next();
			int bd_num = rvBoard.getBd_num();
			rvBoard.setBd_replyCnt(rs.replyCnt(bd_num));
		}
		model.addAttribute("reviewList",reviewList);//모델에 리스트를 넣을 코드
		
		List<Board> avgScore= rs.avgScore();
		Iterator<Board> itr1 = avgScore.iterator();
		while (itr1.hasNext()) {
			Board avgboard=itr1.next();
			if((Integer)avgboard.getRes_num()!=null) {
				double avg_Score=Math.round(avgboard.getAvg_score()*10)/10.0;
				avgboard.setAvg_score(avg_Score);
				rs.setAvgScore(avgboard);
			}
		}
		
		
		System.out.println("JYreviewList End...");
		
		return "reviewFeed";	
	}
	
	@RequestMapping(value="JYreviewList2")
	public String reviewList2(Model model, int res_num, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		System.out.println("JYreviewList Start...");
		List<MemberBoard> reviewList = rs.reviewList2(res_num);	//디비에서 리스트에 객체를 넣을 코드
		
		Iterator<MemberBoard> itr = reviewList.iterator();
		
		while(itr.hasNext())
		{
			MemberBoard rvBoard = itr.next();
			int bd_num = rvBoard.getBd_num();
			rvBoard.setBd_replyCnt(rs.replyCnt(bd_num));
		}
		model.addAttribute("reviewList",reviewList);//모델에 리스트를 넣을 코드
		
		
		System.out.println("JYreviewList2 End...");
		
		return "reviewFeed";	
	}
	
		
	@RequestMapping(value="JYreviewDetail") 
	public String reviewDetail(int bd_num, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("loginTF", login);
		
		if(member != null)
		{
			model.addAttribute("member", member);
			model.addAttribute("memberId", member.getMb_id());
		}
		
		rs.setVisitCnt(bd_num);
		
		Board board = rs.reviewDetail(bd_num);
		model.addAttribute("board",board);
		
		MemberBoard memberBoard = rs.memberDetail(board.getMb_id());
		model.addAttribute("JYmemberDetail",memberBoard);
		
		List<String> hashTagList = Arrays.asList(board.getBd_hashTag().split("#"));
		model.addAttribute("hashList", hashTagList);
		
		List<Reply> replyList = rs.replyList(bd_num);
		Map<String, String> replyImg = new HashMap<String, String>();
		
		Iterator<Reply> itrRpIs = replyList.iterator();
		while(itrRpIs.hasNext()) {
			Reply reply = itrRpIs.next();
			String re_imgSrc = rs.getReplyImgSrc(reply.getMb_id());
			replyImg.put(reply.getMb_id(), re_imgSrc);
		}
		model.addAttribute("replyList", replyList);
		model.addAttribute("replyImg", replyImg);
		
		int replyCnt = rs.replyCnt(bd_num);
		model.addAttribute("replyCnt", replyCnt);
		
		List<Board> avgScore= rs.avgScore();
		Iterator<Board> itr1 = avgScore.iterator();
		while (itr1.hasNext()) {
			Board avgboard=itr1.next();
			if((Integer)avgboard.getRes_num()!=null) {
				double avg_Score=Math.round(avgboard.getAvg_score()*10)/10.0;
				avgboard.setAvg_score(avg_Score);
				rs.setAvgScore(avgboard);
			}
		}
		
		return "reviewDetail";
	}
	
	@RequestMapping(value="JYdelete") //리뷰 게시글 삭제
	public String delete(int bd_num, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		rs.deleteWithReply(bd_num);
		Board board = rs.delete(bd_num);
		model.addAttribute("delete",board);
		return "forward:JYreviewList.do";
	}
	@RequestMapping(value="JYwriteForm") //리뷰 게시글 쓰기
	public String JYwriteForm(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		List<Board> reviewList = rs.reviewListManager();
		model.addAttribute("reviewList", reviewList);
		return "JYwriteForm";
	}

	@RequestMapping(value = "JYwrite"/*, method=RequestMethod.POST*/)
	public String write(int res_num, double res_score, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
	//	rs.insert(board);
		Board board = new Board();
		board.setRes_num(res_num);
		board.setBd_score(res_score);
		
		String res_name = rs.getResName(res_num);
		model.addAttribute("board", board);
		model.addAttribute("res_name", res_name);
		
		List<Board> avgScore= rs.avgScore();
		Iterator<Board> itr1 = avgScore.iterator();
		while (itr1.hasNext()) {
			Board avgboard=itr1.next();
			if((Integer)avgboard.getRes_num()!=null) {
				double avg_Score=Math.round(avgboard.getAvg_score()*10)/10.0;
				avgboard.setAvg_score(avg_Score);
				rs.setAvgScore(avgboard);
			}
		}
		
		return "JYwriteForm";
	}
	
	@RequestMapping(value="JYinsert")
	public String insert(Board board, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		System.out.println("insert Start...");
	    rs.insert(board);
		System.out.println("insert End...");
		
		model.addAttribute("saveMsg", "게시판 입력 성공");	// 모델에 리스트를 넣음
		return "forward:JYreviewList.do";	// 전달
	}
	@RequestMapping(value="JYmemberDetail")
	public String memberDetail(String mb_id, MemberBoard memberBoard, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		System.out.println("JYmemberDetail Start...");
		memberBoard = rs.memberDetail(mb_id);
		model.addAttribute("JYmemberDetail", memberBoard);
		return "reviewmemberDetail";
	}
	@RequestMapping(value="JYreplyWrite") //댓글쓰기
	public String replyWrite(int bd_num, String mb_id, String re_content, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		System.out.println("JYreplyWrite Start...");
		Reply reply = new Reply();
		reply.setBd_num(bd_num);
		reply.setMb_id(mb_id);
		reply.setRe_content(re_content);
		rs.replyWrite(reply);
		
		String result = "redirect:JYreviewDetail.do?bd_num=" + Integer.toString(bd_num);
		return result;
	}
	@RequestMapping(value="JYReplyUpdateForm")//댓글 수정
	public String JYReplyUpdateForm(Reply reply , Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
	      model.addAttribute("JYReplyUpdateForm", reply);
	      return "JYReplyUpdateForm";
	   }
	@RequestMapping(value="JYReplyUpdate")   // 댓글수정완료
	   public String JYReplyUpdate(Model model, Reply reply,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
	      reply = rs.JYReplyUpdate(reply);
	      return "forward:JYreviewDetail.do";
	   }
	
	@RequestMapping(value="JYReplyDelete") //댓글 삭제
	public String JYReplyDelete(Reply reply,HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		rs.JYReplyDelete(reply);
		return "forward:JYreviewDetail.do";
	}	
	@RequestMapping(value="JYupdateForm")   // 게시글 수정
	public String JYupdateForm(int bd_num, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
	    Board board = rs.JYupdateForm(bd_num);
	    model.addAttribute("jyUpdateForm", board);
	      return "jyUpdateForm";
	   }
	@RequestMapping(value="JYupdate")   // 글수정완료
	   public String JYupdate(Model model ,Board board,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);  
		
		board = rs.JYupdate(board);
	      return "forward:JYreviewDetail.do";
	   }
	
	@RequestMapping(value="JYaddLikeCnt")   // 글수정완료
	   public String JYaddLikeCnt(int bd_num, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);  
		
		rs.JYaddLikeCnt(bd_num);
	      return "forward:JYreviewList.do";
	   }
	
	@RequestMapping(value="JYaddLikeCnt2")   // 글수정완료
	   public String JYaddLikeCnt2(int bd_num, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);  
		
		rs.JYaddLikeCnt(bd_num);
	      return "forward:JYreviewDetail.do";
	   }
}

