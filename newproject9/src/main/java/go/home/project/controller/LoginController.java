package go.home.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		int checklogin = ms.checklogin(member);//아이디 패스워드 확인
		String result = "login";

		if (checklogin == 1) {
			
			member = ms.memberdetail(member);//로그인 한 사용자 다 가져오기
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", member);//로그인 한 사용자 세션 넣기
			session.setAttribute("checkLogin", checklogin);//로그인 했다는 표시 세션 넣기

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
		int total = ms.totalMember();//회원가입 인원수 가져옴

		MemberPaging pg = new MemberPaging(total, currentPage);
		member.setStart(pg.getStart());//가져올 맴버 시작번호
		member.setEnd(pg.getEnd());//가져올 맴버 끝번호

		List<Member> listMember = ms.listMember(member);//시작~끝번호 맴버 가져옴
		model.addAttribute("listMember", listMember);
		model.addAttribute("pg", pg);
		return "memberList";
	}

	@RequestMapping(value = "memberUpdateForm")
	public String memberUpdateForm(HttpServletRequest request, Model model) {

		System.out.println("@RequestMapping(value = \"memberUpdateForm\")");
		String birthDate = "";
		String regDate = "";
		String wdDate = "";
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		birthDate = member.getMb_birthDate();
		if (birthDate.length() > 9) {
			member.setMb_birthDate(birthDate.substring(0, 10));
		}
		regDate = member.getMb_regDate();
		if (regDate.length() > 9) {
			member.setMb_regDate(regDate.substring(0, 10));
		}
		wdDate = member.getMb_wdDate();
		if (wdDate == null) {
			member.setMb_wdDate("");
		} else {
			if (wdDate.length() > 9) {
				member.setMb_wdDate(wdDate.substring(0, 10));
			}
		}

		model.addAttribute("member", member);

		return "memberUpdateForm";
	}

	@RequestMapping(value = "memberUpdateForm2")
	public String memberUpdateForm3(HttpServletRequest request, String mb_id, Model model) {
		System.out.println("@RequestMapping(value = \"memberUpdateForm2\")");
		String birthDate = "";
		String regDate = "";
		String wdDate = "";
		
		Member member = new Member();
		
		member.setMb_id(mb_id);

		member = ms.memberdetail(member); 
		
		birthDate = member.getMb_birthDate();
		if (birthDate.length() > 9) {
			member.setMb_birthDate(birthDate.substring(0, 10));
		}
		regDate = member.getMb_regDate();
		if (regDate.length() > 9) {
			member.setMb_regDate(regDate.substring(0, 10));
		}
		wdDate = member.getMb_wdDate();
		if (wdDate == null) {
			member.setMb_wdDate("");
		} else {
			if (wdDate.length() > 9) {
				member.setMb_wdDate(wdDate.substring(0, 10));
			}
		}
		model.addAttribute("member", member); 
		return "memberUpdateForm2";
	}
	
	@RequestMapping(value = "memberUpdate", method = RequestMethod.POST)
	public String memberUpdate(HttpServletRequest request, Member member, Model model) {
		System.out.println("@RequestMapping(value = \"memberUpdate\")");

		ms.update(member);//맴버 수정사항 업데이트
		
		return "forward:main.do";
	}
	
	@RequestMapping(value = "memberLogout")
	public String memberUpdate(HttpServletRequest request, Model model) {
		System.out.println("@RequestMapping(value = \"memberLogout\")");

		request.getSession().invalidate();//세션 초기화
		
		return "main.do";
	}
	
}
