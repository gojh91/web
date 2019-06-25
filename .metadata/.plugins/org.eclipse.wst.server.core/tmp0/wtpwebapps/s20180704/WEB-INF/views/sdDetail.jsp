<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세보기</title>
<style>
.listBack{
	border-collapse: collapse;	/* 경계를 하나로 */
	color: #714DEE;
	margin: auto;
	width: 1000px;
    height: 200px;
}
.list{
	position: relative;
	width: 1000px;
   	height: 700px;
/*  	background-color: #FCFF88;  */
	border-radius: 25px;
	background-image: linear-gradient(150deg, white, #ECAC7D);
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	padding: 10px;
	margin: 20px;
	top: 50px;
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
	top: 650px;
 	left: 35px;
	width: 100px;
   	height: 30px;
	overflow: hidden;
	color: red;
}
.title{
	position: absolute;
	color: gray;
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
   	height: 550px;
	overflow-y: scroll;
	text-overflow: ellipsis;
	background-color: white;
	color: #714DEE;
	border: none;
}
.hashTag{
	color: red;
	position: absolute;
	top: 90px;
 	left: 800px;
	width: 200px;
   	height: 150px;
	overflow: hidden;
}
.location{
	position: absolute;
	top: 250px;
 	left: 800px;
	width: 200px;
   	height: 150px;
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
.button1{
 	position: absolute;
	top: 610px;
 	left: 300px;
   	
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
.button2{
 	position: absolute;
	top: 610px;
 	left: 400px;
   	
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
.button3{
 	position: absolute;
	top: 610px;
 	left: 500px;
   	
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
.button4{
 	position: absolute;
	top: 610px;
 	left: 600px;
   	
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
<div class="listBack">
	<div class="list">
		
		<img class="image" src="${pageContext.request.contextPath}/upload/${sdMemberDetail.mb_imgSrc}"
			onerror="this.src='${pageContext.request.contextPath}/resources/image/user-03.png'" alt="회원사진" width="100" height="100">
		
		<b><p class="num">${sdDetail.bd_num}</p></b>
		
		<div class="dropdown">
		<p class="id"><b>${sdMemberDetail.mb_nickName}</b></p>
			<div class="dropdown-content">
    		<table>
				<tr>
					<th>성별</th>
					<td>${sdMemberDetail.mb_sex}</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>${sdMemberDetail.mb_birthDate}</td>
				</tr>
			</table>
 			</div>
		</div>
		
		<h2 class="title">${sdDetail.bd_title}</h2>
		
		<textarea class="content" name="bd_content" disabled="disabled" >${sdDetail.bd_content}</textarea>
				
		<dlv class="hashTag">
		<c:forEach var="hashTag" items="${hashList}">
			<spen><a href=GOsearch.do?login=false&nick=NULL&keyword=${hashTag}>#${hashTag}</a></spen>
		</c:forEach>
		</dlv>
							
		<p class="location">${sdDetail.bd_location}</p>
		<p class="regDate"><b><fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${sdDetail.bd_regDate}"/>
					<fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" /></b></p>
		<input class="button1" type="button" value="메인" onclick="location.href='sdList.do'">
		<input class="button2" type="button" value="댓글" onclick="location.href='sdReply.do?bd_num=${sdDetail.bd_num}'">
		<c:if test="${sdDetail.mb_id == member.mb_id}">
			<input class="button3" type="button" value="수정" onclick="location.href='sdUpdateForm.do?bd_num=${sdDetail.bd_num}'">
			<input class="button4" type="button" value="삭제" onclick="return Check()">
		</c:if>
	</div>
</div>
<script>
function Check(){ 
	var message=confirm("삭제하시겠습니까?");
	if (message==true){
		location.href='sdDelete.do?bd_num=${sdDetail.bd_num}';
	}else{
		alert("삭제 취소 되었습니다.");
		return false;
	} 
} 
</script>
</body>
</html>