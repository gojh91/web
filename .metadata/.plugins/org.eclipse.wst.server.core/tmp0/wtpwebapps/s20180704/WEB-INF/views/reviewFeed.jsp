<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>리뷰피드</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	
	<!-- Stylesheets -->
	<link href="${pageContext.request.contextPath}/resources/JY/common-css/bootstrap.css" type="text/css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/JY/common-css/ionicons.css" type="text/css" rel="stylesheet">
	
	<link href="${pageContext.request.contextPath}/resources/JY/layout-1/css/styles.css" type="text/css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/JY/layout-1/css/responsive.css" type="text/css" rel="stylesheet">
	
</head>
<style>
body{
		padding-top:80px;
		background-color:white;
	}
	h3{
		font-size:40px;
		color:#C0392B;
	}
</style>
<body>
<section class="blog-area section">
	<div class="container">
		<div class="row">
		  	
	<c:forEach var="board" items="${reviewList}" varStatus="status">
	
		<div class="col-lg-4 col-md-6">
			<div class="card h-100">
				<div class="single-post post-style-1">
				
				 <%-- <div class="blog-image"><img src="${pageContext.request.contextPath}${board.bd_imgSrc}" alt="Blog Image"></div>  --%>
				 
				 <%-- ${member.mb_imgSrc} --%>
				 
				 <div class="blog-image"><img src="${pageContext.request.contextPath}/upload/${board.bd_imgSrc}" alt="Blog Image"></div>
				 <a class = "avatar" href = "JYmemberDetail.do?mb_id=${board.mb_id}" alt = "profile Image"><img src="${pageContext.request.contextPath}/upload/${board.mb_imgSrc}" onerror="this.src='${pageContext.request.contextPath}/resources/image/user-03.png'" width="60" height="60"></a> 
				
				<%-- <a class = "avatar" href = "JYmemberDetail.do?bd_num=${board.bd_num}" alt = "profile Image"><img src="${pageContext.request.contextPath}/resources/image/avatar-1-120x120.jpg"></a> --%>
				
				
				<div class="blog-info">
					<h4 class="title"><b><a href="JYreviewDetail.do?bd_num=${board.bd_num}">${board.bd_title}</a></b></h4>
						<ul class="post-footer">
							<li><a><i id="likeBtn" class="ion-heart" style="color:red;" onclick="location.href='JYaddLikeCnt.do?bd_num=${board.bd_num}'"></i>${board.bd_likeCnt}</a></li>
							<li><a><i class="ion-chatbubble" style="color:red;"></i>${board.bd_replyCnt}</a></li>
							<li><a><i class="ion-calendar" style="color:red;" ></i>
							<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${board.bd_regDate}"/>
              				<fmt:formatDate value="${parsedRegDate}" pattern="yy-MM-dd" /></a></li>
						</ul>
						
							</div><!-- "blog-info" -->
						</div><!-- single-post post-style-1 -->
					</div><!-- card h-100 -->
				</div><!-- col-lg-4 col-md-6 -->
				</c:forEach>
			
		</div><!-- row -->
			<a class="load-more-btn" href="#"><b>LOAD MORE</b></a>
	</div><!-- container -->
</section>

<form action="JYwrite.do" method="post" name="frm">
	 <table>

	  	<%--  <tr>
			<th>글번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>내용</th>
			<th>방문자수</th>
			<th>이미지파일</th>
			<th>해쉬태그</th>
			<th>위치</th>
			<th>좋아요</th>
			<th>등록일자</th>
			<th>맛집번호</th>
			<th>평점</th>
		</tr>
		
  		<c:forEach var="board" items="${reviewList}">
			<tr>
				<td>${board.bd_num}</td>
				<td>${board.mb_id}</td>
				<td><a href="JYreviewDetail.do?bd_num=${board.bd_num}">${board.bd_title}</a></td>
				<td>${board.bd_content}</td>
				<td>${board.bd_visitCnt}</td>
				<td>${board.bd_imgSrc}</td>
				<td>${board.bd_hashTag}</td>
				<td>${board.bd_location}</td>
				<td>${board.bd_likeCnt}</td>
				<td>${board.bd_regDate}</td>
				<td>${board.res_num}</td>
				<td>${board.bd_score}</td>
			</tr>
		</c:forEach>    --%>
			
	</table> 
</form>
<p>${saveMsg}</p>
</body>
<script>

  function setColor(){
	  console.log('like clicked');
  }
      
</script>
</html>