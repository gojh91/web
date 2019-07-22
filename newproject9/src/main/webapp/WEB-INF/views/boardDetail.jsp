<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function Check(){ 
		var message=confirm("삭제하시겠습니까?");
		if (message==true){
			location.href='replyDelete.do?bd_num=${bd_num}&re_seqNum=${Reply.re_seqNum}';
		}else{
			alert("삭제 취소 되었습니다.");
			return false;
		} 
	} 
</script>
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
		<input class="button1" type="button" value="메인" onclick="location.href='memberBoardList.do'">
		<c:if test="${memberboard.mb_id == member.mb_id}">
			<input class="button3" type="button" value="수정" onclick="location.href='sdUpdateForm.do?bd_num=${memberboard.bd_num}'">
			<input class="button4" type="button" value="삭제" onclick="return Check()">
		</c:if>
	</div>
	<form action="replySave.do" method="post" name="frm">
		<div class="listBack2">
			<div class="list2">
				<input type="hidden" name="bd_num"
						required="required" value="${memberboard.bd_num}">
						
				<input type="hidden" name="mb_id" required="required" value="${member.mb_id}">
						
				<div class="content2">
					<textarea class="text2" name="re_content"
					required="required" placeholder="댓글란"></textarea>
				</div>
				<div>
					<input class="submit" type="submit" value="댓글작성">
				</div>
			</div>
		</div>
	</form>
	<c:forEach var="Reply" items="${memberreplylist}">
		<div class="list">
		
			<img class="image" src="${pageContext.request.contextPath}/upload/${Reply.mb_imgSrc}"
			onerror="this.src='${pageContext.request.contextPath}/resources/image/user-03.png'" alt="회원사진" width="100" height="100">
			
			<b><p class="num">${Reply.re_seqNum}</p></b>
			
			<div class="dropdown">
			<p class="id"><b>${Reply.mb_nickName}</b></p>
			<div class="dropdown-content">
    		<table>
				<tr>
					<th>성별</th>
					<c:if test="${Reply.mb_sex == '1'}">
						<td>남자</td>
					</c:if>
					<c:if test="${Reply.mb_sex == '2'}">
						<td>여자</td>
					</c:if>
					<c:if test="${Reply.mb_sex == '9'}">
						<td>비공개</td>
					</c:if>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd" value="${Reply.mb_birthDate}"/>
					<fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /></td>
				</tr>
			</table>
 			</div>
		</div>
			<textarea class="content" disabled="disabled" >${Reply.re_content}</textarea>
			
			<p class="regDate"><b><fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${Reply.re_regDate}"/>
					<fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" /></b></p>
			<c:if test="${Reply.mb_id == member.mb_id}">
				<input class="button" type="button" value="수정" 
					onclick="location.href='replyUpdateForm.do?bd_num=${memberboard.bd_num}&re_seqNum=${Reply.re_seqNum}&re_content=${Reply.re_content}'">
				<input class="submit" type="button" value="삭제" 
					onclick="return Check()">
			</c:if>
		</div>
	</c:forEach>
</body>
</html>