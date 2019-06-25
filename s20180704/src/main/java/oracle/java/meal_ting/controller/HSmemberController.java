package oracle.java.meal_ting.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oracle.java.meal_ting.model.Member;
import oracle.java.meal_ting.service.MemberPaging;
import oracle.java.meal_ting.service.MemberService;

@Controller
public class HSmemberController {

	@Autowired
	private MemberService ms;
	String nickNameOriginal = "";
	String pwOriginal = "";
	@Autowired
	private HSCheckMember hsc;


	@RequestMapping(value = "HSLogin")
	public String HSLogin() {
		System.out.println("________________HSLogin ________________");
		return "login";
	}

	@RequestMapping(value = "HSCheckLogin")
	public String HSCheckLogin(HttpServletRequest request, Member member, Model model) {
		System.out.println(member.getMb_id());
		System.out.println(member.getMb_pw());
		String result = hsc.checkLoginWithFailType(member, model);
		HttpSession session = request.getSession();
		if(result.equals("success")) {
			
			Member loginMember = ms.detail(member.getMb_id());
			session.setAttribute("memberMe", loginMember); // 세션에 로그인 정보 저장
			session.setAttribute("login", true); // 세션에 로그인 저장
			model.addAttribute("member", loginMember);
			model.addAttribute("login", true);
			model.addAttribute("loginTF", true);
			result = "redirect:Main.do";
		}else {
			
			session.setAttribute("login", false); // 세션에 로그인 저장
			model.addAttribute("login", false);
			model.addAttribute("loginTF", false);
		}
		return result;
	}

	// 로그아웃
	@RequestMapping(value = "memberLogout")
	public String empLogout(HttpServletRequest request, Model model) {
		// 로그아웃 누를 경우 로그인 화면으로 이동
		HttpSession session = request.getSession();

		session.removeAttribute("memberMe");

		session.setAttribute("login", false);

		model.addAttribute("login", false);
		model.addAttribute("loginTF", false);

		return "redirect:HSLogin.do";
	}

	// 아이디 찾기
	@RequestMapping(value = "memberIdFind")
	public String memberIdFind(Model model) {
		System.out.println("______________memberIdFind______________");
		return "memberIdFind";
	}

	@RequestMapping(value = "memberIdCheck")
	public String memberIdCheck(String mb_nickName, String mb_name, String mb_email, Model model) {
		System.out.println("______________memberIdCheck_____________");
		System.out.println("memberIdCheck input한  자료->" + mb_nickName + "/" + mb_name + "/" + mb_email);
		Member member = new Member();
		member.setMb_nickName(mb_nickName);
		member.setMb_name(mb_name);
		member.setMb_email(mb_email);
		String id = ms.getMemberIdCheck(member);
		model.addAttribute("id", id);
		return "memberIdResult";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "memberPwFind")
	public String memberPwFind(Model model) {
		System.out.println("______________memberPwFind______________");
		return "memberPwFind";
	}

	@RequestMapping(value = "memberPwCheck")
	public String memberPwCheck(String mb_id, String mb_nickName, String mb_name, String mb_email, Model model) {
		System.out.println("______________memberPwCheck_____________");
		System.out.println("memberPwCheck input한  자료->" + mb_id + "/" + mb_nickName + "/" + mb_name + "/" + mb_email);
		Member member = new Member();
		member.setMb_id(mb_id);
		member.setMb_nickName(mb_nickName);
		member.setMb_name(mb_name);
		member.setMb_email(mb_email);
		String pw = ms.getMemberPwCheck(member);
		model.addAttribute("pw", pw);
		return "memberPwResult";
	}

	// 회원가입 등록 Form
	@RequestMapping(value = "memberWriteForm")
	public String memberWriteForm(Model model) {
		System.out.println("_____________memberWriteForm____________");
		return "memberWriteForm";
	}
	// mb_birthDate을 model에서 Date로 선언하면, "HTTP Status 400 -
	// The request sent by the client was syntactically incorrect" 라는 Error가 생긴다.
	// 해결방법: Date대신 String으로 선언해야 한다.
	// 회원정보 등록 저장

