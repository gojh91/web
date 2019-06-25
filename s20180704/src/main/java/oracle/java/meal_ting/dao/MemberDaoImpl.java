package oracle.java.meal_ting.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.java.meal_ting.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSession session;

    /* SqlSession 객체는 Mapper XML에 등록된 SQL을 실행하기 위한 다양한 API를 제공한다.	
	   selectOne()메소드는  오직 하나의 데이터를 검색하는 SQL 구문을 실행할 때 사용한다.
	   selectList()메소드는 여러 개의 데이터가 검색되는 SQL 구문을 실행할 때 사용한다.
	   
	   insert(), update(), delete() 메소드는 각각 INSERT, UPDATE, DELETE SQL구문을 실행할 때 사용한다.
	     각각의 메소드는 실행된 SQL 구문으로 인해 몇 건의 데이터가 처리되었는지를 Return한다. */

	public String getMemberIdCheck(Member member) {
		return session.selectOne("HSgetMemberIdCheck", member);
	}	

	public String getMemberPwCheck(Member member) {
		return session.selectOne("HSgetMemberPwCheck", member);
	}	
	
	public int insert(Member member) {
		return session.insert("HSmemberInsert", member);
	}
	
	public int idchk(Member member) {
		// member.xml->id(idchk), return int		
		return session.selectOne("idchk", member);  //
	}	

	public int update(Member member) {
		return session.update("HSmemberUpdate", member);
	}

	public int update2(Member member) {
		return session.update("HSmemberUpdate2", member);
	}

	public int update3(Member member) {
		return session.update("HSmemberUpdate3", member);
	}

	public int delete(String mb_id) {
		return session.delete("HSmemberDelete", mb_id);
	}
	
	public Member detail(String mb_id) {
		return session.selectOne("HSmemberDetail", mb_id);
	}
	
	public int memberIdCnt(String mb_id) {
		return session.selectOne("HSmemberIdCnt", mb_id);
	}	
	
	public int memberNickNameCnt(String mb_nickName) {
		return session.selectOne("HSmemberNickNameCnt", mb_nickName);
	}	
	
	public List<Member> list(Member member) {
		// member.xml->id(HSlistALL), parameterType(member), return List
		// member ==> xml에 가지고 들어갈 parameterType(매개변수Type), "HSlistAll" ==> xml에 가지고 들어갈 ID
		return session.selectList("HSlistAll", member);   
	}
	
	public List<Member> memberListSearch(Member member) {
		return session.selectList("HSmemberListSearch", member);   
	}

	public int totalMember() {
		// member.xml->id(totalMember), return int
		return session.selectOne("HStotalMember");
	}	

	public int totalMemberKeyword(String keyword) {
		// member.xml->id(totalMemberKeyword), return int
		return session.selectOne("HStotalMemberKeyword", keyword);
	}	

	public Member memberSearch(String mb_nickName) {
		return session.selectOne("HSmemberSearch", mb_nickName);
	}	
}
