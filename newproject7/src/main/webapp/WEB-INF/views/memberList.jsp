<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="width: 1780px; float: right;">
			<fieldset class="boundBox">
				
				<div align="left" style="padding: 10px">
				    <input type="text" class="fieldBox" id="keywordSearch" name="keywordSearch" size="20">
					<input type="button" style="margin-top: 20px; font-size: 0.8em; font-weight: bold"
							class="topBtn" onclick="getkeyword()" value="검색">					
				</div>				
				
				
				<c:set var="num" value="${pg.total - pg.start + 1}"></c:set>
				<table>
					<tr style="font-size:0.9em"><th style="width:40px">번호</th><th>아이디</th><th style="width:80px">닉네임</th><th style="width:80px">비밀번호</th><th style="width:60px">이 름</th><th style="width:120px">사진저장경로</th><th style="width:50px">성별</th>
						<th style="width:110px">전화번호</th><th style="width:90px">생년월일</th><th>이메일</th><th style="width:80px">우편번호</th><th style="width:80px">주소</th><th style="width:80px">상세주소</th><th style="width:60px">기타</th>
						<th style="width:80px">작업권한</th><th>STATUS</th><th style="width:90px">가입일자</th><th style="width:90px">탈퇴일자</th></tr>
					<c:forEach var="member" items="${listMember }">
						<tr>
							<td align="center">${num }</td><td align="center">${member.mb_id }</td>
							<td align="center"><a href="memberDetail.do?mb_id=${member.mb_id}">${member.mb_nickName}</a></td>
							<td align="center">${member.mb_pw }</td>
							<td align="center">${member.mb_name }</td>
							<td>${member.mb_imgSrc }</td>
							<td align="center">${member.mb_sex }
							    <!-- 프로그램에서 코딩  
						    	<c:if test="${member.mb_sex == '1'}">남성</c:if>
						    	<c:if test="${member.mb_sex == '2'}">여성</c:if>
						    	<c:if test="${member.mb_sex == '9'}">비공개</c:if>
						    	-->
							<td>${member.mb_phone }</td>
							<td align="center">${member.mb_birthDate}</td>       <!-- String형일때 Select문에 Format을 표시 -->
							<td>${member.mb_email }</td>
							<td align="center">${member.mb_postCode }</td>
							<td>${member.mb_addr1 }</td>
							<td>${member.mb_addr2 }</td>
							<td>${member.mb_remark }</td>
							<td align="center">${member.mb_authority }</td>
							<td align="center">${member.mb_status }</td>
							<td align="center">${member.mb_regDate}</td>        <!-- String형일때 Select문에 Format을 표시 -->
							<td align="center">${member.mb_wdDate}</td>         <!-- String형일때 Select문에 Format을 표시 -->
							<td><button type="button" class="btn" 
									style="font-size:0.9em; width:110px;" 
									onclick="location.href='memberUpdateForm3.do?mb_id=${member.mb_id}'">회원정보 수정</button></td>	
						</tr>
						<c:set var="num" value="${num - 1 }"></c:set>
					</c:forEach>
				</table>
				<br />	
				<c:if test="${pg.startPage > pg.pageBlock }">
					<a href="memberList.do?currentPage=${pg.startPage-pg.pageBlock}">[이전]</a>
				</c:if>
				<c:forEach var="i" begin="${pg.startPage }" end="${pg.endPage }">
					<a href="memberList.do?currentPage=${i}">[${i}]</a>
				</c:forEach>
				<c:if test="${pg.endPage < pg.totalPage }">
					<a href="memberList.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
				</c:if>
			</fieldset>
	</div>		
</body>
</html>