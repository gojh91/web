<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
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
.text2{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	width: 700px;
	height: 250px;
	resize: none;
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
</style>
</head>
<body>
<form action="sdReplyUpdate.do" method="post" name="frm" onSubmit="return Check()">
<div class="listBack2">
<div class="list2">
	<input type="hidden" name="bd_num"
		required="required" value="${sdReplyUpdateForm.bd_num}">
	<input type="hidden" name="re_seqNum"
		required="required" value="${sdReplyUpdateForm.re_seqNum}">
	<div class="content2">
		<textarea class="text2" name="re_content"
		required="required" placeholder="댓글란">${sdReplyUpdateForm.re_content}</textarea>
	</div>
	<div>
		<input class="button" type="button" value="메인" 
			onclick="location.href='sdList.do'">
		<input class="submit" type="submit" value="댓글수정">
	</div>
</div>
</div>
</form>
<script>
function Check(){ 
	var message=confirm("수정하시겠습니까?");
	if (message==true){
	}else{
		alert("수정 취소 되었습니다.");
		return false;
	} 
} 
</script>
</body>
</html>