	@RequestMapping(value = "memberWrite", method = RequestMethod.GET)
	public String memberWrite(Member member, Model model) {
		String mNickName = "";
		String str = "";
		int checkIdResult = 0;
		int checkNickNameResult = 0;
		int checkInsertResult = 0;

		System.out.println("_______________memberWrite______________");
		System.out.println("memberWrite member.getMb_id()->" + member.getMb_id());
		System.out.println("memberWrite member.getMb_pw()->" + member.getMb_pw());

		mNickName = member.getMb_nickName(); // member을 통해 login에서 입력받은 nickName을 전역변수 mNickName에 저장
		System.out.println("memberWrite mNickName->" + mNickName);

		// 중복 아이디 체크
		System.out.println("memberWrite ms.memberIdCnt 체크전");
		checkIdResult = ms.memberIdCnt(member.getMb_id()); // DB에서 member Id count 체크

		if (checkIdResult > 0) {
			System.out.println("memberWrite -> 사용중인 아이디입니다. 다른 아이디를 사용하세요");
			model.addAttribute("msg", "사용중인 아이디입니다. 다른 아이디를 사용하세요");
			return "forward:memberWriteForm.do";
		}

		// 중복 닉네임 체크
		System.out.println("memberWrite ms.memberNickNameCnt 체크전");
		checkNickNameResult = ms.memberNickNameCnt(mNickName); // DB에서 member NickName count 체크

		if (checkNickNameResult > 0) {
			System.out.println("memberWrite -> 사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
			model.addAttribute("msg", "사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
			return "forward:memberWriteForm.do";
		}

		// 생년월일을 가져오지 못해서, 2018-05-01 00:00:00 --> 2018-05-01로 짜르기(시분초 제거)
		str = member.getMb_birthDate();
		if (str.length() > 9) {
			member.setMb_birthDate(str.substring(0, 10));
		}
		System.out.println("member.getMb_birthDate()->" + member.getMb_birthDate());

		System.out.println("memberWrite insert Before");
		checkInsertResult = ms.insert(member); // Insert 처리
		if (checkInsertResult > 0) {
			System.out.println("memberWrite insert Success..");
			model.addAttribute("member", member);
			return "HSCheckLogin.do";
		} else {
			model.addAttribute("msg", "입력 실패 확인해 보세요");
			return "forward:memberWriteForm.do";
		}
	}

	// 회원가입에서 중복 아이디 체크
	@RequestMapping(value = "confirmId")
	public String confirmId(String mb_id, String mb_nickName, Model model) {
		int result = 0;
		System.out.println("_________________confirmId________________");
		System.out.println("confirmId mb_id->" + mb_id);
		System.out.println("confirmId mb_nickName->" + mb_nickName);

		model.addAttribute("mb_id", mb_id);
		model.addAttribute("mb_nickName", mb_nickName);

		// 중복 아이디 체크
		result = ms.memberIdCnt(mb_id); // DB에서 member Id count 체크
		if (result > 0) {
			System.out.println("confirmId -> 사용중인 아이디입니다. 다른 아이디를 사용하세요");
			model.addAttribute("msg", "사용중인 아이디입니다. 다른 아이디를 사용하세요");
			return "forward:memberWriteForm.do";
		}
		model.addAttribute("msg", "사용 가능한 아이디입니다");
		return "forward:memberWriteForm.do";
	}

	// 회원가입에서 중복 닉네임 체크
	@RequestMapping(value = "confirmNickName")
	public String confirmNickName(String mb_id, String mb_nickName, Model model) {
		int result = 0;
		System.out.println("_________________confirmNickName________________");
		System.out.println("confirmNickName mb_id->" + mb_id);
		System.out.println("confirmNickName mb_nickName->" + mb_nickName);
		System.out.println("confirmNickName nickNameOriginal->" + nickNameOriginal);

		model.addAttribute("mb_id", mb_id);
		model.addAttribute("mb_nickName", mb_nickName);

		// 중복 닉네임 체크
		result = ms.memberNickNameCnt(mb_nickName); // DB에서 member NickName count 체크
		if (result > 0) {
			System.out.println("confirmNickName -> 사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
			model.addAttribute("msg", "사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
			return "forward:memberWriteForm.do";
		}
		model.addAttribute("msg", "사용 가능한 닉네임입니다");
		return "forward:memberWriteForm.do";
	}

	// 개인정보변경에서 중복 닉네임 체크
	@RequestMapping(value = "confirmNickName2")
	public String confirmNickName2(String mb_id, String mb_nickName, Model model) {
		int result = 0;
		System.out.println("_________________confirmNickName2________________");
		System.out.println("confirmNickName2 mb_id->" + mb_id);
		System.out.println("confirmNickName2 mb_nickName->" + mb_nickName);
		System.out.println("confirmNickName2 nickNameOriginal->" + nickNameOriginal);

		model.addAttribute("mb_nickName", mb_nickName);

		// 중복 닉네임 체크
		if (!mb_nickName.equals(nickNameOriginal)) {
			result = ms.memberNickNameCnt(mb_nickName); // DB에서 member NickName count 체크
			if (result > 0) {
				System.out.println("confirmNickName2 -> 사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
				model.addAttribute("msg", "사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
				return "forward:memberUpdateForm.do";
			}
		}
		model.addAttribute("msg", "사용 가능한 닉네임입니다");
		return "forward:memberUpdateForm.do";
	}

	// 회원정보수정에서 중복 닉네임 체크
	@RequestMapping(value = "confirmNickName3")
	public String confirmNickName3(String mb_id, String mb_nickName, Model model) {
		int result = 0;
		System.out.println("confirmNickName3 mb_id->" + mb_id);
		System.out.println("confirmNickName3 mb_nickName->" + mb_nickName);
		model.addAttribute("mb_nickName", mb_nickName);
		// 중복 닉네임 체크
		if (!mb_nickName.equals(nickNameOriginal)) {
			result = ms.memberNickNameCnt(mb_nickName); // DB에서 member NickName count 체크
			if (result > 0) {
				System.out.println("confirmNickName2 -> 사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
				model.addAttribute("msg", "사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
				return "forward:memberUpdateForm3.do";
			}
		}
		model.addAttribute("msg", "사용 가능한 닉네임입니다");
		return "forward:memberUpdateForm3.do";
	}

	// 개인(내)정보 변경 Form
	@RequestMapping(value = "memberUpdateForm")
	public String memberUpdateForm(HttpServletRequest request, Model model) {

		System.out.println("_____________memberUpdateForm____________");
		HttpSession session = request.getSession();
		Member member1 = (Member) session.getAttribute("memberMe");

		System.out.println("memberUpdateForm member1.getMb_id()->" + member1.getMb_id());
		nickNameOriginal = member1.getMb_nickName(); // nickName을 전역변수 nickNameOriginal에 저장
		System.out.println("memberUpdateForm nickNameOriginal->" + nickNameOriginal);
		pwOriginal = member1.getMb_pw(); // PW를 전역변수 pwOriginal에 저장
		System.out.println("memberUpdateForm pwOriginal->" + pwOriginal);

		// 생년월일을 가져오지 못해서, 2018-05-01 00:00:00 --> 2018-05-01로 짜르기(시분초 제거)
		String str = member1.getMb_birthDate();
		if (str.length() > 9) {
			member1.setMb_birthDate(str.substring(0, 10));
		}
		System.out.println("member1.getMb_birthDate()->" + member1.getMb_birthDate());

		model.addAttribute("member", member1); // member에 담는다
		model.addAttribute("nickNameOriginal", nickNameOriginal);
		model.addAttribute("pwOriginal", pwOriginal);
		
		return "memberUpdateForm";
	}

	// 개인(내)정보 변경 저장
	@RequestMapping(value = "memberUpdate", method = RequestMethod.POST)
	public String memberUpdate(HttpServletRequest request, Member member, Model model) {
		int result = 0;
		String mNickName = "";
		
		System.out.println("_______________memberUpdate______________");
		
		mNickName = member.getMb_nickName(); // member을 통해 입력받은 nickName을 전역변수 mNickName에 저장
		
		System.out.println("memberUpdate getMb_authority->" + member.getMb_authority());
		System.out.println("memberUpdate mNickName->" + mNickName);
		System.out.println("memberUpdate nickNameOriginal->" + nickNameOriginal);

		// 중복 닉네임 체크
		if (!mNickName.equals(nickNameOriginal)) {
			result = ms.memberNickNameCnt(mNickName); // DB에서 member NickName count 체크
			if (result > 0) {
				System.out.println("memberUpdate -> 사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
				model.addAttribute("msg", "사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
				return "forward:memberUpdateForm.do";
			}
		}

		int k = ms.update(member); // Update 처리
		
		System.out.println("ms.update(member) CNT->" + k);
		
		HttpSession session = request.getSession();
		System.out.println("session after..");
		System.out.println("member.getMb_name() Before ->"+member.getMb_name());
	
		session.setAttribute("memberMe", member);
		System.out.println("member.getMb_name() After...->"+member.getMb_name());
		
		return "forward:Main.do";
	}

	// 회원탈퇴 Form
	@RequestMapping(value = "memberWithdrawalForm")
	public String memberWithdrawalForm(HttpServletRequest request, Model model) {
		System.out.println("_____________memberWithdrawalForm____________");
		
		HttpSession session = request.getSession();
		Member member1 = (Member) session.getAttribute("memberMe");
		model.addAttribute("mb_id", member1.getMb_id());
		
		return "memberWithdrawalForm";
	}

	// 회원탈퇴 저장
	@RequestMapping(value = "memberWithdrawal", method = RequestMethod.POST)
	public String memberWithdrawal(HttpServletRequest request, Member member, Model model) {

		HttpSession session = request.getSession();
		Member member1 = (Member) session.getAttribute("memberMe");
		
		System.out.println("_______________memberWithdrawal______________");
		System.out.println("memberWithdrawal nickNameOriginal->" + nickNameOriginal);

		int k = ms.update2(member1); // Update2(Inactive) 처리
		System.out.println("ms.update2(member1) CNT->" + k);

		model.addAttribute("memberMe", member1);

		/*return "Main.do";*/
		return "forward:Main.do";
		/*redirect:list.do*/
	}

	// 회원목록(관리자)
	@RequestMapping(value = "memberList")
	public String memberList(HttpServletRequest request, Member member, String currentPage, Model model) {
		int total = ms.totalMember(); // 총 회원수 조회

		System.out.println("________________memberList_______________");
		System.out.println("memberList total->" + total);
		System.out.println("memberList currentPage->" + currentPage);
		// 14 NULL(0,1....)

		MemberPaging pg = new MemberPaging(total, currentPage);
		member.setStart(pg.getStart()); // 시작시 1
		member.setEnd(pg.getEnd()); // 시작시 10
		System.out.println("memberList pg.getStart->" + pg.getStart());
		System.out.println("memberList pg.getEnd->" + pg.getEnd());

		HttpSession session = request.getSession();
		Member member1 = (Member) session.getAttribute("memberMe");
		
		model.addAttribute("mb_nickName", member1.getMb_nickName());

		List<Member> list = ms.list(member); // 회원목록(관리자) 조회 처리
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		return "memberList";
	}

	// 검색 결과에 따른 모든 내용 보여주기
	@RequestMapping(value = "memberListSearch", method = RequestMethod.GET)
	public String memberListSearch(Member member, String currentPage, HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		Member member1 = (Member) session.getAttribute("memberMe");
		
		System.out.println("________________memberListSearch_______________");

		String keyword = request.getParameter("keywordSearch"); // 키워드 가져오기
		member.setKeyword(keyword);
		System.out.println("memberListSearch keyword ->" + keyword);

		int total = ms.totalMemberKeyword(keyword); // Keyword로 회원수 조회
		System.out.println("memberListSearch 조회된 회원수 ->" + total);
		System.out.println("memberListSearch currentPage->" + currentPage);
		// 14 NULL(0,1....)
		MemberPaging pg = new MemberPaging(total, currentPage);
		member.setStart(pg.getStart()); // 시작시 1
		member.setEnd(pg.getEnd()); // 시작시 10
		System.out.println("memberListSearch pg.getStart->" + pg.getStart());
		System.out.println("memberListSearch pg.getEnd->" + pg.getEnd());

		model.addAttribute("mb_nickName", member1.getMb_nickName());

		List<Member> list = ms.memberListSearch(member); // 회원목록(관리자)에서 검색사용시 조회 처리
		total = list.size();

		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		model.addAttribute("keywordSearch", keyword); // keywordSearch가 없어져서 다시 저장해준다.
		return "memberList";
	}

	// 회원목록 상단바(관리자)
	@RequestMapping(value = "getHeader", produces = "application/text;charset=UTF-8")
	public String getHeader(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		Member member1 = (Member) session.getAttribute("memberMe");
		
		System.out.println("getHeader mb_nickName ->" + member1.getMb_nickName());
		model.addAttribute("mb_nickName", member1.getMb_nickName());
		
		return "memberHeaderForm";
	}

	// 회원목록 사이드바(관리자)
	@RequestMapping(value = "getSide")
	public String getSide(HttpServletRequest request, Model model) {
		// 좌측 메뉴 받아서 올리기
		HttpSession session = request.getSession(true);
		Member member = (Member) session.getAttribute("memberMe");
		System.out.println("getSide mb_id ->" + member.getMb_id());
		model.addAttribute("member", member);
		return "memberSideForm";
	}

	// 회원목록(관리자)의 회원정보(Detail) 조회
	@RequestMapping(value = "memberDetail")
	public String detail(String mb_id, Model model, HttpServletRequest request) {
		System.out.println("_______________memberDetail______________");
		Member member = ms.detail(mb_id);
		model.addAttribute("member", member);
		return "memberDetail";
	}

	// 회원정보 수정 Form(관리자)
	@RequestMapping(value = "memberUpdateForm3")
	public String memberUpdateForm3(HttpServletRequest request, String mb_id, Model model) {
		Member member1;
		String str = "";
		String str2 = "";
		String str3 = "";

		System.out.println("_____________memberUpdateForm3____________");
		System.out.println("memberUpdateForm3 mb_id->" + mb_id);

		member1 = ms.detail(mb_id); // DB자료 - Detail

		nickNameOriginal = member1.getMb_nickName(); // nickName을 전역변수 nickNameOriginal에 저장
		System.out.println("memberUpdateForm3 nickNameOriginal->" + nickNameOriginal);

		// 날짜가 String형인 생년월일을 가져오지 못해서,YYYY-MM-DD로 로 짜르기(시분초 제거) ex) 2018-05-01 00:00:00
		// --> 2018-05-01
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

		model.addAttribute("member", member1); // member에 담는다
		model.addAttribute("mb_id", mb_id); // member에 담는다
		return "memberUpdateForm3";
	}

	// 회원정보 수정 저장(관리자)
	@RequestMapping(value = "memberUpdate3", method = RequestMethod.POST)
	public String memberUpdate3(Member member, Model model) {
		int result = 0;
		String mNickName = "";

		System.out.println("_______________memberUpdate3______________");
		System.out.println("memberUpdate3 member.getMb_regDate()->" + member.getMb_regDate());

		mNickName = member.getMb_nickName(); // member을 통해 입력받은 nickName
		System.out.println("memberUpdate3 mNickName->" + mNickName);
		System.out.println("memberUpdate3 nickNameOriginal->" + nickNameOriginal);

		if (!mNickName.equals(nickNameOriginal)) {
			System.out.println("중복 닉네임 체크->" + mNickName);
			result = ms.memberNickNameCnt(mNickName); // DB에서 member NickName count 체크
			if (result > 0) {
				System.out.println("memberUpdate3 -> 사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
				model.addAttribute("msg", "사용중인 닉네임입니다. 다른 닉네임를 사용하세요");
				return "forward:memberUpdateForm3";
			}
		}

		int k = ms.update3(member); // Update 처리
		System.out.println("ms.update3(member) CNT->" + k);

		mNickName = member.getMb_nickName();
		model.addAttribute("memberMe", member);
		return "forward:memberList.do";
	}

	// 회원정보수정에서 검색
	@RequestMapping(value = "memberSearch", method = RequestMethod.GET)
	public String memberSearch(String keywordSearch, Model model, HttpServletRequest request) {
		// keyword로 정보 찾기
		System.out.println("_______________memberSearch______________");
		System.out.println("memberSearch keywordSearch->" + keywordSearch);
		Member member = new Member();
		member.setMb_nickName(keywordSearch);

		member = ms.memberSearch(keywordSearch); // nickName으로 id을 select

		// 로그인한 유저
		HttpSession session = request.getSession(true);
		Member member1 = (Member) session.getAttribute("memberMe");
		System.out.println("memberSearch memberMe 로그온 아이디->" + member1.getMb_id());
		System.out.println("memberSearch memberMe 로그온 닉네임->" + member1.getMb_nickName());
		System.out.println("memberSearch memberMe 로그온 이름->" + member1.getMb_name());

		if (member == null) {
			// 검색결과가 다른 경우, 로그인 유저로 화면 복귀
			model.addAttribute("member", member1);
			model.addAttribute("err", "memberSearchErr");
			return "memberErr";
		} else {
			// 검색 결과 일치한 경우
			String memberId = member.getMb_id();
			System.out.println("일치->" + memberId);
			// model.addAttribute("memberMe", member1);
			request.setAttribute("mb_id", memberId); // controller 메서드끼리 자료 전달에서 담기
			return "forward:memberUpdateForm4.do";
		}
	}

	// 회원정보 수정 Form(관리자)
	@RequestMapping(value = "memberUpdateForm4")
	public String memberUpdateForm4(HttpServletRequest request, Model model) {
		Member member1;
		String str = "";
		String str2 = "";
		String str3 = "";
		String mb_id = "";

		mb_id = (String) request.getAttribute("mb_id"); // controller 메서드끼리 자료 전달에서 얻기
		System.out.println("_____________memberUpdateForm4____________");
		System.out.println("memberUpdateForm4 mb_id->" + mb_id);

		HttpSession session = request.getSession();
		member1 = ms.detail(mb_id); // DB자료 - Detail
		session.setAttribute("memberMe", member1); // 세션에 로그인 정보 저장
		nickNameOriginal = member1.getMb_nickName(); // nickName을 전역변수 nickNameOriginal에 저장
		System.out.println("memberUpdateForm4 nickNameOriginal->" + nickNameOriginal);

		// 날짜가 String형인 생년월일을 가져오지 못해서,YYYY-MM-DD로 로 짜르기(시분초 제거) ex) 2018-05-01 00:00:00
		// --> 2018-05-01
		str = member1.getMb_birthDate();
		if (str.length() > 9) {
			member1.setMb_birthDate(str.substring(0, 10));
		}
		System.out.println("memberUpdateForm4 member1.getMb_birthDate()->" + member1.getMb_birthDate());

		str2 = member1.getMb_regDate();
		if (str2.length() > 9) {
			member1.setMb_regDate(str2.substring(0, 10));
		}
		System.out.println("memberUpdateForm4 member1.getMb_regDate()->" + member1.getMb_regDate());

		str3 = member1.getMb_wdDate();
		if (str3 == null) {
			System.out.println("memberUpdateForm4 member1.getMb_wdDate()-> null ");
			member1.setMb_wdDate("");
		} else {
			if (str3.length() > 9) {
				member1.setMb_wdDate(str3.substring(0, 10));
			}
		}
		System.out.println("memberUpdateForm4 member1.getMb_wdDate()->" + member1.getMb_wdDate());

		model.addAttribute("member", member1); // member에 담는다
		model.addAttribute("mb_id", mb_id); // member에 담는다
		return "memberUpdateForm3";
	}

	// 회원정보 삭제 Form(관리자)
	@RequestMapping(value = "memberDeleteForm")
	public String memberDeleteForm(HttpServletRequest request, String mb_id, Model model) {
		Member member1;
		System.out.println("_____________memberDeleteForm____________");
		System.out.println("memberDeleteForm mb_id()->" + mb_id);
		HttpSession session = request.getSession();
		member1 = ms.detail(mb_id); // DB자료 - Detail
		session.setAttribute("memberMe", member1); // 세션에 로그인 정보 저장
		model.addAttribute("member", member1); // member에 담는다
		model.addAttribute("mb_id", mb_id); // member에 담는다
		return "memberDeleteForm";
	}

	// 회원정보 삭제(관리자)
	@RequestMapping(value = "memberDelete")
	public String memberDelete(String mb_id, Model model) {
		System.out.println("_______________memberDelete______________");
		System.out.println("memberDelete mb_id()->" + mb_id);
		int k = ms.delete(mb_id); // Delete 처리
		System.out.println("ms.delete(mb_id) CNT->" + k);
		return "redirect:memberList.do";
	}

}
