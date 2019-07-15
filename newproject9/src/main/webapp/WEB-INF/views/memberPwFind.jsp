<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String context = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
function chk(){
	var mb_id = document.getElementById("mb_id");
	var mb_nickName = document.getElementById("mb_nickName");
	var mb_name = document.getElementById("mb_name");
	var mb_email = document.getElementById("mb_email");
	$.ajax({
		url :"<%=context%>/LoginRest/memberPwFind1.do",
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<fieldset class="boundBox">
			<br />
			<table>
				<tr align="center">
					<th style="padding-top: 10px">아이디</th>
					<td style="padding-top: 10px"><input type="text"
						class="fieldBox" id="mb_id" name="mb_id"></td>
				<tr align="center">
					<th style="padding-top: 10px">닉네임</th>
					<td style="padding-top: 10px"><input type="text"
						class="fieldBox" id="mb_nickName" name="mb_nickName"></td>
				</tr>

				<tr align="center">
					<th style="padding-top: 10px">이름</th>
					<td style="padding-top: 10px"><input type="text"
						class="fieldBox" id="mb_name" name="mb_name"></td>
				</tr>

				<tr align="center">
					<th style="padding-top: 10px">이메일 주소</th>
					<td style="padding-top: 10px"><input type="text"
						class="fieldBox" id="mb_email" name="mb_email"></td>
				</tr>

				<tr align="center">
					<td colspan="2" style="padding-top: 20px">
						<button type="button" style="font-size: 1.6em; font-weight: bold;"
							class="topBtn" onclick="chk()">확인</button>
						<button type="button" style="font-size: 1.6em; font-weight: bold;"
							class="topBtn" onclick="history.back()">돌아가기</button>
					</td>
				</tr>

			</table>
			<br />
			<div id="result"></div>
			<br />
		</fieldset>
	</form>
</body>
</html>