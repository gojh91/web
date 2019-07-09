package go.home.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import go.home.project.model.Board;
import go.home.project.model.Member;
import go.home.project.model.Menu;
import go.home.project.model.Reply;
import go.home.project.model.ResInfo;
import go.home.project.model.ResInfoBoard;
import go.home.project.service.MainService;

@Controller
public class MainController {
	@Autowired
	private MainService ms;

	@RequestMapping(value = "main")
	public String MainPage(HttpServletRequest request, Model model) {
		System.out.println("@RequestMapping(value = \"main\")");
		if(request.getSession().getAttribute("checkLogin") != null) {
			//로그인 됬을 때 들어오는 곳
			HttpSession session = request.getSession();
			Member loginMember = (Member)session.getAttribute("loginMember");
			int checkLogin = (Integer)session.getAttribute("checkLogin");
			model.addAttribute("loginMember", loginMember);
			model.addAttribute("checkLogin", checkLogin);
			
			if (Integer.parseInt(loginMember.getMb_authority()) ==2) {
				return "forward:memberList.do";//관리자는 관리자 페이지로 이동
			}		
		}
		return "main";
	}
	
	@RequestMapping(value = "search")
	public String search(String keyword, Model model,HttpServletRequest request) {
		System.out.println("@RequestMapping(value = \"search\")");
		
		/*if(keyword != null && !keyword.isEmpty()) {*/
			List<Menu> menukeyword = ms.searchmenu(keyword);
			int searchmenu = ms.searchmenu1(keyword);
			List<Reply> replykeyword = ms.searchreply(keyword);
			int searchreply = ms.searchreply1(keyword);
			List<Board> boardkeyword = ms.searchboard(keyword);
			int searchboard = ms.searchboard1(keyword);
			List<ResInfo> resinfokeyword = ms.searchresinfo(keyword);
			int searchresinfo = ms.searchresinfo1(keyword);
			List<ResInfoBoard> resinfoboardkeyword = ms.searchresinfoboard(keyword);
			int searchresinfoboard = ms.searchresinfoboard1(keyword);
			
			model.addAttribute("menukeyword", menukeyword);
			model.addAttribute("searchmenu", searchmenu);
			model.addAttribute("replykeyword", replykeyword);
			model.addAttribute("searchreply", searchreply);
			model.addAttribute("boardkeyword", boardkeyword);
			model.addAttribute("searchboard", searchboard);
			model.addAttribute("resinfokeyword", resinfokeyword);
			model.addAttribute("searchresinfo", searchresinfo);
			model.addAttribute("resinfoboardkeyword", resinfoboardkeyword);
			model.addAttribute("searchresinfoboard", searchresinfoboard);
			
			return "search";
		/*}
		
		return null;*/
	}
	
	
	
}


