package oracle.java.meal_ting.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.service.MemberService;

@Repository
public class HSCheckMember {
	@Autowired
	private MemberService ms;

	public boolean checkLogin(HttpServletRequest request) {
		
		Boolean login;
		if(request.getSession(false).getAttribute("login") != null) {
			System.out.println("checkLogin True");
			HttpSession session = request.getSession(true);
			login = (Boolean) session.getAttribute("login"); // 세션에 로그인 저장
		}
		else{
			System.out.println("checkLogin false");
			login = false;
		}
		if (login)
			return login;
		else
			return false;
	}

	public String checkAutority(Member member) {
		System.out.println("checkAutority Start....");
		String result = "";
		if (member == null) {
			System.out.println("옙 , member가 null 이네요");
		}
		String mAuthority = member.getMb_authority(); // member을 통해 받은 작업권한(1:일반사용자 2:관리자)
		System.out.println("checkAutority member.getMb_name()->"+member.getMb_name());
		System.out.println("checkAutority member.getMb_authority()->"+mAuthority);
		if (mAuthority.equals("2")) {
			result = "forward:memberList.do";
		} else if (mAuthority.equals("1")) {
			result = "main";
		}
		return result;
	}

	public String checkLoginWithFailType(Member member, Model model) {
		int idflag = ms.idchk(member);
		String result = "";
		
		switch (idflag) {
		case 1:
			model.addAttribute("FailType", "success");
			System.out.println("login success");
			result = "success";
			break;

		case -1:
			model.addAttribute("FailType", "false_id");
			System.out.println("login fail : id doesn't match");
			result = "redirect:HSLogin.do";
			break;

		case -2:
			model.addAttribute("FailType", "false_pw");
			System.out.println("login fail : pw doesn't match");
			result = "redirect:HSLogin.do";
			break;

		case -3:
			model.addAttribute("FailType", "false_active");
			System.out.println("login fail : leaving member");
			result = "redirect:HSLogin.do";
			break;
		}

		return result;
	}
}
