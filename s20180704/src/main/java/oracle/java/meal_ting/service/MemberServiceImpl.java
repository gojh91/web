package oracle.java.meal_ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oracle.java.meal_ting.dao.MemberDao;
import oracle.java.meal_ting.model.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao md;

	public String getMemberIdCheck(Member member) {
		return md.getMemberIdCheck(member);
	}	

	public String getMemberPwCheck(Member member) {
		return md.getMemberPwCheck(member);
	}	
	
	public int insert(Member member) {
		return md.insert(member);
	}	
	
	// ed->MemberDaoImpl
	public int idchk(Member member) {
		return md.idchk(member);
	}	

	public int update(Member member) {
		return md.update(member);
	}

	public int update2(Member member) {
		return md.update2(member);
	}

	public int update3(Member member) {
		return md.update3(member);
	}
	
	// ed->EmpDaoImpl 
	public int delete(String mb_id) {
		return md.delete(mb_id);
	}	
	
	// ed->MemberDaoImpl
	public Member detail(String mb_id) {
		return md.detail(mb_id);
	}	

	// ed->MemberDaoImpl
	public int memberIdCnt(String mb_id) {
		return md.memberIdCnt(mb_id);
	}	
	
	// ed->MemberDaoImpl
	public int memberNickNameCnt(String mb_nickName) {
		return md.memberNickNameCnt(mb_nickName);
	}	
	
	// ed->MemberDaoImpl
	public List<Member> list(Member member) {
		return md.list(member);
	}

	// ed->MemberDaoImpl
	public List<Member> memberListSearch(Member member) {
		return md.memberListSearch(member);
	}
	
	// ed->EmpDaoImpl 
	public int totalMember() {
		return md.totalMember();
	}	

	// ed->EmpDaoImpl 
	public int totalMemberKeyword(String keyword) {
		return md.totalMemberKeyword(keyword);
	}	
	
	public Member memberSearch(String mb_nickName) {
		return md.memberSearch(mb_nickName);
	}	
	
}
