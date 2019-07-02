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
	
//	@RequestMapping(value = "memberUpdate", method = RequestMethod.POST)
//	public String memberUpdate(HttpServletRequest request, Member member, Model model) {
//		int result = 0;
//		String mNickName = "";
//		
//		System.out.println("_______________memberUpdate______________");
//		
//		mNickName = member.getMb_nickName(); // member�쓣 �넻�빐 �엯�젰諛쏆� nickName�쓣 �쟾�뿭蹂��닔 mNickName�뿉 ���옣
//		
//		System.out.println("memberUpdate getMb_authority->" + member.getMb_authority());
//		System.out.println("memberUpdate mNickName->" + mNickName);
//		System.out.println("memberUpdate nickNameOriginal->" + nickNameOriginal);
//
//		// 以묐났 �땳�꽕�엫 泥댄겕
//		if (!mNickName.equals(nickNameOriginal)) {
//			result = ms.memberNickNameCnt(mNickName); // DB�뿉�꽌 member NickName count 泥댄겕
//			if (result > 0) {
//				System.out.println("memberUpdate -> �궗�슜以묒씤 �땳�꽕�엫�엯�땲�떎. �떎瑜� �땳�꽕�엫瑜� �궗�슜�븯�꽭�슂");
//				model.addAttribute("msg", "�궗�슜以묒씤 �땳�꽕�엫�엯�땲�떎. �떎瑜� �땳�꽕�엫瑜� �궗�슜�븯�꽭�슂");
//				return "forward:memberUpdateForm.do";
//			}
//		}
//
//		int k = ms.update(member); // Update 泥섎━
//		
//		System.out.println("ms.update(member) CNT->" + k);
//		
//		HttpSession session = request.getSession();
//		System.out.println("session after..");
//		System.out.println("member.getMb_name() Before ->"+member.getMb_name());
//	
//		session.setAttribute("memberMe", member);
//		System.out.println("member.getMb_name() After...->"+member.getMb_name());
//		
//		return "forward:Main.do";
//	}

}
