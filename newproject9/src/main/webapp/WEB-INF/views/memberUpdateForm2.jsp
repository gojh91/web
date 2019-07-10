<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="go.home.project.model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- jQuery와 Postcodify를 로딩한다. 주소찾기 api -->
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<%
	String context = request.getContextPath();
	Member member = (Member) request.getAttribute("member");
%>
<script type="text/javascript">
	function nickNamechk() { 
	var nickName = '<%=member.getMb_nickName()%>'
		if(nickName != frm.mb_nickName.value){
			$.ajax({	
				url : "<%=context%>/LoginRest/nickNameChk.do",
				data : {
					mb_nickName : frm.mb_nickName.value
				},
				success : function(data) {
					if (data != 0) {
						alert("Nickname is duplicate");
					} else {
						alert("Nickname is available");
					}
				}
			});
		} else {
			alert("Nickname is available");
		}
	}
	$(function() {
		//주소 검색 api
		$("#postcodify_search_button").postcodifyPopUp();
	});
</script>
<title>회원정보 수정 - MEAL-TING</title>
</head>
<body>

	<form action="memberUpdate.do" method="post" name="frm">
		<table>
			<tr align="center">
				<th><p style="margin-top: 50px;">아이디</p></th>
				<td><input type="text" class="fieldBox"
					style="margin-top: 40px;" name="mb_id" value="${member.mb_id }"
					class="postcodify_address" readonly="readonly"></td>
				<th><p style="margin-top: 50px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;닉네임</p></th>
				<td><input type="text" class="fieldBox"
					style="margin-top: 40px;" name="mb_nickName"
					value="${member.mb_nickName }" class="postcodify_address" size="30"
					required></td>
			</tr>

			<tr align="center">
				<th>비밀번호</th>
				<td><input type="password" class="fieldBox" name="mb_pw"
					placeholder="비밀번호를 입력하세요." size="20" required></td>
				<th></th>
				<td align="left"><input type="button" value="중복확인"
					onclick="nickNamechk()"></td>
			</tr>

			<tr align="center">
				<th>이름</th>
				<td><input type="text" class="fieldBox" name="mb_name"
					value="${member.mb_name }" required></td>
				<%-- <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사진</th>
				<td><input type="text" class="fieldBox" id="imgsrc"
					name="mb_imgSrc" value="${member.mb_imgSrc}"></td>
				<td><button type="button" id="uploadBtn"
						style="font-size: 0.95em; font-weight: bold;" class="topBtn">이미지
						첨부</button></td>
				<td><img
					src="${pageContext.request.contextPath}/upload/${member.mb_imgSrc}"
					style="margin-left: 10px; height: 110px; width: 110px;"></td> --%>
			</tr>

			<tr align="center">
				<th>성별</th>
				<td class="fieldBox"><input type="radio" name="mb_sex"
					value="1"
					<c:if test="${member.mb_sex eq '1'}">checked = "checked"</c:if>>남성
					<input type="radio" name="mb_sex" value="2"
					<c:if test="${member.mb_sex eq '2'}">checked = "checked"</c:if>>여성
					<input type="radio" name="mb_sex" value="9"
					<c:if test="${member.mb_sex eq '9'}">checked = "checked"</c:if>>비공개
				</td>
			</tr>

			<tr align="center">
				<th>전화번호</th>
				<td><input type="text" class="fieldBox" name="mb_phone"
					placeholder="010-1234-1234" value="${member.mb_phone }" required></td>
				<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;생년월일</th>
				<td><input type="date" class="fieldBox" name="mb_birthDate"
					value="${member.mb_birthDate }" required></td>
			</tr>

			<tr align="center">
				<th>이메일</th>
				<td><input type="text" class="fieldBox" name="mb_email"
					value="${member.mb_email }"></td>
			</tr>

			<tr align="center">
				<th>주소</th>
				<td align="left" colspan="8">
					<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 --> <input
					type="text" name="mb_postCode" value="${member.mb_postCode }"
					class="postcodify_postcode5" readonly="readonly" size="4" required
					style="width: 70px;"> <input type="text" name="mb_addr1"
					value="${member.mb_addr1 }" class="postcodify_address"
					readonly="readonly" size="30" required style="width: 250px;">
					<input type="text" name="mb_addr2" value="${member.mb_addr2 }"
					class="postcodify_details" placeholder="상세주소 입력" size="40" required
					style="width: 250px;">
					<button type="button" id="postcodify_search_button"
						style="font-size: 0.9em" class="topBtn">주소검색</button>
				</td>
			</tr>

			<tr align="center">
				<th>작업권한</th>
				<td><select class="fieldBox" name="mb_authority">
						<option value="1" ${member.mb_authority == '1' ? "selected" : ""}>회원</option>
						<option value="2" ${member.mb_authority == '2' ? "selected" : ""}>관리자</option>
				</select></td>
				<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STATUS</th>
				<td><select class="fieldBox" name="mb_status">
						<option value="1" ${member.mb_status == '1' ? "selected" : ""}>Active</option>
						<option value="2" ${member.mb_status == '2' ? "selected" : ""}>Inactive</option>
				</select></td>
			</tr>

			<tr align="center">
				<th>가입일자</th>
				<td><input type="date" class="fieldBox" name="mb_regDate"
					value='${member.mb_regDate}' required></td>
				<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;탈퇴일자</th>
				<td><input type="date" class="fieldBox" name="mb_wdDate"
					value='${member.mb_wdDate}'></td>
			</tr>
		</table>
		<table>
			<tr>
				<td><button type="submit" style="margin-top: 20px;"
						class="topBtn">저장</button></td>
				<td><button type="button" style="margin-top: 20px"
						class="topBtn"
						onclick="location.href='memberDeleteForm.do?mb_id=${member.mb_id}'">삭제</button></td>
				<td><button type="button" style="margin-top: 20px"
						class="topBtn" onclick="history.back()">돌아가기</button></td>
			</tr>
		</table>
		<br />
	</form>
</body>

</html>