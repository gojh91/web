package go.home.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import go.home.project.service.MemberService;

@RestController
@RequestMapping("/LoginRest")
public class LoginRestController {
	@Autowired
	private MemberService ms;
	
	@RequestMapping("nickNameChk")
	public int nicknamechk(Model model, HttpServletRequest request, String mb_nickName ) {
		System.out.println("@RequestMapping(value = \"nickNameChk\")");
		int nickcheck = ms.memberNickNameCnt(mb_nickName);
		return nickcheck;
	}

}
