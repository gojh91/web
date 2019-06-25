<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가게정보</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">

<!-- Stylesheets -->

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/slick/slick.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/JY/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/JY/css/main.css?ver=6">
</head>
<style>
body{
	padding-top:150px;
}
</style>
<body class="animsition" style="animation-duration: 1500ms; opacity: 1;">
	<div id="resInfo_back">
		<div style="width: 1100px; height: 100px; margin: 0 auto;">
			<p style="font-weight: bold; font-size: 21px; color: rgb(192, 57, 43);">
				가게정보 결과
			</p>
			<hr style="border: 0; height: 2px; background-color: #c3c3c3;">
		</div>
	</div>
	
<div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
			<div class="w-size13 p-t-30 respon5">
				<div class="wrap-slick3 flex-sb flex-w">

					<div class="wrap-slick3-dots">
						<ul class="slick3-dots" role="tablist">
							<li class="slick-active" role="presentation">
								 <div class="slick3-dot-overlay"></div> 
								 <img src="${pageContext.request.contextPath}${resInfo.res_imgSrc1}" id="imagebutton1">
							</li>
							<li role="presentation" >
								<div class="slick3-dot-overlay"></div>
								<img src="${pageContext.request.contextPath}${resInfo.res_imgSrc2}" id="imagebutton2">
							</li>
							<li role="presentation">
								<div class="slick3-dot-overlay"></div>
								<img src="${pageContext.request.contextPath}${resInfo.res_imgSrc3}" id="imagebutton3">
							</li>
						</ul>
					</div>

					<div class="slick3 slick-initialized slick-slider slick-dotted">
						<div class="slick-list draggable">
							<div class="slick-track" style="opacity: 1; width: 1404px;">
								<div class="item-slick3 slick-slide slick-current slick-active"
									data-thumb="${pageContext.request.contextPath}${resInfo.res_imgSrc1}"
									data-slick-index="0" aria-hidden="false" tabindex="0"
									role="tabpanel" id="slick-slide10"
									aria-describedby="slick-slide-control10"
									style="width: 468px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;">
									<div class="wrap-pic-w">
										<img
											src="${pageContext.request.contextPath}${resInfo.res_imgSrc1}">
									</div>
								</div>

								<div class="item-slick3 slick-slide"
									data-thumb="${pageContext.request.contextPath}${resInfo.res_imgSrc2}"
									data-slick-index="1" aria-hidden="true" tabindex="-1"
									role="tabpanel" id="slick-slide11"
									aria-describedby="slick-slide-control11"
									style="width: 468px; position: relative; left: -468px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
									<div class="wrap-pic-w">
										<img
											src="${pageContext.request.contextPath}${resInfo.res_imgSrc2}">
									</div>
								</div>

								<div class="item-slick3 slick-slide"
									data-thumb="${pageContext.request.contextPath}${resInfo.res_imgSrc3}"
									data-slick-index="2" aria-hidden="true" tabindex="-1"
									role="tabpanel" id="slick-slide12"
									aria-describedby="slick-slide-control12"
									style="width: 468px; position: relative; left: -936px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
									<div class="wrap-pic-w">
										<img
											src="${pageContext.request.contextPath}${resInfo.res_imgSrc3}">
									</div>
								</div>
							</div>
						</div>
					
					</div>
				</div>
				
				<form action="JYwrite.do" method="get">
			<br> 평점 : <input type="number" name="res_score"	required="required"> <br> <br> 
			<input type="hidden" name="res_num" value="${resInfo.res_num}"> 
			<button type="submit" class="btn btn-danger" value = "리뷰 작성">리뷰작성</button>
			<button type="button" class="btn btn-danger" onclick="location.href='JYreviewList2.do?res_num=${resInfo.res_num}'">리뷰보기</button>
			
		</form>
		<br> <br> <a href="JYreviewList.do"></a> <br>
		
		</div>
			<div class="w-size14 p-t-30 respon5">
				<h4 class="product-detail-name m-text16 p-b-13">${resInfo.res_name}</h4>
				
				
				<div class="p-b-25">
						<span class="s-text8 m-r-35">주소 : ${resInfo.res_addr}</span>
				</div>
				<div class="p-b-25">
						<span class="s-text8 m-r-35">전화번호 : ${resInfo.res_phone}</span>
				</div>
				<div class="p-b-25">
						<span class="s-text8 m-r-35">음식종류 : ${resInfo.res_foodType}</span>
				</div>
				<div class="p-b-25">
						<span class="s-text8 m-r-35">가격대 : ${resInfo.res_price}</span>
				</div>
				<div class="p-b-25">
						<span class="s-text8 m-r-35">추천수 : ${resInfo.res_likeCnt}</span>
				</div>
				<div class="p-b-25">
						<span class="s-text8 m-r-35">평점 : ${resInfo.res_score}</span>
				</div>
				<div class="p-b-25">
						<span class="s-text8 m-r-35">리뷰수 : ${resInfo.res_reviewCnt}</span>
				</div>


