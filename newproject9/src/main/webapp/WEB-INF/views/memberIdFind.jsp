<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String context = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript">
function chk(){
	var mb_nickName = document.getElementById("mb_nickName");
	var mb_name = document.getElementById("mb_name");
	var mb_email = document.getElementById("mb_email");
	$.ajax({
		url :"<%=context%>/LoginRest/memberIdFind1.do",
		data : {
			mb_nickName : mb_nickName.value,
			mb_name : mb_name.value,
			mb_email : mb_email.value
		},
		dataType : 'html',
		success : function(data) {
			if (data == ""){
				alert("해당하는 아이디가 존재하지 않습니다.");
			}else{
				$('#result').html("아이디 : " + data);
			}
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
					<th style="padding-top: 10px">닉네임</th>
					<td style="padding-top: 10px"><input type="text"
						class="fieldBox" id="mb_nickName" name="mb_nickName" required></td>
				</tr>

				<tr align="center">
					<th style="padding-top: 10px">이름</th>
					<td style="padding-top: 10px"><input type="text"
						class="fieldBox" id="mb_name" name="mb_name" required></td>
				</tr>

				<tr align="center">
					<th style="padding-top: 10px">이메일 주소</th>
					<td style="padding-top: 10px"><input type="text"
						class="fieldBox" id="mb_email" name="mb_email" required></td>
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