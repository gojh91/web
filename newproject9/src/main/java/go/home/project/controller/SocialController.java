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
import go.home.project.service.BoardService;

@Controller
public class SocialController {
	@Autowired
	private BoardService bs;

	@RequestMapping(value = "memberBoardSave")
	public String memberBoardSave(Board board, Model model, HttpServletRequest request) {
		bs.memberboardsave(board);
		return "forward:memberBoardList.do";
	}

	@RequestMapping(value = "memberBoardList")
	public String memberBoardList(MemberBoard memberboard, Model model, HttpServletRequest request) {
		System.out.println("@RequestMapping(value = \"memberBoardList\")");
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		List<MemberBoard> memberboardlist = bs.memberboardlist(memberboard);
		model.addAttribute("member", member);
		model.addAttribute("memberboardlist", memberboardlist);
		return "memberBoardList";
	}

	@RequestMapping(value = "boardDetail")
	public String boardDetail(int bd_num, Model model, HttpServletRequest request) {
		System.out.println("@RequestMapping(value = \"boardDetail\")");
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		MemberBoard memberboard = new MemberBoard();
		memberboard = bs.boardmemberdetail(bd_num);
		if (memberboard.getMb_sex().equals("1")) {
			memberboard.setMb_sex("남성");
		}
		if (memberboard.getMb_sex().equals("2")) {
			memberboard.setMb_sex("여성");
		}
		if (memberboard.getMb_sex().equals("9")) {
			memberboard.setMb_sex("비공개");
		}

		ArrayList<String> hashTagList = new ArrayList<>(Arrays.asList(memberboard.getBd_hashTag().split("#")));
		hashTagList.remove(0);
		model.addAttribute("member", member);
		model.addAttribute("hashTagList", hashTagList);
		model.addAttribute("memberboard", memberboard);

		return "boardDetail";
	}
}