<%-- 				 <div class="container"> 
	<div class="dropdown-content dis-none p-t-15 p-b-23" style="display:block;">
    <!-- <span class="caret"></span> -->
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
       <li role="presentation"> 
	      <a role="menuitem" tabindex="-1">
	      	<c:forEach var="menu" items="${menu}">
				<option value="${menu.mn_num}">${menu.mn_name}</option>
		 	 </c:forEach>
		 	
		  </a>
	   </li>
     </ul>
  </div>  --%>
		
				<div class="wrap-dropdown-content bo6 p-t-15 p-b-14 active-dropdown-content">
					<h5 class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
						메뉴 
						<i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i> 
						<i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i> 
					</h5>

					<div class="dropdown-content dis-none p-t-15 p-b-23" 
						style="display:block;">
						<p class = "s-text8">
							<c:forEach var="menu" items="${menu}">
							        <option value="${menu.mn_num}">${menu.mn_name}</option>
							</c:forEach>
						</p>
					</div>
				</div>
					<div class="p-b-45">
						<span class="s-text8 m-r-35">주차 : ${resInfo.res_parking}</span>
						<span class="s-text8">영업시간 : ${resInfo.res_bHour}</span>
						<input type="hidden" name="res_num" value="${resInfo.res_num}">	
					</div>
				</div>
			</div>
		</div>

	
		<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>
			
<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect2')
		});
	</script>
<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/JY/js/slick-custom.js"></script>
<!--===============================================================================================-->
		<script>
		function clickImg(num){
			var img1 = document.getElementById('slick-slide10');
			var img2 = document.getElementById('slick-slide11');
			var img3 = document.getElementById('slick-slide12');
	
			switch(num)
			{
			case 1:
				img1.setAttribute('aria-hidden','false');
				img1.setAttribute('tabindex','0');
				img2.setAttribute('aria-hidden','true');
				img2.setAttribute('tabindex','-1');
				img3.setAttribute('aria-hidden','true');
				img3.setAttribute('tabindex','-1');
				
				break;
			case 2:
				img1.setAttribute('aria-hidden','true');
				img1.setAttribute('tabindex','-1');
				img2.setAttribute('aria-hidden','false');
				img2.setAttribute('tabindex','0');
				img3.setAttribute('aria-hidden','true');
				img3.setAttribute('tabindex','-1');
				break;
			case 3:
				img1.setAttribute('aria-hidden','true');
				img1.setAttribute('tabindex','-1');
				img2.setAttribute('aria-hidden','true');
				img2.setAttribute('tabindex','-1');
				img3.setAttribute('aria-hidden','false');
				img3.setAttribute('tabindex','0');
				break;
			}
		}
		var imgBtn1 = document.getElementById('imagebutton1');
		var imgBtn2 = document.getElementById('imagebutton2');
		var imgBtn3 = document.getElementById('imagebutton3');
		
		imgBtn1.setAttribute('onclick', 'clickImg(1)');
		imgBtn2.setAttribute('onclick', 'clickImg(2)');
		imgBtn3.setAttribute('onclick', 'clickImg(3)');
		
		
		
	</script>
	<script src="js/main.js"></script>
		
		<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
		</div>
		<!-- /.container --> </footer>
		
</body>
</html>

