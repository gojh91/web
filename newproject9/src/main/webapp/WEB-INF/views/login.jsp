<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<script type="text/javascript">
	function checkLogin() {
		var mb_id = document.getElementsByName('mb_id')[0].value
		var mb_pw = document.getElementsByName('mb_pw')[0].value
		if (mb_id == ""){
			alert("아이디를 입력하십시오");
		} else if (mb_pw == ""){
			alert("비밀번호를 입력하십시오");
		} else{
			$.ajax({	
				url : "${pageContext.request.contextPath}/LoginRest/checkLogin.do",
				type: 'POST',
				data : {
					mb_id : mb_id,
					mb_pw : mb_pw
				},
				success : function(data) {
					if (data == "memberList") {
						location.href='memberList.do'
					} else if (data == "main"){
						location.href='main.do'
					} else if (data == "login"){
						alert("입력하신 것과 일치하는 정보가 없습니다.");
						location.href='login.do'
					}
				}
			});
		}
	}
	
	function enterkey() {
        if (window.event.keyCode == 13) {
        	checkLogin();
        }
	}



</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type = "text" name = "mb_id" required = "required"
		title = "아이디">
	<input type = "password" name = "mb_pw" required = "required"
		title = "패스워드" onKeyDown="enterkey()">
	<button onclick="checkLogin()" >로그인</button>
	<button onclick="location.href='memberIdFind.do'">아이디 찾기</button>
	<button onclick="location.href='memberPwFind.do'">비밀번호 찾기</button>
	
	
</body>
</html>