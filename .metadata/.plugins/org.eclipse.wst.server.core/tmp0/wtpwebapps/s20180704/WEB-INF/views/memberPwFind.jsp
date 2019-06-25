<%@ include file="navbar.jsp"%>  

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>	
<%-- <%
	String context = request.getContextPath();
%> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/HS/js/jquery.js"></script>
<script type="text/javascript" src="resources/HS/js/httpRequest.js"></script>

<script type="text/javascript">
function chk(){
	var mb_id = document.getElementById("mb_id");
	var mb_nickName = document.getElementById("mb_nickName");
	var mb_name = document.getElementById("mb_name");
	var mb_email = document.getElementById("mb_email");
	$.ajax({
		url :"<%=context%>/memberPwCheck.do",
		data : {
			mb_id : mb_id.value,
			mb_nickName : mb_nickName.value,
			mb_name : mb_name.value,
			mb_email : mb_email.value
		},
		dataType : 'html',
		success : function(data) {
			$('#result').html(data);
		}
	});
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

.fieldBox {
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

th, #result {
	font-size: 1.2em;
	font-weight: bold;
}
</style>

<title>비밀번호찾기 - MEAL-TING</title>
</head>
<body>

<br /><br /><br /><br /><br /><br />
<h2 align="center" class="titleFont" style="font-size:2em;">비밀번호 찾기</h2>
<br />
<c:if test="${msg!=null}">${msg}</c:if>

<div align="center">
  <div style="width: 800px;">
	<form>
		<fieldset class="boundBox">	
		<br />		
				<table>
					<tr align="center" >
						<th style="padding-top: 10px">아이디</th>
						<td style="padding-top: 10px"><input type="text" class="fieldBox" id="mb_id" name="mb_id"></td>
						
					<tr align="center">
						<th style="padding-top: 10px">닉네임</th>
						<td style="padding-top: 10px"><input type="text" class="fieldBox" id="mb_nickName" name="mb_nickName"></td></tr>
						
					<tr align="center">
						<th style="padding-top: 10px">이름</th>
						<td style="padding-top: 10px"><input type="text" class="fieldBox" id="mb_name" name="mb_name"></td></tr>

					<tr align="center">
						<th style="padding-top: 10px">이메일 주소</th>
						<td style="padding-top: 10px"><input type="text" class="fieldBox" id="mb_email" name="mb_email"></td></tr>

					<tr align="center"  >
						<td colspan="2"  style="padding-top: 20px">
						    <button type="button"
						        style="font-size: 1.6em; font-weight: bold;"
						    	class="topBtn" onclick="chk()">확인</button>
							<button type="button" 
							    style="font-size: 1.6em; font-weight: bold;"
							    class="topBtn" onclick="history.back()">돌아가기</button></td></tr>
							
				</table>
				<br />
				<div id="result"></div>
				<br />
		</fieldset>
	 </form>
  </div>	
</div>
</body>
</html>