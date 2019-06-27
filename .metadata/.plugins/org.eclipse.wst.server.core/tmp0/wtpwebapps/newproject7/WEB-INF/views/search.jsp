<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/css/search.css">
<title>Insert title here</title>
</head>
<body>
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
		</div>
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
		<footer class="py-5 bg-dark">
			<div class="container">
				<p class="m-0 text-center text-white">Copyright &copy; Your
					Website 2019</p>
			</div>
		</footer>
	</div>
</body>
</html>