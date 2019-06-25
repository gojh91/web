<%@ include file="navbar.jsp"%>  

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">

/* GENERAL BUTTON STYLING */
.button2 {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

button, button::after {
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

button {
	background: #4CAF50; 
	border: 2px solid #000;
	border-radius: 5px;
	color: #fff;
	font-size: 1.6em;
	font-weight: normal; 
	/* margin: 0.05em auto; */
	margin: auto;
	padding: 10px 20px; 
	position: relative;
}

input {
    width: 410px; 
    background: none;  
	border: 2px solid #000; 
	border-radius: 5px; 
	color: #000; 
	font-size: 1.6em; 
	font-weight: bold; 
	/* margin: 1em auto; */  
	margin: 0px 0px 15px 0px; 
	padding: 10px 20px;
	position: relative;
}

caption, th, p {
	font-size: 1.6em;
	font-weight: bold;
}

button::before, button::after {
	background: #fff;
	content: '';
	position: absolute;
	z-index: -1;
}

button:hover {
	color: #000;
}

.btn::after {
	height: 0;
	left: 50%;
	top: 50%;
	width: 0;
}

.btn:hover:after {
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}

.underline_1 {
    width: 68%;
    position: absolute; 
    left: 300px;
    margin-top: 15px;
    border-bottom: 2px solid #1e90ff; 
}

</style>

<title>로그인 - MEAL-TING</title>

</head>

<body>

    <br/><br/><br/><br/><br/>
    
    <c:if test="${FailType == 'false_id'}">
        <script>
    		function loginFail1(){
    			alert("등록 안된 아이디입니다!");
    		}
    		loginFail1();
    	</script>
    </c:if>  
    
    <c:if test="${FailType == 'false_pw'}">
        <script>
    		function loginFail2(){
    			alert("비밀번호가 틀립니다!");
    		}
    		loginFail2();
    	</script>
    </c:if>
    
    <c:if test="${FailType == 'false_active'}">
        <script>
    		function loginFail3(){
    			alert("탈퇴한 회원입니다!");
    		}
    		loginFail3();
    	</script>
    </c:if>
	
	<div style="margin-top: 50px;" align="center">
		<form action="HSCheckLogin.do" method="post">
		    <!-- <input type="hidden" name="mb_nickName" value="${member.mb_nickName }"> --> 
			<!-- <input type="hidden" name="mb_nickName" value="피터"> --> 

    <%-- 메세지:${msg} --%>
	<%-- <c:if test="${msg!=null}">${msg}</c:if> --%>

			<table>
				<div style="font-weight:bold; font-size:41px; color:rgb(192, 57, 43); absolute; left:50%; margin-left: -1200px">로그인</div>
                <hr class="underline_1"><br/><br/><br/>
                   
				<tr>
					<!-- <th>아이디</th> -->
					<td><input type="text" name="mb_id" required="required"
					     onfocus="this.value=''" title="아이디" placeholder="아이디"></td>
				</tr>

				<tr>
					<!-- <th>비밀 번호</th> -->  
					<td><input type="password" name="mb_pw" required="required"
					     onfocus="this.value=''" title="비밀번호" placeholder="비밀번호"></td>
				</tr>
				
				<table border="1">
					<tr align="center">
					    <td colspan="3">
							<button type="submit" class="btn" style="width:400px; height:100px; background-color:#F39C12; font-size:30px; font-weight:bold">로그인</button>
						</td>	 
				    </tr>
					<tr align="center">
						<td>
							<button type="button" class="btn" style="width:130px; font-size:18px; font-weight:bold"
								onclick="location.href='memberIdFind.do'">아이디 찾기</button>
							<button type="button" class="btn" style="width:130px; font-size:18px; font-weight:bold"
								onclick="location.href='memberPwFind.do'">비밀번호 찾기</button>
							<button type="button" class="btn" style="width:130px; font-size:18px; font-weight:bold"
								onclick="location.href='memberWriteForm.do'">회원가입</button>
						</td>
				    </tr>
				</table>               					
				
			</table>
		</form>
	</div>
	
</body>
</html>