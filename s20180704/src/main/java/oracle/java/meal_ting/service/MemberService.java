package oracle.java.meal_ting.service;

import java.util.List;
import oracle.java.meal_ting.model.Member;

public interface MemberService {
	String	getMemberIdCheck(Member member);       // String으로 반환, 아이디 찾기
	String	getMemberPwCheck(Member member);       // String으로 반환, 비밀번호 찾기
	int 	insert(Member member);                 // int로 반환, 회원가입 등록
	int 	idchk(Member member);	               // int로 반환, 회원가입에서 중복 ID 체크 
	int 	update(Member member);                 // int로 반환, 개인정보 변경  
	int 	update2(Member member);                // int로 반환, 회원탈퇴(Inactive 처리) 
	int		update3(Member member);                // int로 반환, 회원정보 수정 
	int 	delete(String mb_id);	               // int로 반환, 회원정보 삭제
	Member	detail(String mb_id);                  // Member(한줄)로 반환
	int     memberIdCnt(String mb_id);             // int로 반환, 회원가입/개인정보수정/회원정보수정에서 중복 ID 체크
	int     memberNickNameCnt(String mb_nickName); // int로 반환, 회원가입/개인정보수정/회원정보수정에서 중복 nickName 체크
	List<Member> list(Member member);              // List<Member>로 반환, 회원목록(관리자)에서 사용
	List<Member> memberListSearch(Member member);  // List<Member>로 반환, 회원목록(관리자)에서 검색시 사용
	int 	totalMember();	                       // int로 반환, 총 회원수 
	int 	totalMemberKeyword(String keyword);    // int로 반환, Keyword로 조회된 회원수 
	Member  memberSearch(String mb_nickName);      // Member로 반환, 회원정보수정에서 검색  
}
