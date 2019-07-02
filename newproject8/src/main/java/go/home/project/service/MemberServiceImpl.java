package go.home.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import go.home.project.dao.MemberDao;
import go.home.project.model.Member;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao md;
	
	public int checklogin(Member member) {
		return md.checklogin(member);
	}
	
	public Member memberdetail(Member member) {
		return md.memberdetail(member);
	}
	
	public int totalMember() {
		return md.totalMember();
	}

	@Override
	public List<Member> listMember(Member member) {
		// TODO Auto-generated method stub
		return md.listMember(member);
	}
	
	public int memberNickNameCnt(String mb_nickName) {
		return md.memberNickNameCnt(mb_nickName);
	}

}
