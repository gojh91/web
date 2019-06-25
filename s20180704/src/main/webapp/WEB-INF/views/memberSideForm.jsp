<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<script>
	$(".menu").click(function() {
		$(".sub").slideUp();
		$(".sub", this).slideDown("fast");
		//$(this).css("background-color", "#fff");
		//$(this).css("color", "#000"); 
		//$(".leftBtn").css("background-color", "#fff");
		//$(".leftBtn").css("color", "#000");
		//$(".leftBtn", this).css("background-color", "#000");
		//$(".leftBtn", this).css("color", "#fff");
	});
	$(".leftSubBtn").mouseenter(function() {
		$(this).css("background-color", "#000");
		$(this).css("color", "#fff");
	}).mouseleave(function() {
		$(this).css("background-color", "#fff");
		$(this).css("color", "#000");
	});
	//$("#menu").click(function() {
	//	$("#sub", this).slideUp();
	//});
</script>
<style type="text/css">
.sub {
	display: none;
}

.leftBtn::after {
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.leftBtn {
	background: none;
	border: 0px solid #000;
	border-radius: 0px;
	color: #000;
	font-size: 1.6em;
	font-weight: bold;
	padding: 10px 50px;
	position: relative;
}

.leftSubBtn {
	background: none;
	border: 0px solid #000;
	border-radius: 0px;
	color: #000;
	font-size: 1.1em;
	font-weight: bold;
	padding: 10px;
	position: relative;
}

.leftBtn::before, .leftBtn::after {
	background: #000;
	content: '';
	position: absolute;
	z-index: -1;
}

.leftBtn:hover {
	color: #fff;
}

/* BUTTON 1 */
.leftBtn::after {
	height: 0;
	left: 0;
	top: 0;
	width: 100%;
}

.leftBtn:hover:after {
	height: 100%;
}
</style>
</head>
<div>
	<!-- <div style="width: 18%; float: left; width:100px;"> -->
	<div style="float: left">
		<div class="menu">
			<div class="leftSubBtn" onclick="location.href='bookmarkWrite.do'">즐겨찾기</div>
			<div class="leftSubBtn" onclick="location.href='myinterestWrite.do'">내관심사</div>
			<div class="leftSubBtn" onclick="location.href='memberSummaryList.do'">목록집계</div>
		</div>
	</div>
</div>

