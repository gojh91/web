<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원정보</h2>
<table>
	<tr><th>아이디</th><td>${JYmemberDetail.mb_id}</td></tr>
	<tr><th>성명</th><td>${JYmemberDetail.mb_name}</td></tr>
	<tr><th>닉네임</th><td>${JYmemberDetail.mb_nickName}</td></tr>
	
	<tr><td colspan ="2">
		<input type="button" value="뒤로"
			onclick="window.history.back();">
		</td>
	</tr>
</table>
</body>
</html>