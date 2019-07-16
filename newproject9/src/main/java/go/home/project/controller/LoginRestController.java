package go.home.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import go.home.project.model.Member;
import go.home.project.service.MemberService;

@RestController
@RequestMapping("/LoginRest")
public class LoginRestController {
	@Autowired
	private MemberService ms;
	
	@RequestMapping("nickNameChk")
	public int nicknamechk(Model model, HttpServletRequest request, String mb_nickName ) {
		System.out.println("@RequestMapping(value = \"nickNameChk\")");
		int nickcheck = ms.memberNickNameCnt(mb_nickName);//닉네임 중복 갯수
		return nickcheck;
	}
	
	@RequestMapping("idChk")
	public int idChk(Model model, HttpServletRequest request, String mb_id ) {
		System.out.println("@RequestMapping(value = \"idChk\")");
		int idcheck = ms.memberIdCnt(mb_id);//아이디 중복 갯수
		return idcheck;
	}
	
	@RequestMapping(value = "memberIdFind1")
	public String memberIdFind1(Model model, String mb_email, String mb_name, String mb_nickName) {
		System.out.println("@RequestMapping(value = \"memberIdFind1\")");
		Member member = new Member();
		member.setMb_email(mb_email);
		member.setMb_name(mb_name);
		member.setMb_nickName(mb_nickName);
		String findid = ms.idFind(member);
		return findid;
	}
	
	@RequestMapping(value = "memberPwFind1")
	public String memberPwFind1(Model model, String mb_email, String mb_name, String mb_nickName, String mb_id) {
		System.out.println("@RequestMapping(value = \"memberPwFind1\")");
		String result = "";
		Member member = new Member();
		member.setMb_id(mb_id);
		member.setMb_email(mb_email);
		member.setMb_name(mb_name);
		member.setMb_nickName(mb_nickName);
		int findpw = ms.pwFind(member);
		if(findpw == 1) {
			return 
		}
		return "memberPwFind";
	}

}
