package oracle.java.meal_ting.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.model.MemberBoard;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.MemberReply;
import oracle.java.meal_ting.service.SdBoardService;

@Controller
public class SdBoardController {
	@Autowired
	private SdBoardService bs;
	
	@RequestMapping(value="sdList")	// 메인
	public String sdList(MemberBoard memberBoard, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		List<MemberBoard> sdList = bs.sdList(memberBoard);	// 디비에서 리스트에 객체를 넣음
		
		model.addAttribute("sdList", sdList);	// 모델에 리스트를 넣음
		return "sdList";	// 뷰로
	}
	
	@RequestMapping(value="sdSave")	// 글저장
	public String sdSave(Board board, HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		bs.sdSave(board);
	//	return "redirect:sdList.do";	// 망각
		return "forward:sdList.do";	// 전달
	}
	
	@RequestMapping(value="sdDelete")	// 글삭제
	public String sdDelete(int bd_num, HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		bs.sdDelete(bd_num);
		return "forward:sdList.do";
	}
	
	@RequestMapping(value="sdDetail")	// 글내용
	public String sdDetail(int bd_num, Model model, MemberBoard memberBoard, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		memberBoard = bs.sdMemberDetail(bd_num);
		memberBoard.setBd_num(bd_num);
		model.addAttribute("sdMemberDetail", memberBoard);
		String a="1";
		String b="2";
		String c="9";
		if(memberBoard.getMb_sex().equals(a)) {
			memberBoard.setMb_sex("남자");
		}
		if(memberBoard.getMb_sex().equals(b)) {
			memberBoard.setMb_sex("여자");
		}
		if(memberBoard.getMb_sex().equals(c)) {
			memberBoard.setMb_sex("비공개");
		}
		
		
		Board board = bs.sdDetail(bd_num);
		
		List<String> hashTagList = Arrays.asList(board.getBd_hashTag().split("#"));
		model.addAttribute("hashList", hashTagList);
		
		model.addAttribute("sdDetail", board);
		return "sdDetail";
	}

	@RequestMapping(value="sdUpdateForm")	// 글수정뷰
	public String sdUpdateForm(int bd_num, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		Board board = bs.sdUpdateForm(bd_num);
		model.addAttribute("sdUpdateForm", board);
		return "sdUpdateForm";
	}
	
	@RequestMapping(value="sdUpdate")	// 글수정
	public String sdUpdate(Model model ,Board board, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		board = bs.sdUpdate(board);
		return "forward:sdDetail.do";
	}
	
	@RequestMapping(value="sdReply")	// 댓글
	public String sdReply(int bd_num, MemberReply memberReply, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		List<MemberReply> sdReply = bs.sdReply(memberReply);
		model.addAttribute("sdReply", sdReply);
		model.addAttribute("bd_num" , bd_num);
		return "sdReply";
	}
	
	@RequestMapping(value="sdReplySave")	// 댓글 저장
	public String sdReplySave(int bd_num, Reply reply, HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		bs.sdReplySave(reply);
		return "forward:sdReply.do";
	}
	
	@RequestMapping(value="sdReplyDelete")	// 댓글삭제
	public String sdReplyDelete(Reply reply, HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		bs.sdReplyDelete(reply);
		return "forward:sdReply.do";
	}
	
	@RequestMapping(value="sdReplyUpdateForm")	// 댓글수정뷰
	public String sdReplyUpdateForm(Reply reply , Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		model.addAttribute("sdReplyUpdateForm", reply);
		return "sdReplyUpdateForm";
	}
	
	@RequestMapping(value="sdReplyUpdate")	// 댓글수정
	public String sdReplyUpdate(Model model, Reply reply, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		model.addAttribute("member", member);
		model.addAttribute("loginTF", login);
		
		reply = bs.sdReplyUpdate(reply);
		return "forward:sdReply.do";
	}
}
