<%@ include file="navbar.jsp"%>  

<%@page import="oracle.java.meal_ting.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- jQuery와 Postcodify를 로딩한다. 주소찾기 api -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="http://d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<script type="text/javascript">
	

function checkbox() {
	var flag = false;
	// checkbox 접근후 체크된 개수 파악   name으로 접근, values는 배열의 형태
	var values = document.getElementsByName("agree");  /* 형태는 배열이 됨 */
	var count = 0;
 	for (var i=0; i<values.length; i++) {
		if(values[i].checked) {
			//alert(values[i].value);
			count++;
		}
	}
	if(count < 1) {
		alert("동의하셔야 합니다.");	
	} else {
		// alert(count+" 개 선택했습니다.");	
		flag = true;
	} 
	return flag;
}

</script>

<style type="text/css">
.topBtn::after {
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.topBtn {
	background: none;
	border: 3px solid #000;
	border-radius: 5px;
	color: #000;
	font-size: 0.6em;
	font-weight: bold;
	padding: 8px 8px;
	position: relative;
}

.topBtn::before, .topBtn::after {
	background: #000;
	content: '';
	position: absolute;
	z-index: -1;
}

.topBtn:hover {
	color: #fff;
}

.topBtn::after {
	height: 0;
	left: 50%;
	top: 50%;
	width: 0;
}

.topBtn:hover:after {
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}

.boundBox {
	border: 2px solid red;
	border-radius: 5px;
}

.titleFont {
	font-size: 1.6em;
	font-weight: bold;
}

.fieldBox, .postcodify_postcode5, .postcodify_address, .postcodify_details {
	background: none;
	border: 2px solid red;
	border-radius: 5px;
	color: #000;
	font-size: 1em;
	font-weight: bold;
	padding: 7px 7px;
	position: relative;
	width: 450px;
}

p {
	font-size: 1.2em;
}

em {
	color: green;
}

th {
	font-size: 1.2em;
}
</style>

<title>회원탈퇴 - MEAL-TING</title>
</head>
<body>

<br /><br /><br /><br />
<!-- 
<h2 align="center" class="titleFont" style="font-size:2em;">탈퇴 안내</h2>
<p align="center">회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
-->
<br />

<c:if test="${msg!=null}">${msg}</c:if>

<div align="center">
  <div style="width: 1300px;">
     <form action="memberWithdrawal.do" method="post" name="frm" onsubmit="return checkbox()"> 

		<fieldset class="boundBox">
	    <br /><br />

			<div style="width: 800px" align="left" >
				<h2 class="titleFont" style="font-size:2em;">탈퇴 안내</h2>
				<p>회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
				<br /><br />
		
				<div style="font-size: 1em; font-weight: bold;">
					<p>√ 사용하고 계신 아이디(<em>${mb_id}</em>)는 탙퇴할 경우 재사용 및 복구가 불가능합니다.</p><br /><br />
					<p>√ 탈퇴후에는 아이디 (<em>${mb_id}</em>)로 데이터는 복구할 수 없습니다.</p><br /><br />
					<input type="checkbox" name="agree" value="1"> 안내 사항을 모두 확인하였으면, 이에 동의합니다.<br /><br />
				</div>
			</div>	    
		
		    <div align="center">
				<table>
					<tr>
						<td><button type="submit"
								style="margin-top: 20px; font-size: 1.6em; font-weight: bold;"
								class="topBtn">확인</button></td>
					</tr>
				</table>
				<br /><br />		
			</div>
		</fieldset>
	 </form>
	
  </div>	
</div>

</body>

</html>