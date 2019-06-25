<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>

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

.top {
	font-size: 1.6em;
	font-weight: bold;
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
/* BUTTON 3 */
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

.inputBox {
	background: none;
	border: 3px solid #000;
	border-radius: 5px;
	color: #000;
	font-size: 1em;
	font-weight: bold;
	padding: 10px 10px;
	position: relative;
}

.infoField {
	border: 3px solid #000;
	border-radius: 5px;
}

.infoTitle {
	font-size: 1.6em;
	font-weight: bold;
	color: black;
	text-decoration: none;
}

th {
	font-size: 1.2em;
}
.table {
	width : 100%;
	margin-top : 20px;
	border: 3px solid #000;
	border-radius: 5px;
	font-size: 1.2em;
	font-weight: bold;
}
.table th{
 	font-size: 1.6em;
} 
</style>
</head>
<div style="width: 1900px; height: 50px;" align="right">
	<div class="top">
		${mb_nickName} 님 
		<button type="button" class="topBtn"
			onclick="location.href='memberUpdateForm.do'">개인정보변경</button>
		<button type="button" class="topBtn"
			onclick="location.href='memberPrintForm.do'">출력</button>
		<button type="button" class="topBtn"
			onclick="location.href='memberLogout.do'">로그아웃</button>
	</div>

</div>
