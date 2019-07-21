<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function validCheck() {
		var flag = false;
		if (frm.mb_id.value == "") {
			alert("로그인 후 이용 가능 합니다.");
		} else {
			flag = true;
		}
		return flag;
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="memberBoardSave.do" method="post" name="frm" onsubmit="return validCheck()">
		<input type="hidden" name="mb_id" required="required" value="${member.mb_id}">
		
		<div class="title2">
			<input class="text" type="text" name="bd_title"
			required="required" placeholder="제목" maxlength="100" onclick="return validCheck()">
		</div>
		<div class="location2">
			<input class="text" type="text" name="bd_location"
			required="required" placeholder="위치" maxlength="33" onclick="return validCheck()">
		</div>
		<div class="content2">
			<textarea class="text2" name="bd_content"
			required="required" placeholder="내용"></textarea>
		</div>
		<div class="hashTag2">
			<input class="text" type="text" name="bd_hashTag"
			required="required" placeholder="해쉬태그" maxlength="166" onclick="return validCheck()">
		</div>
		<div>
			<input class="submit" type="submit" value="글작성">
		</div>
	</form>
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
			
			
			<h2 class="title"><b><a href="boardDetail.do?bd_num=${MemberBoard.bd_num}">${MemberBoard.bd_title}</a></b></h2>
			<p class="content">${MemberBoard.bd_content}</p>
			<p class="hashTag">${MemberBoard.bd_hashTag}</p>
			<p class="location">${MemberBoard.bd_location}</p>
			<p class="regDate"><b><fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${MemberBoard.bd_regDate}"/>
					<fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" /></b></p>
		</div>
	</c:forEach>

</body>
</html>