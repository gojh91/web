package go.home.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import go.home.project.model.MemberBoard;
import go.home.project.service.BoardService;

@Controller
public class SocialController {
	@Autowired
	private BoardService bs;
	
	@RequestMapping(value="memberBoardList")
	public String sdList(MemberBoard memberboard, Model model, HttpServletRequest request) {
		System.out.println("@RequestMapping(value = \"memberBoardList\")");
		List<MemberBoard> memberboardlist = bs.memberboardlist(memberboard);
		model.addAttribute("memberboardlist", memberboardlist);
		return "memberBoardList";
	}
	
}
