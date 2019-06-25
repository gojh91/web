<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String context = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript" src="resources/GO/js/jquery.js"></script>
<script type="text/javascript">

function keypress() { 
	str    = "";
	/* alert("keypress start.."); */
    var keyword=document.getElementById("searchblank").value;
    /* alert("keypress keyword"+keyword); */
		$.ajax({
		url:"<%=context%>/GOsearchRest/searchAjax.do",
		data : {
			keyword : keyword
		},
		dataType : 'json',
		success : function(data) {
			/* alert("keypress data" + data); */
			var jsondata = JSON.stringify(data);
			/* alert("jsondata->" + jsondata); */
			$(data).each(function() {
				str += '<a href=GOsearch.do?keyword='+this.res_name +'><li>' + this.res_name + '</li></a>';
			});
			/* alert("str->" + str); */
			$('#auto_div').html('<ul>' + str + '</ul>');
		}
	});
}


	
</script>

<style>
#auto_div{
	width:340px;
	max-height:70px;
	margin:0 auto ;
}
#auto_div li{
	list-style:none;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- 부트스트랩 핵심 CSS -->
<link href="resources/HS/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 

<!-- 템플릿 사용자 정의 스타일 -->
<link href="resources/HS/css/heroic-features.css?ver=2" rel="stylesheet">
<link href="resources/HS/css/modern-business.css" rel="stylesheet">

</head>
<body>

	<!-- Navigation -->

	<nav id="topbar" class="navbar navbar-expand-lg navbar-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="Main.do" style="margin-right: 50px; font-size: 50px; font-family: '맑은고딕'; font-weight: BOLD;">MEAL-TING</a>
			<a class="navbar-brand" href="Main.do" style="margin-left: -40px; font-size: 15px; font-family: '맑은고딕'; font-weight: BOLD;">밀팅</a>

			<!--검색창  -->
			
			<form class="navbar-form navbar-left" action="GOsearch.do" style="margin-left: 50px; width: 450px;">
				<div>
				<div style="float: left; width: 318.58px;">
 				<input id="searchblank" type="text" class="form-control"
						placeholder="검색" onkeyup="keypress()" name="keyword"
						value="${keyword}"> 
						</div>				   
					<div style="width: 38px; height: 38px; float: left;">
						<button class="btn btn-default" type="submit" style="background:lightgray; height:99%;">
							<img class="btn-img"
								src="${pageContext.request.contextPath}/resources/image/search_Btn.png?ver=1" style="width: 26px;">
						</button>
					</div>
					<div style="margin-top:40px ; overflow-y:scroll; position: fixed; float: left; background: white;">
						<div id="auto_div"></div>
					</div>
					
				</div>
			</form>     
			
			                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           

			<!-- 드롭다운 -->
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" 
			aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"
				style="margin-top: 6px; margin-bottom: 4px;">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- 메뉴리스트 -->
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
				       
					<li class="nav-item"><a class="nav-link" href="sdList.do">소셜다이닝</a></li>
					<li class="nav-item"><a class="nav-link" href="JYreviewList.do">리뷰피드</a></li>
					
					
					<!-- <li class="nav-item"><a class="nav-link" href="HSLogin.do?loginTF=false">로그인</a></li> --> <!-- 이부분을 지우고 고치시면돼요 -->
					<!-- login 값 : ${login} <br /> -->

					<li class="nav-item active">
		          		<c:if test="${loginTF == false}">
				            <a class="nav-link" onclick="location.href='HSLogin.do?loginTF= '">로그인</a>   <!-- 여기를 수정 ==> onclick="location.href='HSLogin.do'" -->
						</c:if> 
						
	              	<c:if test="${loginTF == true}">
              		    <!-- 
	              		<script type="text/javascript">
	              			function login(){
	              				alert("로그인 성공");
	              			}
	              			login();
	              		</script>
              			-->
	              		<a class="nav-link" class="navbar-toggler" data-toggle="collapse"
								data-target="#loginDropdown" aria-controls="loginDropdown"
								aria-expanded="false" aria-label="Toggle navigation"
								style="font-weight: bold;" href="#">${memberMe.mb_nickName} 님</a>
							<div class="collapse" id="loginDropdown">
								<!-- <ul class="navbar-nav ml-auto"> -->
								<ul class="nav nav-pills" style="width: 300px;">
									<li class="nav-item"><a class="nav-link"
										href='memberUpdateForm.do' style="font-size: 15px;">내 정보</a></li>
									<li class="nav-item"><a class="nav-link"
										href="bookmarkWriteForm" style="font-size: 15px;">즐겨찾기</a></li>
									<li class="nav-item"><a class="nav-link"
										href='myinterestWriteForm' style="font-size: 15px;">내관심사</a></li>
									<li class="nav-item"><a class="nav-link"
										href='memberLogout.do' style="font-size: 15px;"
										onclick="logout()">로그아웃</a></li>
								</ul>
								</div>
	          		</c:if>
	          		
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value="resources/HS/vendor/jquery/jquery.min.js"/>"></script>
	<script	src="<c:url value="resources/HS/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</body>


</html>