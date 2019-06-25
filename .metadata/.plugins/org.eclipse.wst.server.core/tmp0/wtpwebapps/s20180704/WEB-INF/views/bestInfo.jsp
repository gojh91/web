<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ include file="header.jsp" %>
	<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
  
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MEAL-TING(밀팅)</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/JH/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/JH/css/modern-business.css" rel="stylesheet">
  </head>


<body>
	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value="resources/JH/vendor/jquery/jquery.min.js"/>"></script>
	<script	src="<c:url value="resources/JH/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>



    <!-- Page Content -->
    <div class="container" style="padding-top:100px;">

     
      <p> <strong>추천이 높은 맛집 BEST5</strong></p>
      
      <div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${bestInfo0.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${bestInfo0.res_imgSrc2}" alt="${bestInfo0.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>1.${bestInfo0.res_name} &nbsp; ${bestInfo0.res_score}</strong></h2>
              <p> ${bestInfo0.res_addr}</p>
              
              <div>           
              	<p class="card-text">${bestInfo0.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${bestInfo0.getRes_num()}" class="btn btn-primary"> ${bestInfo0.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${bestInfo0.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
      </div>
      


		<div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${bestInfo1.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${bestInfo1.res_imgSrc2}" alt="${bestInfo1.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>2.${bestInfo1.res_name} &nbsp; ${bestInfo1.res_score}</strong></h2>
              <p> ${bestInfo1.res_addr}</p>
              
              <div>           
              	<p class="card-text">${bestInfo1.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${bestInfo1.getRes_num()}" class="btn btn-primary"> ${bestInfo1.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${bestInfo1.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
      </div>
      
      
      
   
		<div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${bestInfo2.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${bestInfo2.res_imgSrc2}" alt="${bestInfo2.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>3.${bestInfo2.res_name} &nbsp; ${bestInfo2.res_score}</strong></h2>
              <p> ${bestInfo2.res_addr}</p>
              
              <div>           
              	<p class="card-text">${bestInfo2.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${bestInfo2.getRes_num()}" class="btn btn-primary"> ${bestInfo2.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${bestInfo2.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
      </div>
      
      
		<div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${bestInfo3.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${bestInfo3.res_imgSrc2}" alt="${bestInfo3.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>4.${bestInfo3.res_name} &nbsp; ${bestInfo3.res_score}</strong></h2>
              <p> ${bestInfo3.res_addr}</p>
              
              <div>           
              	<p class="card-text">${bestInfo3.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${bestInfo3.getRes_num()}" class="btn btn-primary"> ${bestInfo3.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${bestInfo3.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
      </div>
      
      <div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${bestInfo4.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${bestInfo4.res_imgSrc2}" alt="${bestInfo4.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>5.${bestInfo4.res_name} &nbsp; ${bestInfo4.res_score}</strong></h2>
              <p> ${bestInfo4.res_addr}</p>
              
              <div>           
              	<p class="card-text">${bestInfo4.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${bestInfo4.getRes_num()}" class="btn btn-primary"> ${bestInfo4.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${bestInfo4.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
      </div>
      
      
<!-- 
      Pagination
      <ul class="pagination justify-content-center mb-4">
        <li class="page-item">
          <a class="page-link" href="#">&larr; Older</a>
        </li>
        <li class="page-item disabled">
          <a class="page-link" href="#">Newer &rarr;</a>
        </li>
      </ul>
    </div> -->

  <!-- /.container -->





  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="resources/JH/vendor/jquery/jquery.min.js"></script>
  <script src="resources/JH/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

</html>
