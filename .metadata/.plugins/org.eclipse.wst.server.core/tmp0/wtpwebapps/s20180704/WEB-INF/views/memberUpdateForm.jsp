<%@ include file="navbar.jsp"%>  

<%@page import="oracle.java.meal_ting.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- jQuery와 Postcodify를 로딩한다. 주소찾기 api -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="http://d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<script type="text/javascript">

function pwCheck() {
	/* alert("passCheck  Start..");   +*/
/*     alert("frm.mb_pw.value->" + frm.mb_pw.value); 
	
 */	var oPw = $("#originalPw").text();
 	if (frm.mb_pw.value != oPw) {
  		alert("("+frm.mb_pw.value + ") 비밀번호가 틀립니다");
		frm.mb_pw.focus();
		return false;
	}
 }

function nickNamechk() {
	if (!frm.mb_nickName.value) {
		alert("닉네임를 입력한 후에 확인하세요");
		frm.mb_nickName.focus();
		return false;
	} else location.href="confirmNickName2.do?mb_id="+frm.mb_id.value+"&mb_nickName="+frm.mb_nickName.value;
}

/* Radio button 성별 입력한 값 체크 */
function sexCheck() {
	var radioVal = $(":input:radio[name=mb_sex]:checked").val();
	alert(radioVal);
}		

$(function() {
	//주소 검색 api
	$("#postcodify_search_button").postcodifyPopUp();	
});	
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
	font-size: 0.6em;
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

.fieldBox, .postcodify_postcode5, .postcodify_address, .postcodify_details {
	background: none;
	border: 2px solid red;
	border-radius: 5px;
	color: #000;
	font-size: 1em;
	font-weight: bold;
	padding: 7px 7px;
	position: relative;
	width: 450px;
}

th {
	font-size: 1.2em;
}
</style>

<title>개인정보변경 - MEAL-TING</title>
</head>
<body>

<br /><br /><br /><br />

<h2 align="center" class="titleFont" style="font-size:2em;">개인정보변경</h2>
<br />

<c:if test="${msg!=null}">${msg}</c:if>

<div align="center">
  <div style="width: 1350px;">
  
	<p align="right">
	  <input type="button" value="회원탈퇴" style="font-size: 1em; font-weight: bold;"
	      onclick="location.href='memberWithdrawalForm.do'" />
	</p>  
     
     <form action="memberUpdate.do" method="post" name="frm" onsubmit="return pwCheck()"> 
		<input type="hidden" name="mb_authority"  value="${member.mb_authority }">
		<fieldset class="boundBox">
		    <br /><br />
		
				<table>   
					<tr align="center">
						<th>아이디</th>
						<td><input type="text" class="fieldBox" name="mb_id" value="${member.mb_id }" 
							class="postcodify_address" readonly="readonly"></td>
						<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;닉네임</th>
						<td><input type="text" class="fieldBox" name="mb_nickName" value="${member.mb_nickName }" 
						    class="postcodify_address" size="30" required></td></tr>

					<tr>
						<th></th>
						<td></td>
						<th></th>
						<td><input type="button" value="중복확인" onclick="nickNamechk()"></td></tr>		    
				
					<tr align="center">
						<th>비밀번호</th>
						<td><input type="password" class="fieldBox" name="mb_pw" placeholder="비밀번호를 입력하세요." 
						    size="20" required></td></tr>
				
					<tr align="center">
						<th>이름</th>
						<td><input type="text" class="fieldBox" name="mb_name" value="${member.mb_name }" required></td>	
						<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사진</th>
   						<td><input type="text" class="fieldBox" id="imgsrc" name="mb_imgSrc" value="${member.mb_imgSrc}"></td>
   						<td><button type="button" id="uploadBtn"
   						         style="font-size: 0.95em; font-weight: bold;" class="topBtn">이미지 첨부</button></td>
					    <td>
					        <img src="${pageContext.request.contextPath}/upload/${member.mb_imgSrc}" 
					             style="margin-left: 10px; height: 110px; width: 110px;"></td>
				    </tr> 
					<tr align="center">
						<th>성별</th>
						<td class="fieldBox">
							<c:choose>
								<c:when test="${member.mb_sex eq '1'}">
									<input style="margin:3px" type="radio" name="mb_sex" value="1" checked="checked" />남성
				           			<input style="margin:3px" type="radio" name="mb_sex" value="2" />여성
				           			<input style="margin:3px" type="radio" name="mb_sex" value="9" onclick="sexCheck()" />비공개
								</c:when>
								<c:when test="${member.mb_sex eq '2'}">
									<input style="margin:3px" type="radio" name="mb_sex" value="1" />남성
				           			<input style="margin:3px" type="radio" name="mb_sex" value="2" checked="checked" />여성
				           			<input style="margin:3px" type="radio" name="mb_sex" value="9" onclick="sexCheck()" />비공개
								</c:when>
								<c:when test="${member.mb_sex eq '9'}">
									<input style="margin:3px" type="radio" name="mb_sex" value="1" />남성
				           			<input style="margin:3px" type="radio" name="mb_sex" value="2" />여성
				           			<input style="margin:3px" type="radio" name="mb_sex" value="9" checked="checked" onclick="sexCheck()" />비공개
								</c:when>
							</c:choose>
						    </td></tr>
				
					<tr align="center">
						<th>전화번호</th>
						<td><input type="text" class="fieldBox" name="mb_phone" placeholder="010-1234-1234" value="${member.mb_phone }" required></td>
						<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;생년월일</th>
						<td><input type="date" class="fieldBox" name="mb_birthDate" value="${member.mb_birthDate }" required></td></tr>
						
					<tr align="center">
						<th>이메일</th>
						<td><input type="text" class="fieldBox" name="mb_email" value="${member.mb_email }" ></td></tr>	
						
					<tr align="center">
						<th>주소</th>
						<td align="left" colspan="8">
							<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 --> 
							<input type="text" name="mb_postCode" value="${member.mb_postCode }" class="postcodify_postcode5" 
							readonly="readonly" size="4" required style="width: 70px;"> 
							<input type="text" name="mb_addr1" value="${member.mb_addr1 }"  class="postcodify_address" 
							readonly="readonly" size="30" required style="width: 250px;"> 
							<input type="text" name="mb_addr2" value="${member.mb_addr2 }"   class="postcodify_details" 
							placeholder="상세주소 입력" size="40" required style="width: 250px;">
							<button type="button" id="postcodify_search_button"
								style="font-size: 0.9em; font-weight: bold;" class="topBtn">주소검색</button>
						</td></tr>
				</table>
				<br />
				<table>
					<tr>
						<td><button type="submit"
								style="margin-top: 20px; font-size: 1.6em; font-weight: bold;"
								class="topBtn">저장</button></td>
						<td><button type="button" style="margin-top: 20px; font-size: 1.6em; font-weight: bold;"
							    class="topBtn" onclick="history.back()">돌아가기</button></td></tr>
				</table>
				<br /><br />
		</fieldset>
	 </form>
	 <p style="display:none;" id="originalPw">${member.mb_pw}</p>
  </div>	
</div>

</body>
<script>
   $('#uploadBtn').click(function(event){
	  /* alert("#uploadBtn"); */
      console.log('upload clicked');
      openPopUp();
   });
   function openPopUp(){
      window.name = "writeForm";
      var url = "memberUploadImgForm.do";
      var winWidth = 500;
      var winHeight = 400;
      var popUpOption = "width=" + winWidth + ", height=" + winHeight;
      var openPop = window.open(url, '', popUpOption);   
   }
</script>
</html>