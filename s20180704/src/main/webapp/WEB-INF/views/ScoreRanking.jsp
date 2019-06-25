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

     
      <p> <strong>리뷰가 많은 맛집 BEST5</strong></p>
      
      <div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${ScoreRanking0.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${ScoreRanking0.res_imgSrc2}" alt="${ScoreRanking0.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>1.${ScoreRanking0.res_name} &nbsp; ${ScoreRanking0.res_score}</strong></h2>
              <p> ${ScoreRanking0.res_addr}</p>
              
              <div>           
              	<p class="card-text">${ScoreRanking0.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${ScoreRanking0.getRes_num()}" class="btn btn-primary"> ${ScoreRanking0.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${ScoreRanking0.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
      </div>
      


		<div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${ScoreRanking1.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${ScoreRanking1.res_imgSrc2}" alt="${ScoreRanking1.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>2.${ScoreRanking1.res_name} &nbsp; ${ScoreRanking1.res_score}</strong></h2>
              <p> ${ScoreRanking1.res_addr}</p>
              
              <div>           
              	<p class="card-text">${ScoreRanking1.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${ScoreRanking1.getRes_num()}" class="btn btn-primary"> ${ScoreRanking1.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${ScoreRanking1.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
      </div>
      
      
		<div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${ScoreRanking2.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${ScoreRanking2.res_imgSrc2}" alt="${ScoreRanking2.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>3.${ScoreRanking2.res_name} &nbsp; ${ScoreRanking2.res_score}</strong></h2>
              <p> ${ScoreRanking2.res_addr}</p>
              
              <div>           
              	<p class="card-text">${ScoreRanking2.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${ScoreRanking2.getRes_num()}" class="btn btn-primary"> ${ScoreRanking2.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${ScoreRanking2.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
      </div>
      
      
		<div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${ScoreRanking3.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${ScoreRanking3.res_imgSrc2}" alt="${ScoreRanking3.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>4.${ScoreRanking3.res_name} &nbsp; ${ScoreRanking3.res_score}</strong></h2>
              <p> ${ScoreRanking3.res_addr}</p>
              
              <div>           
              	<p class="card-text">${ScoreRanking3.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${ScoreRanking3.getRes_num()}" class="btn btn-primary"> ${ScoreRanking3.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${ScoreRanking3.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
      </div>
      
      <div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="HgresInfo.do?res_num=${ScoreRanking4.getRes_num()}">
                <img class="img-fluid rounded" src="${pageContext.request.contextPath}${ScoreRanking4.res_imgSrc2}" alt="${ScoreRanking4.res_imgSrc2} 사진 2번">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title"><strong>5.${ScoreRanking4.res_name} &nbsp; ${ScoreRanking4.res_score}</strong></h2>
              <p> ${ScoreRanking4.res_addr}</p>
              
              <div>           
              	<p class="card-text">${ScoreRanking4.bd_content}</p>              
              </div>
              <a href="HgresInfo.do?res_num=${ScoreRanking4.getRes_num()}" class="btn btn-primary"> ${ScoreRanking4.res_name}더보기 &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        	<fmt:parseDate var="parsedRegDate" pattern="yyyy-MM-dd HH:mm:SS.s" value="${ScoreRanking4.bd_regDate}"/>	
        	<p>등록일 : <fmt:formatDate value="${parsedRegDate}" pattern="yyyy-MM-dd" /> </p> 
        </div>
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

