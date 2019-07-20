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

	@Override
	public void update(Member member) {
		// TODO Auto-generated method stub
		md.update(member);
	}

	@Override
	public int memberIdCnt(String mb_id) {
		// TODO Auto-generated method stub
		return md.memberIdCnt(mb_id);
	}

	@Override
	public void insert(Member member) {
		// TODO Auto-generated method stub
		md.insert(member);
	}

	@Override
	public void memberdelete(String mb_id) {
		// TODO Auto-generated method stub
		md.memberdelete(mb_id);
	}

	@Override
	public String idFind(Member member) {
		// TODO Auto-generated method stub
		return md.idFind(member);
	}
	
	@Override
	public int pwFind(Member member) {
		// TODO Auto-generated method stub
		return md.pwFind(member);
	}

	@Override
	public void changepw(Member member) {
		// TODO Auto-generated method stub
		md.changepw(member);
		
	}

}
