<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정</title>
<style>
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
</style>
</head>
<body>
<form action="sdUpdate.do" method="post" name="frm" onSubmit="return Check()">
	<input type="hidden" name="bd_num"
			required="required" value="${sdUpdateForm.bd_num}">
<div class="listBack2">
<div class="list2">
	<div class="title2">
		<input class="text" type="text" name="bd_title"
		required="required" placeholder="제목" maxlength="100" value="${sdUpdateForm.bd_title}">
	</div>
	<div class="location2">
		<input class="text" type="text" name="bd_location"
		required="required" placeholder="위치" maxlength="33" value="${sdUpdateForm.bd_location}">
	</div>
	<div class="content2">
		<textarea class="text2" name="bd_content"
		required="required" placeholder="내용">${sdUpdateForm.bd_content}</textarea>
	</div>
	<div class="hashTag2">
		<input class="text" type="text" name="bd_hashTag"
		required="required" placeholder="해쉬태그" maxlength="166" value="${sdUpdateForm.bd_hashTag}">
	</div>
	<input class="submit" type="submit" value="수정" >
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