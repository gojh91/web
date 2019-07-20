<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function validCheck() {
		if (frm.mb_pw.value != frm.mb_pw_chk.value) {
			alert("비밀번호와 비밀번호 확인이 틀립니다");
			frm.mb_pw.focus();
			return false;
		}else{
			return true;
		}
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="changePw.do" method="post" name="frm" onsubmit="return validCheck()">
		비밀번호 
		<input type="password" class="fieldBox" name="mb_pw"
			placeholder="최대 20자리 입니다." size="20" required> 
		비밀번호 확인 
		<input type="password" class="fieldBox" id="mb_pw_chk"
			placeholder="최대 20자리 입니다." size="20" required>
		<input type="hidden" name="mb_id" value="${member.mb_id}">
		<button type="submit"
		style="margin-top: 20px; font-size: 1.6em; font-weight: bold;"
		class="topBtn">저장</button>
	</form>


</body>
</html>