package go.home.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

		if (checklogin == 1) {
			member = ms.memberdetail(member);
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", member);

			int authority = Integer.parseInt(member.getMb_authority());
			if (authority == 2) {
				result = "forward:memberList.do";
			} else {
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

	@RequestMapping(value = "memberUpdateForm")
	public String memberUpdateForm(HttpServletRequest request, Model model) {

		System.out.println("@RequestMapping(value = \"memberUpdateForm\")");
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");

		model.addAttribute("member", member);

		return "memberUpdateForm";
	}

	@RequestMapping(value = "memberUpdateForm3")
	public String memberUpdateForm3(HttpServletRequest request, String mb_id, Model model) {
		System.out.println("@RequestMapping(value = \"memberUpdateForm3\")");
		String str = "";
		String str2 = "";
		String str3 = "";


		Member member1 = ms.detail(mb_id); 

		nickNameOriginal = member1.getMb_nickName(); 
		System.out.println("memberUpdateForm3 nickNameOriginal->" + nickNameOriginal);

		
		str = member1.getMb_birthDate();
		if (str.length() > 9) {
			member1.setMb_birthDate(str.substring(0, 10));
		}
		System.out.println("memberUpdateForm3 member1.getMb_birthDate()->" + member1.getMb_birthDate());

		str2 = member1.getMb_regDate();
		if (str2.length() > 9) {
			member1.setMb_regDate(str2.substring(0, 10));
		}
		System.out.println("memberUpdateForm3 member1.getMb_regDate()->" + member1.getMb_regDate());

		str3 = member1.getMb_wdDate();
		if (str3 == null) {
			System.out.println("memberUpdateForm3 member1.getMb_wdDate()-> null ");
			member1.setMb_wdDate("");
		} else {
			if (str3.length() > 9) {
				member1.setMb_wdDate(str3.substring(0, 10));
			}
		}
		System.out.println("memberUpdateForm3 member1.getMb_wdDate()->" + member1.getMb_wdDate());

		model.addAttribute("member", member1); 
		model.addAttribute("mb_id", mb_id); 
		return "memberUpdateForm3";
	}

}
