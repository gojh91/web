package go.home.project.dao;

import java.util.List;

import go.home.project.model.Member;

public interface MemberDao {
	int checklogin(Member member);
	Member memberdetail(Member member);
	int totalMember();
	List<Member> listMember(Member member);
	int memberNickNameCnt(String mb_nickName);
}
