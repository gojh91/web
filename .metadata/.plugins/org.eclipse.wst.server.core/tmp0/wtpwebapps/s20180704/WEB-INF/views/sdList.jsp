<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소셜다이닝</title>
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
    height: 400px;
}
.list2{
	position: relative;
	width: 1000px;
   	height: 400px;
/*  	background-color: #FCFF88;  */
	border-radius: 25px;
/* 	border: 2px solid #C0392B; */
	padding: 10px;
	margin: 20px;
	top: 50px;
	background-image: linear-gradient(150deg, white, #ECAC7D);
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.title2{
	position: absolute;
	top: 10px;
 	left: 150px;
	width: 800px;
   	height: 40px;
	overflow: hidden;
}
.location2{
	position: absolute;
	top: 50px;
 	left: 150px;
	width: 800px;
   	height: 30px;
	overflow: hidden;
}
.content2{
	position: absolute;
	top: 90px;
 	left: 150px;
	width: 800px;
   	height: 250px;
	overflow: hidden;
}
.hashTag2{
	color: red;
	position: absolute;
	top: 350px;
 	left: 150px;
	width: 800px;
   	height: 30px;
	overflow: hidden;
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
.title{
	position: absolute;
	color: #C0392B;
	top: 0;
 	left: 150px;
	width: 600px;
   	height: 40px;
	overflow: hidden;
}
.content{
	position: absolute;
	top: 50px;
 	left: 150px;
	width: 600px;
   	height: 125px;
	overflow: hidden;
	text-overflow: ellipsis;
}
.hashTag{
	color: red;
	position: absolute;
	top: 90px;
 	left: 800px;
	width: 200px;
   	height: 30px;
	overflow: hidden;
}
.location{
	position: absolute;
	top: 130px;
 	left: 800px;
	width: 200px;
   	height: 30px;
	overflow: hidden;
	color: green;
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
.submit{
 	position: absolute;
	top: 320px;
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
.text{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	width: 700px;
}
.text2{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	width: 700px;
	height: 250px;
	resize: none;
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
<form action="sdSave.do" method="post" name="frm">
<div class="listBack2">
<div class="list2">

	<input type="hidden" name="mb_id" required="required" value="${member.mb_id}">
	
	<div class="title2">
		<input class="text" type="text" name="bd_title"
		required="required" placeholder="제목" maxlength="100">
	</div>
	<div class="location2">
		<input class="text" type="text" name="bd_location"
		required="required" placeholder="위치" maxlength="33">
	</div>
	<div class="content2">
		<textarea class="text2" name="bd_content"
		required="required" placeholder="내용"></textarea>
	</div>
	<div class="hashTag2">
		<input class="text" type="text" name="bd_hashTag"
		required="required" placeholder="해쉬태그" maxlength="166">
	</div>
	<div>
		<input class="submit" type="submit" value="글작성">
	</div>
</div>
</div>
</form>

<div class="listBack">
	<c:forEach var="MemberBoard" items="${sdList}">
		<div class="list">
					
			<img class="image" src="${pageContext.request.contextPath}/upload/${MemberBoard.mb_imgSrc}"
			onerror="this.src='${pageContext.request.contextPath}/resources/image/user-03.png'" alt="회원사진" width="100" height="100">
			
			<b><p class="num">${MemberBoard.bd_num}</p></b>
			
		<%-- 	<p class="id">${MemberBoard.mb_nickName}</p> --%>
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
</div>
</body>
</html>