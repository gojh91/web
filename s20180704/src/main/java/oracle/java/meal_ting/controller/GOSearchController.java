package oracle.java.meal_ting.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import oracle.java.meal_ting.model.Board;
import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.model.Menu;
import oracle.java.meal_ting.model.Reply;
import oracle.java.meal_ting.model.ResInfo;
import oracle.java.meal_ting.model.ResInfoBoard;
import oracle.java.meal_ting.service.SearchService;

@Controller

public class GOSearchController {
	@Autowired
	private SearchService ss;

	/*
	 * @RequestMapping(value = "search_bar") public String search_bar() {
	 * System.out.println("GOsearch_bar");
	 * 
	 * return "search_bar"; }
	 */

	@RequestMapping(value = "GOsearch")
	public String search(String keyword, Model model, HttpServletRequest request) {
		/* session=request.getSession(); */
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("memberMe");
		Boolean login = (Boolean) session.getAttribute("login");
		
			if (keyword != null && !keyword.isEmpty()) {
				System.out.println("GOsearch");
				List<Menu> menukeyword = ss.searchmenu(keyword);
				int searchmenu = ss.searchmenu1(keyword);
				List<Reply> replykeyword = ss.searchreply(keyword);
				int searchreply = ss.searchreply1(keyword);
				List<Board> boardkeyword = ss.searchboard(keyword);
				int searchboard = ss.searchboard1(keyword);
				List<ResInfo> resinfokeyword = ss.searchresinfo(keyword);
				int searchresinfo = ss.searchresinfo1(keyword);
				List<ResInfoBoard> resinfoboardkeyword = ss.searchresinfoboard(keyword);
				int searchresinfoboard = ss.searchresinfoboard1(keyword);
				/* List<Member> memberkeyword=ss.searchmember(keyword); */
				
				model.addAttribute("member", member);
				model.addAttribute("loginTF", login);
				System.out.println("login : "+login);

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
				/* model.addAttribute("memberkeyword",memberkeyword); */
				return "search";
			} else {
				model.addAttribute("member", member);
				model.addAttribute("loginTF", login);
				System.out.println("login : "+login);
				return "search";
			}
		
	}

}
