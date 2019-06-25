<%-- <%@ include file="navbar.jsp"%>   --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header2.jsp" %>
<%
	String context = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/HS/js/jquery.js"></script>
<script type="text/javascript" src="resources/HS/js/httpRequest.js"></script>

<script type="text/javascript">
//header 넣는 ajax
	$.ajax({
		url:"<%=context%>/getHeader.do", 
		dataType : 'html',
		success : function(data) { 
			/*  alert('data->'+data) */
			$('header').html(data);
		}
	});
 
	//side-bar 넣는 ajax, 자동정렬시 url에서 /getSide.do가 내려가는데 위로 올려주세요.
	$.ajax({
		url:  "<%=context%>/getSide.do",
		dataType : 'html',
		success : function(data) {
			$('side-bar').html(data);
		}
	});
	
	function memberList(mb_id){
		//회원 조회 페이지이동
		$.ajax({
			url : "<%=context%>/memberUpdateForm3.do",
			data : {
				mb_id : mb_id
			},
			dataType : 'html',
			success : function(data) {
				alert("처리ok");
			}
		});
	}
	
	function getkeyword(){
		var keywordSearch = document.getElementById("keywordSearch").value;
	    window.location.href = "memberListSearch.do?keywordSearch=" + keywordSearch;
	}

</script>

<style type="text/css">
.topBtn::after {
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.topBtn {
	background: none;
	border: 3px solid #000;
	border-radius: 5px;
	color: #000;
	font-size: 1.6em;
	font-weight: bold;
	padding: 8px 8px;
	position: relative;
}

.topBtn::before, .topBtn::after {
	background: #000;
	content: '';
	position: absolute;
	z-index: -1;
}

.topBtn:hover {
	color: #fff;
}

.topBtn::after {
	height: 0;
	left: 50%;
	top: 50%;
	width: 0;
}

.topBtn:hover:after {
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}

.boundBox {
	border: 2px solid red;
	border-radius: 5px;
}

.titleFont {
	font-size: 1.6em;
	font-weight: bold;	
}	
	
.fieldBox {
	background: none;
	border: 3px solid #000;
	border-radius: 5px;
	color: #000;
	font-size: 1em;
	font-weight: bold;
	padding: 8px 8px;
	position: relative;
	width: 300px;
}

.btn::after {
	height: 0;
	left: 50%;
	top: 50%;
	width: 0;
}

.btn:hover:after {
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}
</style>

<title>회원 목록(관리자) - MEAL-TING</title>
</head>
<body>

<br />
<h2 align="center" class="titleFont" style="font-size:2em;">회원 목록</h2>

<%-- <p>kkk 수정시 전달  Message : ${kkk} <p> --%>

<section>
	<!-- <div align="center" style="width: 70%"> -->
	<div align="center">
	
	  <div style="width: 1900px">
		<header></header>
		<side-bar><!-- 여기에 태그 넣지 말것! --></side-bar>  
		<div style="width: 1780px; float: right;">
		<!-- <div> -->
			<fieldset class="boundBox">
			
			    <!--
			    <div align="left" style="padding: 10px">
					<form action="memberListSearch.do" method="GET">
						<input type="text" name="keywordSearch" size="20">
						<button type="submit" class="btn"
							style="font-size: 1.2em; font-weight: bold;">검색</button>
					</form>
				</div>
				-->
				
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
					<c:forEach var="member" items="${list }">
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
	  </div>
	</div>
</section>	
</body>
</html>