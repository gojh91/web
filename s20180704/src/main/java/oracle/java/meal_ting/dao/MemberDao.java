package oracle.java.meal_ting.dao;

import java.util.List;

import oracle.java.meal_ting.model.Member;

public interface MemberDao {
	String getMemberIdCheck(Member member);	
	String getMemberPwCheck(Member member);	
	int insert(Member member);
	int idchk(Member member);
	int update(Member member);
	int update2(Member member);
	int update3(Member member);
    int delete(String mb_id);
	Member detail(String mb_id);
    int memberIdCnt(String mb_id);
    int memberNickNameCnt(String mb_nickName);
	List<Member> list(Member member);
	List<Member> memberListSearch(Member member);
	int totalMember();
	int totalMemberKeyword(String keyword);
	Member memberSearch(String mb_nickName);
}
