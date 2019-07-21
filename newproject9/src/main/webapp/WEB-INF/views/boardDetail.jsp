<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="list">	
		<img class="image" src="${pageContext.request.contextPath}/upload/${memberboard.mb_imgSrc}" onError="this.src='${pageContext.request.contextPath}/resources/image/user-03.png'" alt="회원사진" width="100" height="100">
		
		<b><p class="num">${memberboard.bd_num}</p></b>
		
		<div class="dropdown">
		<p class="id"><b>${memberboard.mb_nickName}</b></p>
			<div class="dropdown-content">
    		<table>
				<tr>
					<th>성별</th>
					<td>${memberboard.mb_sex}</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>${memberboard.mb_birthDate}</td>
				</tr>
			</table>
 			</div>
		</div>
		
		<h2 class="title">${memberboard.bd_title}</h2>
		
		<textarea class="content" name="bd_content" disabled="disabled" >${memberboard.bd_content}</textarea>
				
		<dlv class="hashTag">
		<c:forEach var="hashTag" items="${hashTagList}">
			<spen><a href=search.do?login=false&nick=NULL&keyword=${hashTag}>#${hashTag}</a></spen>
		</c:forEach>
		</dlv>
							
		<p class="location">${memberboard.bd_location}</p>
		<p class="regDate"><b><fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${memberboard.bd_regDate}"/>
					<fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" /></b></p>
		<input class="button1" type="button" value="메인" onclick="location.href='sdList.do'">
		<input class="button2" type="button" value="댓글" onclick="location.href='sdReply.do?bd_num=${memberboard.bd_num}'">
		<c:if test="${memberboard.mb_id == member.mb_id}">
			<input class="button3" type="button" value="수정" onclick="location.href='sdUpdateForm.do?bd_num=${memberboard.bd_num}'">
			<input class="button4" type="button" value="삭제" onclick="return Check()">
		</c:if>
	</div>
</body>
</html>