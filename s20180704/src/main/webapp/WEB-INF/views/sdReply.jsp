<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>댓글</title>
<style>
.listBack{
	border-collapse: collapse;	/* 경계를 하나로 */
	color: #714DEE;
	margin: auto;
	width: 1000px;
    height: 200px;
}
.list{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	position: relative;
	width: 1000px;
   	height: 200px;
	border-radius: 25px;
	padding: 10px;
	margin: 20px;
	top: 50px;
    background-image: linear-gradient(150deg, white, #ECAC7D);
}
.listBack2{
	border-collapse: collapse;	/* 경계를 하나로 */
	color: #714DEE;
	margin: auto;
	width: 1000px;
    height: 200px;
}
.list2{
	position: relative;
	width: 1000px;
   	height: 200px;
/*  	background-color: #FCFF88;  */
	border-radius: 25px;
/* 	border: 2px solid #C0392B; */
	padding: 10px;
	margin: 20px;
	top: 50px;
	background-image: linear-gradient(150deg, white, #ECAC7D);
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.content2{
	position: absolute;
	top: 10px;
 	left: 150px;
	width: 600px;
   	height: 180px;
	overflow: hidden;
}
.num{
	position: absolute;
	top: 150px;
 	left: 35px;
	width: 100px;
   	height: 30px;
	overflow: hidden;
	color: red;
}
/* .id{
	position: absolute;
	top: 50px;
 	left: 800px;
	width: 200px;
   	height: 30px;
	overflow: hidden;
} */
.content{
	position: absolute;
	top: 10px;
 	left: 150px;
	width: 600px;
   	height: 180px;
	overflow-y: scroll;
	text-overflow: ellipsis;
	background-color: white;
	color: #714DEE;
	border: none;
}
.regDate{
	color: black;
	position: absolute;
	top: 10px;
 	left: 800px;
	width: 200px;
   	height: 30px;
	overflow: hidden;
}
.text2{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	width: 700px;
	height: 250px;
	resize: none;
}
.image{
	position: absolute;
	border-radius: 50%;
	top: 10px;
 	left: 35px;
	width: 100px;
   	height: 100px;
	overflow: hidden;
}
.submit{
 	position: absolute;
	top: 120px;
 	left: 860px;
   	
   	background-color: white;
    border: none;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    text-shadow: -1px 0 gray, 0 1px black, 1px 0 black, 0 -1px gray;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 25px;
}
.button{
 	position: absolute;
	top: 120px;
 	left: 760px;
   	
   	background-color: white;
    border: none;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    text-shadow: -1px 0 gray, 0 1px black, 1px 0 black, 0 -1px gray;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 25px;
}
.dropdown {
    position: relative;
    display: inline-block;
}
.dropdown-content {
    display: none;
    top: 70px;
 	left: 790px;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 200px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 12px 16px;
    z-index: 1;
}
.dropdown:hover .dropdown-content {
    display: block;
}
.id{
	position: relative;
	top: 40px;
 	left: 790px;
	width: 200px;
   	height: 30px;
	overflow: hidden;
}
</style>
</head>
<body>
<form action="sdReplySave.do" method="post" name="frm">
<div class="listBack2">
<div class="list2">
	<input type="hidden" name="bd_num"
			required="required" value="${bd_num}">
			
	<input type="hidden" name="mb_id" required="required" value="${member.mb_id}">
			
	<div class="content2">
		<textarea class="text2" name="re_content"
		required="required" placeholder="댓글란"></textarea>
	</div>
	<div>
		<input class="button" type="button" value="메인" 
			onclick="location.href='sdList.do'">
		<input class="submit" type="submit" value="댓글작성">
	</div>
</div>
</div>
</form>

<div class="listBack">
	<c:forEach var="Reply" items="${sdReply}">
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
					onclick="location.href='sdReplyUpdateForm.do?bd_num=${bd_num}&re_seqNum=${Reply.re_seqNum}&re_content=${Reply.re_content}'">
				<input class="submit" type="button" value="삭제" 
					onclick="return Check()">
			</c:if>
		</div>
	<script>
	function Check(){ 
		var message=confirm("삭제하시겠습니까?");
		if (message==true){
			location.href='sdReplyDelete.do?bd_num=${bd_num}&re_seqNum=${Reply.re_seqNum}';
		}else{
			alert("삭제 취소 되었습니다.");
			return false;
		} 
	} 
	</script>
	</c:forEach>
</div>
</body>
</html>