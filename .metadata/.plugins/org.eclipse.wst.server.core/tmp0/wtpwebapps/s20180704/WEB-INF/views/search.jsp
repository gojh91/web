<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/GO/css/search.css">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div id="search_back">
	<div id="search_resinfoboard">
			<div>
				<p
					style="font-weight: bold; font-size: 21px; color: rgb(192, 57, 43);">가게 정보</p>
				<hr style="border: 0; height: 3px; background-color: #c3c3c3;">
			</div>
			<c:forEach var="resinfo" items="${resinfokeyword}">

				<a href="HgresInfo.do?res_num=${resinfo.getRes_num()}">
					<div id="search_resinfoboard_result">
						<div id="search_resinfoboard_result_left">
							<%-- <img src="${pageContext.request.contextPath}${board.getBd_imgSrc()}" --%>
							<img
								src="${pageContext.request.contextPath}${resinfo.getRes_imgSrc1()}"
								style="margin: 20px 45px; height: 110px; width: 110px;">
						</div>
						<div id="search_resinfoboard_result_right">
							<p style="font-weight: bold; font-size: 18px">${resinfo.getRes_name()}</p>
							<p>${resinfo.getRes_phone()}</p>
							<p>${resinfo.getRes_foodType()}
							<p>주차공간 : ${resinfo.getRes_parking()}</p>
							<p>${resinfo.getRes_addr()}</p>
						</div>
					</div>
				</a>

			</c:forEach>
		</div>
		<div id="search_resinfoboard">
			<div>
				<p
					style="font-weight: bold; font-size: 21px; color: rgb(192, 57, 43);">검색결과</p>
				<hr style="border: 0; height: 3px; background-color: #c3c3c3;">
			</div>
			<c:forEach var="resinfoboard" items="${resinfoboardkeyword}">

				<a href="HgresInfo.do?res_num=${resinfoboard.getRes_num()}">
					<div id="search_resinfoboard_result">
						<div id="search_resinfoboard_result_left">
							<%-- <img src="${pageContext.request.contextPath}${board.getBd_imgSrc()}" --%>
							<img
								src="${pageContext.request.contextPath}${resinfoboard.getRes_imgSrc2()}"
								style="margin: 20px 45px; height: 110px; width: 110px;">
						</div>
						<div id="search_resinfoboard_result_right">
							<p style="font-weight: bold; font-size: 18px">${resinfoboard.getRes_name()}</p>
							<p>${resinfoboard.getBd_hashTag()}</p>
							<p>평점 : ${resinfoboard.getRes_score()}</p>
							<p>${resinfoboard.getRes_addr()}</p>
						</div>
					</div>
				</a>

			</c:forEach>
			<%-- <table border="1">
					<tr>
						<td>가게번호 : ${resinfoboard.getRes_num()} &nbsp;&nbsp;&nbsp;</td>
						<td>가게이름 : ${resinfoboard.getRes_name()}&nbsp;&nbsp;&nbsp;</td>
						<td>주소 : ${resinfoboard.getRes_addr()}&nbsp;&nbsp;&nbsp;</td>
						<td>전화번호 : ${resinfoboard.getRes_phone()}&nbsp;&nbsp;&nbsp;</td>
						<td>음식종류 : ${resinfoboard.getRes_foodType()}&nbsp;&nbsp;&nbsp;</td>
						<td>가격 : ${resinfoboard.getRes_price()}&nbsp;&nbsp;&nbsp;</td>
						<td>주차 : ${resinfoboard.getRes_parking()}&nbsp;&nbsp;&nbsp;</td>
						<td>영업시간 : ${resinfoboard.getRes_bHour()}&nbsp;&nbsp;&nbsp;</td>
						<td>추천수 : ${resinfoboard.getRes_likeCnt()}&nbsp;&nbsp;&nbsp;</td>
						<td>평점 : ${resinfoboard.getRes_score()}&nbsp;&nbsp;&nbsp;</td>
						<td>리뷰수 : ${resinfoboard.getRes_reviewCnt()}&nbsp;&nbsp;&nbsp;</td>
						<td>사진 저장 경로 : ${resinfoboard.getRes_imgSrc()}&nbsp;&nbsp;&nbsp;</td>
						<td>번호 : ${resinfoboard.getBd_num()} &nbsp;&nbsp;&nbsp;</td>
						<td>아이디 : ${resinfoboard.getMb_id()} &nbsp;&nbsp;&nbsp;</td>
						<td>제목 : ${resinfoboard.getBd_title()} &nbsp;&nbsp;&nbsp;</td>
						<td>내용 : ${resinfoboard.getBd_content()} &nbsp;&nbsp;&nbsp;</td>
						<td>방문자수 : ${resinfoboard.getBd_visitCnt()} &nbsp;&nbsp;&nbsp;</td>
						<td>좋아요 : ${resinfoboard.getBd_likeCnt()} &nbsp;&nbsp;&nbsp;</td>
						<td>해쉬태그 : ${resinfoboard.getBd_hashTag()} &nbsp;&nbsp;&nbsp;</td>
						<td>위치 : ${resinfoboard.getBd_location()} &nbsp;&nbsp;&nbsp;</td>
						<td>이미지 경로 : ${resinfoboard.getBd_imgSrc()} &nbsp;&nbsp;&nbsp;</td>
						<td>등록일 : ${resinfoboard.getBd_regDate()} &nbsp;&nbsp;&nbsp;</td>
						<td>분류 : ${resinfoboard.getBd_category()} &nbsp;&nbsp;&nbsp;</td>
						<td>평점 : ${resinfoboard.getBd_score()} &nbsp;&nbsp;&nbsp;</td>
					</tr>
				</table> --%>

		</div>
		<%-- <div id="search_board">
			<div>
				<p
					style="font-weight: bold; font-size: 21px; color: rgb(192, 57, 43);">검색
					결과</p>
				<hr style="border: 0; height: 3px; background-color: #c3c3c3;">
			</div>
			<c:forEach var="board" items="${boardkeyword}">
				<div id="search_board_result">
					<div id="search_board_result_left">
						<img
							src="${pageContext.request.contextPath}${board.getBd_imgSrc()}"
							style="margin: 20px 45px; height: 110px; width: 110px;">
					</div>
					<div id="search_board_result_right">
						<p style="font-weight: bold; font-size: 18px"></p>
					</div>
				</div>
				<table border="1">
					<tr>
						<td>번호 : ${board.getBd_num()} &nbsp;&nbsp;&nbsp;</td>
						<td>아이디 : ${board.getMb_id()} &nbsp;&nbsp;&nbsp;</td>
						<td>제목 : ${board.getBd_title()} &nbsp;&nbsp;&nbsp;</td>
						<td>내용 : ${board.getBd_content()} &nbsp;&nbsp;&nbsp;</td>
						<td>방문자수 : ${board.getBd_visitCnt()} &nbsp;&nbsp;&nbsp;</td>
						<td>좋아요 : ${board.getBd_likeCnt()} &nbsp;&nbsp;&nbsp;</td>
						<td>해쉬태그 : ${board.getBd_hashTag()} &nbsp;&nbsp;&nbsp;</td>
						<td>위치 : ${board.getBd_location()} &nbsp;&nbsp;&nbsp;</td>
						<td>이미지 경로 : ${board.getBd_imgSrc()} &nbsp;&nbsp;&nbsp;</td>
						<td>등록일 : ${board.getBd_regDate()} &nbsp;&nbsp;&nbsp;</td>
						<td>분류 : ${board.getBd_category()} &nbsp;&nbsp;&nbsp;</td>
						<td>음식점 번호 : ${board.getRes_num()} &nbsp;&nbsp;&nbsp;</td>
						<td>평점 : ${board.getBd_score()} &nbsp;&nbsp;&nbsp;</td>
					</tr>
				</table>
			</c:forEach>
		</div> --%>
		<%-- <div id="search_menu">
			<div>
				<p
					style="font-weight: bold; font-size: 21px; color: rgb(192, 57, 43);">메뉴</p>
				<hr style="border: 0; height: 3px; background-color: #c3c3c3;">
			</div>
			<c:forEach var="menu" items="${menukeyword}">

				<table border="1">
					<tr>
						<td>가게 번호 : ${menu.getRes_num()} &nbsp;&nbsp;&nbsp;</td>
						<td>메뉴 번호 : ${menu.getMn_num()}&nbsp;&nbsp;&nbsp;</td>
						<td>메뉴 이름 : ${menu.getMn_name()}&nbsp;&nbsp;&nbsp;</td>
						<td>메뉴 가격 : ${menu.getMn_price()}&nbsp;&nbsp;&nbsp;</td>
					</tr>
				</table>
			</c:forEach>
		</div> --%>
		
		<div class="search_reply" style="margin-top: 30px;">
			<div style="width: 1000; max-height: 50">
				<p
					style="font-weight: bold; font-size: 21px; color: rgb(192, 57, 43);">리뷰</p>
				<hr style="border: 0; height: 3px; background-color: #c3c3c3;">
			</div>
			<div align="center"
				style="width: 1000px; max-height: 750px; margin: 0 auto; overflow: scroll;">
				<c:forEach var="board" items="${boardkeyword}">
					<c:if test="${board.getBd_category()=='1'}">
						<boarder class="listul">
						<ul style="border: 1px solid #999999; border-radius: 20px; overflow: scroll;">
						<a href="JYreviewDetail.do?bd_num=${board.getBd_num()}">
							<div style="width: 800px; height: 43px; margin: 15px 0 0 0; ">
								<li style="width: 95px; height: 35px; overflow: scroll; ">글번호 :
									${board.getBd_num()}</li>
								<li class="listli" style="width: 190px; height: 35px; overflow: scroll;">작성자
									아이디 : ${board.getMb_id()}</li>
								<li class="listli" style="width: 295px; height: 35px; overflow: scroll;">댓글내용
									: ${board.getBd_content()}</li>
								<li class="listli" style="width: 195px; height: 35px; overflow: scroll;">등록일
									: <fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${board.bd_regDate}"/>
									  <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" /></li>
							</div>
							</a>
						</ul>

						</boarder>
					</c:if>
				</c:forEach>
			</div>
		</div>
		
		
		<div class="search_reply" style="margin-top: 30px;">
			<div style="width: 1000; max-height: 50">
				<p
					style="font-weight: bold; font-size: 21px; color: rgb(192, 57, 43);">소셜
					다이닝</p>
				<hr style="border: 0; height: 3px; background-color: #c3c3c3;">
			</div>
			<div align="center"
				style="width: 1000px; max-height: 750px; margin: 0 auto; overflow: scroll;">
				<c:forEach var="board" items="${boardkeyword}">
					<c:if test="${board.getBd_category()=='2'}">
						<boarder class="listul">
						<ul style="border: 1px solid #999999; border-radius: 20px; overflow: scroll;">
						<a href="sdDetail.do?bd_num=${board.getBd_num()}">
							<div style="width: 800px; height: 43px; margin: 15px 0 0 0; ">
								<li style="width: 95px; height: 35px; overflow: scroll;">글번호 :
									${board.getBd_num()}</li>
								<li class="listli" style="width: 190px; height: 35px; overflow: scroll;">작성자
									아이디 : ${board.getMb_id()}</li>
								<li class="listli" style="width: 295px; height: 35px; overflow: scroll;">댓글내용
									: ${board.getBd_content()}</li>
								<li class="listli" style="width: 195px; height: 35px; overflow: scroll;">등록일
									: <fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${board.bd_regDate}"/>
									  <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" /></li>
							</div>
							</a>
						</ul>
						
						</boarder>
					</c:if>
				</c:forEach>
			</div>
		</div>
		
		<%-- <div id="search_resinfo">
			<div>
				<p
					style="font-weight: bold; font-size: 21px; color: rgb(192, 57, 43);">음식점
					정보</p>
				<hr style="border: 0; height: 3px; background-color: #c3c3c3;">
			</div>
			<c:forEach var="resinfo" items="${resinfokeyword}">
				<table border="1">
					<tr>
						<td>가게번호 : ${resinfo.getRes_num()} &nbsp;&nbsp;&nbsp;</td>
						<td>가게이름 : ${resinfo.getRes_name()}&nbsp;&nbsp;&nbsp;</td>
						<td>주소 : ${resinfo.getRes_addr()}&nbsp;&nbsp;&nbsp;</td>
						<td>전화번호 : ${resinfo.getRes_phone()}&nbsp;&nbsp;&nbsp;</td>
						<td>음식종류 : ${resinfo.getRes_foodType()}&nbsp;&nbsp;&nbsp;</td>
						<td>가격 : ${resinfo.getRes_price()}&nbsp;&nbsp;&nbsp;</td>
						<td>주차 : ${resinfo.getRes_parking()}&nbsp;&nbsp;&nbsp;</td>
						<td>영업시간 : ${resinfo.getRes_bHour()}&nbsp;&nbsp;&nbsp;</td>
						<td>추천수 : ${resinfo.getRes_likeCnt()}&nbsp;&nbsp;&nbsp;</td>
						<td>평점 : ${resinfo.getRes_score()}&nbsp;&nbsp;&nbsp;</td>
						<td>리뷰수 : ${resinfo.getRes_reviewCnt()}&nbsp;&nbsp;&nbsp;</td>
						<td>사진 저장 경로 : ${resinfo.getRes_imgSrc()}&nbsp;&nbsp;&nbsp;</td>
					</tr>
				</table>
			</c:forEach>
		</div>
 --%>
		<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2018</p>
		</div>
		<!-- /.container --> </footer>
	</div>


</body>
</html>