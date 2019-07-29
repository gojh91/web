package go.home.project.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import go.home.project.model.Board;
import go.home.project.model.Member;
import go.home.project.model.MemberBoard;
import go.home.project.model.MemberReply;
import go.home.project.model.Reply;
import go.home.project.service.SocialService;

@Controller
public class SocialController {
	@Autowired
	private SocialService ss;

	@RequestMapping(value = "memberBoardSave") //social 저장
	public String memberBoardSave(Board board, Model model, HttpServletRequest request) {
		System.out.println("@RequestMapping(value = \"memberBoardSave\")");
		ss.memberboardsave(board);
		return "forward:memberBoardList.do";
	}

	@RequestMapping(value = "memberBoardList") //social 리스트
	public String memberBoardList(MemberBoard memberboard, Model model, HttpServletRequest request) {
		System.out.println("@RequestMapping(value = \"memberBoardList\")");
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		List<MemberBoard> memberboardlist = ss.memberboardlist(memberboard);
		model.addAttribute("member", member);
		model.addAttribute("memberboardlist", memberboardlist);
		return "memberBoardList";
	}

	@RequestMapping(value = "boardDetail") //social detail
	public String boardDetail(int bd_num, Model model, HttpServletRequest request) {
		System.out.println("@RequestMapping(value = \"boardDetail\")");
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		
		MemberBoard memberboard = new MemberBoard();
		memberboard = ss.boardmemberdetail(bd_num);
		
		if (memberboard.getMb_sex().equals("1")) {
			memberboard.setMb_sex("남성");
		}
		if (memberboard.getMb_sex().equals("2")) {
			memberboard.setMb_sex("여성");
		}
		if (memberboard.getMb_sex().equals("9")) {
			memberboard.setMb_sex("비공개");
		}

		List<MemberReply> memberreplylist = ss.memberreplylist(bd_num);
		
		ArrayList<String> hashTagList = new ArrayList<>(Arrays.asList(memberboard.getBd_hashTag().split("#")));
		hashTagList.remove(0);
		model.addAttribute("member", member);
		model.addAttribute("hashTagList", hashTagList);
		model.addAttribute("memberboard", memberboard);
		model.addAttribute("memberreplylist", memberreplylist);

		return "boardDetail";
	}
	
	@RequestMapping(value="boardDelete")	// social 삭제
	public String boardDelete(int bd_num, HttpServletRequest request,Model model) {
		System.out.println("@RequestMapping(value = \"boardDelete\")");
		ss.boardDelete(bd_num);
		return "forward:memberBoardList.do";
	}
	
	
	@RequestMapping(value = "boardReplySave") //social 댓글 추가
	public String replySave(Model model, HttpServletRequest request, Reply reply) {
		System.out.println("@RequestMapping(value = \"boardReplySave\")");
		ss.boardreplysave(reply);
		return "forward:boardDetail.do";
	}
	
	@RequestMapping(value="boardReplyDelete")	// social 댓글 삭제
	public String boardReplyDelete(Reply reply, HttpServletRequest request, Model model) {
		System.out.println("@RequestMapping(value = \"boardReplyDelete\")");
		ss.boardreplydelete(reply);
		return "forward:boardDetail.do";
	}
	
	@RequestMapping(value="boardUpdateForm")	// social 수정폼
	public String boardUpdateForm(int bd_num, HttpServletRequest request, Model model) {
		System.out.println("@RequestMapping(value = \"boardUpdateForm\")");
		Board board = ss.board(bd_num); //board 다 가져오기
		model.addAttribute("board", board);
		return "boardUpdateForm";
	}
	
	@RequestMapping(value="boardUpdate")	// social 수정
	public String boardUpdate(Board board, HttpServletRequest request, Model model) {
		System.out.println("@RequestMapping(value = \"boardUpdate\")");
		ss.boardUpdate(board);		
		return "forward:boardDetail.do";
	}
}
