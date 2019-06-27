package go.home.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSpinnerUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import go.home.project.model.Member;
import go.home.project.service.MemberPaging;
import go.home.project.service.MemberService;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService ms;
	
	@RequestMapping(value = "login")
	public String login() {
		System.out.println("@RequestMapping(value = \"login\")");
		return "login";
	}
	
	 @RequestMapping(value = "checkLogin")
	 public String checkLogin(HttpServletRequest request, Model model, Member member) {
		 System.out.println("@RequestMapping(value = \"checkLogin\")");
		 
		 int checklogin = ms.checklogin(member);
		 String result = "login";
		 
		 if(checklogin == 1) {
			 member = ms.memberdetail(member);
			 HttpSession session = request.getSession();
			 session.setAttribute("loginMember", member);
			 
			 int authority = Integer.parseInt(member.getMb_authority());
			 if (authority == 2) {
				 result = "forward:memberList.do";
			 }else {
				 result = "main";
			 }
		 }
		 return result; 
	 }
	 
	 @RequestMapping(value = "memberList")
	 public String memberList(HttpServletRequest request, Member member, String currentPage, Model model) {
		 System.out.println("@RequestMapping(value = \"memberList\")");
		 int total = ms.totalMember();
		 
		 MemberPaging pg = new MemberPaging(total, currentPage);
		 member.setStart(pg.getStart());
		 member.setEnd(pg.getEnd());
		 
		 List<Member> listMember = ms.listMember(member);
		 model.addAttribute("listMember", listMember);
		 model.addAttribute("pg", pg);
		 return "memberList";
	 }
}
