<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="checkLogin.do">
		<input type = "text" name = "mb_id" required = "required"
		title = "아이디">
		<input type = "password" name = "mb_pw" required = "required"
		title = "패스워드">
		<button type="submit">로그인</button>
		<button onclick="location.href='memberIdFind.do'">아이디 찾기</button>
		<button onclick="location.href='memberPwFind.do'">비밀번호 찾기</button>
		
	</form>
</body>
</html>