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
	<a>MEAL-TING</a>
	<a>밀팅</a>
	<form action="search.do">
		<input type="text" name="keyword">
		<button type="submit">검색</button>
	</form>
	<a>소셜네트워크</a>
	<a>리뷰피드</a>
	<c:if test="${checkLogin == 1}">
		${loginMember.mb_nickName}
	</c:if>
	<c:if test="${checkLogin != 1}">
		<a onclick="location.href='login.do'">로그인</a>
	</c:if>
</body>
</html>