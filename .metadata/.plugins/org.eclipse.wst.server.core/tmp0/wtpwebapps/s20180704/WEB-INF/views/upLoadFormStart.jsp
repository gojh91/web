<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
iframe {
	width: 0px;
	height: 0px;
	border: 0px
}
</style>
</head>
<body>

	<form id="form1" action="uploadForm.do" method="post" enctype="multipart/form-data" target="myBatisFrame">
		<input type="file" id="filename" name="file"> 
		<input type="submit">
	</form>
	
	<iframe name="myBatisFrame"></iframe>

	<script>
		function addFilePath(msg) {
			alert("완료되었습니다.");
			opener.document.getElementById("imgsrc").value = msg;
			window.close();
		}
	</script>

	<!-- 	<form id='form1' action="uploadForm" method="post"
		enctype="multipart/form-data">
		<input type='file' name='file'> <input type='submit'>
	</form>
 -->
 <!-- 
 function setWriteFormText(){
			opener.document.getElementById("imgsrc").value = document.getElementById("filename").value;
		} -->
</body>
</html>

