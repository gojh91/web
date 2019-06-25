<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰상세보기</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">

<!-- Stylesheets -->
<link href="${pageContext.request.contextPath}/resources/JY/common-css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/JY/common-css/ionicons.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/JY/single-post-1/css/styles.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/JY/single-post-1/css/responsive.css?ver=2" rel="stylesheet">
</head>

<body>
<div class="slider">
		<div class="display-table  center-text">
			<h1 class="title display-table-cell"><b>ReviewFeed</b></h1>
		</div>
	</div>
<!-- slider -->
	<section class="post-area section">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-12 no-right-padding">
				<div class="main-post">
					<div class="blog-post-inner">
						<div class="post-info">

							<div class="left-area">
								<%-- <a class="avatar" href="JYmemberDetail.do?mb_id=${board.mb_id}">${board.bd_imgSrc} --%>
								 <a class = "avatar" href = "JYmemberDetail.do?mb_id=${board.mb_id}" alt="profile Image"><img src="${pageContext.request.contextPath}/upload/${JYmemberDetail.mb_imgSrc}" 
								 onerror="this.src='${pageContext.request.contextPath}/resources/image/user-03.png'" width="60px" height="60px"></a> 
							</div>

							<div class="middle-area">
								<a class="name" href="JYmemberDetail.do?mb_id=${board.mb_id}">${JYmemberDetail.mb_nickName}</a>
								<br><!-- 평점 -->${board.bd_score}<br>
							</div>
								<div class="right-area">
								<h6><fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${board.bd_regDate}"/>
              					<fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" /></h6>
               
							</div>
						</div><!-- post-info -->
							
							<h3 class="title"><b>${board.bd_title}</b></h3> 
							
							<ul class ="tags">
								<li><a href="GOsearch.do?login=false&nick=NULL&keyword=${board.bd_location}">${board.bd_location}</a></li>
							</ul>
						
							
							<div class="post-image">
								<img src="${pageContext.request.contextPath}/upload/${board.bd_imgSrc}">
							</div>
							
								<p class="para">${board.bd_content}</p>
						
							<!-- blog-post-inner -->
							<div class="post-icons-area">
								<ul class="post-icons">
									<li><a><i class="ion-heart" style="color:red;" onclick="location.href='JYaddLikeCnt2.do?bd_num=${board.bd_num}'"></i>${board.bd_likeCnt}</a></li>
									<li><a><i class="ion-chatbubble" style="color:red;"></i>${replyCnt}</a></li>
									<li><a><i class="ion-eye" style="color:red;"></i>${board.bd_visitCnt}</a></li>
								</ul>
							</div>
							<!-- post-info -->
						</div>
						<!-- main-post -->
					</div>
					<!-- col-lg-8 col-md-12 -->
					
					<div class="tag-area">
							<h4 class="title"><b>HashTag</b></h4>
							<ul>
								<c:forEach var="hashTag" items="${hashList}">
									<li><a href="GOsearch.do?login=false&nick=NULL&keyword=${hashTag}">#${hashTag}</a></li>
								</c:forEach>
							</ul>
						</div>
						</div>	
						
						</div>
						</div>
						</section>
						
						
	<section class="comment-section">
		<div class="container">
			<h4><b>Reply</b></h4>
			<div class="row">

				<div class="col-lg-8 col-md-12">
					<div class="comment-form">
						<form action="JYreplyWrite.do" method="get">
							<div class="row">

								<div class="col-sm-6">
									<input type="text" aria-required="true" name="mb_id" class="form-control" value="${memberId}" aria-invalid="true" required>
								</div><!-- col-sm-6 -->
								
								<div class="col-sm-12">
									<textarea style= "resize: none" name="re_content" rows="2" class="text-area-messge form-control" placeholder="Enter your comment" aria-required="true" aria-invalid="false" ></textarea>
									<input type="hidden" name="bd_num" value="${board.bd_num}">	
								</div><!-- col-sm-12 -->
								<div class="col-sm-12">
									<button class="submit-btn" value="${JYReplyUpdateForm.re_content}"> <b>COMMENT</b></button>
									

								</div><!-- col-sm-12 -->

							</div><!-- row -->
						</form>
					</div>
						
			<!-- comment-form -->
			<h4>
				<b>COMMENTS</b>
			</h4>
				<c:forEach var="reply" items="${replyList}">
					<div class="commnets-area">
							<div class="comment">
							<ul>
								<div class="post-info">
									<div class="left-area">
										<a class = "avatar" href = "JYmemberDetail.do?mb_id=${reply.mb_id}" alt="profile Image">
											<img src="${pageContext.request.contextPath}/upload/${replyImg[reply.mb_id]}" onerror="this.src='${pageContext.request.contextPath}/resources/image/user-03.png'" width="60px" height="60px">
										</a> 
									</div>

									<div class="middle-area">
										<a class="name">${reply.mb_id}</a>

									</div>
									<div class="right-area">
										<h6 class="date">
											<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${reply.re_regDate}"/>
											<fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" />
										</h6>

									</div><!-- right-area -->
								</div><!-- post-info -->
							</ul>
							
						<p>${reply.re_content}</p>
						<div class="post-footer post-info">
							<div class="right-area">
								<h5><input type="button" value="수정"
									onclick="location.href='JYReplyUpdateForm.do?bd_num=${board.bd_num}&re_seqNum=${reply.re_seqNum}&re_content=${reply.re_content}'">
								<input type="button" value="삭제"
									onclick="location.href='JYReplyDelete.do?bd_num=${board.bd_num}&re_seqNum=${reply.re_seqNum}'">
								</h5>
							</div>
						</div>
					</div>
				</div>
				
				</c:forEach>
				<div style = "margin-bottom: 100px;">
				<td><input type="button" value="목록"
						onclick="location.href='JYreviewList.do'"> <input
						type="button" value="수정"
						onclick="location.href='JYupdateForm.do?bd_num=${board.bd_num}'">

					
						<input type="button" value="삭제"
						onclick="location.href='JYdelete.do?bd_num=${board.bd_num}'">
			
			</td>
			</div>
			</div><!-- col-lg-8 col-md-12 no-right-padding -->
			</div><!-- row -->
		</div><!-- container -->
	
	</section>
		
		
			<%-- <table>
				<tr><th>글번호</th><td>${board.bd_num}</td></tr>
				<tr><th>작성자</th><td><a href="JYmemberDetail.do?mb_id=${board.mb_id}">${board.mb_id}</a></td></tr>
				<tr><th>제목</th><td>${board.bd_title}</td></tr>
				<tr><th>내용</th><td>${board.bd_content}</td></tr>
				<tr><th>방문자수</th><td>${board.bd_visitCnt}</td></tr>
				<tr><th>이미지파일</th><td>${board.bd_imgSrc}</td></tr>
				<tr><th>해쉬태그</th><td>${board.bd_hashTag}</td></tr>
				<tr><th>위치</th><td>${board.bd_location}</td></tr>
				<tr><th>좋아요</th><td>${board.bd_likeCnt}</td></tr>
				<tr><th>등록일자</th><td>${board.bd_regDate}</td></tr>
				<tr><th>맛집번호</th><td>${board.res_num}</td></tr>
				<tr><th>평점</th><td>${board.bd_score}</td></tr>
				
			</table> --%>
		<form action="JYreplyWrite.do" method="get">
			<table>
		
			<%-- <tr>
				<th>작성자</th>
				<td><input type="text" name="mb_id"></td>
			</tr>
			<tr>
				<th>댓글작성</th>
				<td><input type="text" name="re_content"> 
				<input type="hidden" name="bd_num" value="${board.bd_num}">
				<input type="submit" value="등록"></td>
			</tr>
		
		<tr>
			<th>댓글번호</th>
			<th>작성자</th>
			<th>내용</th>
			<th>등록일자</th>
		</tr> --%>

		<%-- <c:forEach var="reply" items="${replyList}">
			<tr>
				<td>${reply.re_seqNum}</td>
				<td>${reply.mb_id}</td>
				<td>${reply.re_content}</td>
				<td>
					<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${reply.re_regDate}"/>
					<fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd HH:mm" />
				</td>

				<td><input type="button" value="수정"
					onclick="location.href='JYReplyUpdateForm.do?bd_num=${board.bd_num}&re_seqNum=${reply.re_seqNum}&re_content=${reply.re_content}'">
					<input type="button" value="삭제"
					onclick="location.href='JYReplyDelete.do?bd_num=${board.bd_num}&re_seqNum=${reply.re_seqNum}'">
				</td>
			</tr>

		</c:forEach> --%>
	</table>
	</form>
</body>
</html>