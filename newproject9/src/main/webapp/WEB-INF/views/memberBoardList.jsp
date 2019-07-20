<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="MemberBoard" items="${memberboardlist}">
		<div class="list">
					
			<img class="image" src="${pageContext.request.contextPath}/upload/${MemberBoard.mb_imgSrc}"
			onerror="this.src='${pageContext.request.contextPath}/resources/image/user-03.png'" alt="회원사진" width="100" height="100">
			
			<b><p class="num">${MemberBoard.bd_num}</p></b>
			<div class="dropdown">
			<p class="id"><b>${MemberBoard.mb_nickName}</b></p>
			<div class="dropdown-content">
    		<table>
				<tr>
					<th>성별</th>
					<c:if test="${MemberBoard.mb_sex == '1'}">
						<td>남자</td>
					</c:if>
					<c:if test="${MemberBoard.mb_sex == '2'}">
						<td>여자</td>
					</c:if>
					<c:if test="${MemberBoard.mb_sex == '9'}">
						<td>비공개</td>
					</c:if>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>${MemberBoard.mb_birthDate}</td>
				</tr>
			</table>
 			</div>
		</div>
			
			
			<h2 class="title"><b><a href="sdDetail.do?bd_num=${MemberBoard.bd_num}">${MemberBoard.bd_title}</a></b></h2>
			<p class="content">${MemberBoard.bd_content}</p>
			<p class="hashTag">${MemberBoard.bd_hashTag}</p>
			<p class="location">${MemberBoard.bd_location}</p>
			<p class="regDate"><b><fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${MemberBoard.bd_regDate}"/>
					<fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" /></b></p>
		</div>
	</c:forEach>

</body>
</html>