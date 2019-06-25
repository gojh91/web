<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<h2>회원 정보</h2>
<table>
	<tr><th>아이디</th><td>${member.mb_id }</td></tr>
	<tr><th>닉네임</th><td>${member.mb_nickName }</td></tr>
	<tr><th>비밀번호</th><td>${member.mb_pw }</td></tr>
	<tr><th>성명</th><td>${member.mb_name }</td></tr>
	<tr><th>사진저장경로</th><td>${member.mb_imgSrc }</td></tr>
	<tr><th>성별</th><td>${member.mb_sex }</td></tr>
	<tr><th>전화번호</th><td>${member.mb_phone }</td></tr>
	<tr><th>생년월일</th><td>${member.mb_birthDate }</td></tr>
	<tr><th>이메일</th><td>${member.mb_email }</td></tr>
	<tr><th>우편번호</th><td>${member.mb_postCode }</td></tr>
	<tr><th>주소</th><td>${member.mb_addr1 }</td></tr>
	<tr><th>상세주소</th><td>${member.mb_addr2 }</td></tr>
	<tr><th>기타</th><td>${member.mb_remark }</td></tr>
	<tr><th>작업권한</th><td>${member.mb_authority }</td></tr>
	<tr><th>STATUS</th><td>${member.mb_status }</td></tr>
	<tr><th>가입일자</th><td>${member.mb_regDate }</td></tr>
	<tr><th>탈퇴일자</th><td>${member.mb_wdDate }</td></tr>
	<!-- 
	<tr><td colspan="2">
	    <input type="button" value="목록" 
			onclick="location.href='memberList.do'">
		<input type="button" value="수정" 
			onclick="location.href='memberUpdateForm.do?mb_id=${mb_id}'">
		<input type="button" value="삭제" 
			onclick="location.href='memberDelete.do?mb_id=${mb_id}'"></td></tr>
	-->		
</table>
</body>
</html>