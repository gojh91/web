<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<style type="text/css">
.row{margin-right: 0px; margin-left: 0px; margin-top:0px;}
.col-lg-3{margin-top: 100px;}
.col-md-4{margin-top: 100px;}
.card-body{padding:0;}

.portfolio-item{padding-left: 40px;}
footer{margin-top: 100px;}
h3{color:#ff792a;}
h4{color:#C0392B;}
a{color:#C0392B;}
hr{border: solid 1px #C0392B; margin-top: 50px;}

</style>


<title>MEAL-TING(밀팅)</title>

</head>

<body>


        <div class="row no-gutters" >

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="JhBestInfo.do" class="portfolio-popup">
                <img src="${pageContext.request.contextPath}${mainList20.res_imgSrc3}" alt="">
              		<h3>추천이  높은 맛집 BEST 5!</h3>         
              </a>
            </div>
          </div>


          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="ReviewRanking.do" class="portfolio-popup">
                <img src="${pageContext.request.contextPath}${mainList17.res_imgSrc2}" alt="">
              		<h3>리뷰가 많은 맛집 BEST 5!</h3>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="ScoreRanking.do" class="portfolio-popup">
                <img src="${pageContext.request.contextPath}${mainList9.res_imgSrc3}" alt="">
              		<h3>평점이 높은 맛집 BEST 5!</h3>      
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/portfolio/8.jpg" class="portfolio-popup">
                <img src="${pageContext.request.contextPath}${mainList11.res_imgSrc3}" alt="">
              		<h3>밀팅 추천 맛집 BEST 5!</h3>
              </a>
            </div>
          </div>
        </div>
<hr>
	    

	    <div class="container" style="padding-top: 50px;">

	      <!-- Portfolio Section -->
			      
	    <c:if test= "${mainList0.gubun == 1}" >
	    
	    <div class="row">
   		
        <div class="col-lg-3 col-md-4" style="margin-top: 65px;">
        
        <h4>리뷰가 많은 인기식당</h4>
        <!--   <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList0.res_num}">
            <img class="card-img-top" src="${pageContext.request.contextPath}${mainList0.res_imgSrc1}" alt="정돈1번사진 서버">
            </a>
            
            <div class="card-body">   
            <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList0.res_num}"> ${mainList0.res_name}</a>
            </h2> 
            <p class="card-text">      	
              		<strong> ${mainList0.res_addr} <br></strong> 
              		평점 : ${mainList0.res_score}<br> 
              		리뷰 : ${mainList0.res_reviewCnt}<br> 
              		좋아요 : ${mainList0.res_likeCnt}
            </p>
            </div>
         <!--  </div> -->
        </div>             
             
        <div class="col-lg-3 col-md-4">
          <!-- <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList1.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList1.res_imgSrc1}" alt=""></a>
            
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList1.res_num}"> ${mainList1.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong>${mainList1.res_addr}<br></strong>  
              			평점 : ${mainList1.res_score}<br>
              			리뷰 : ${mainList1.res_reviewCnt}<br>	
              			좋아요 : ${mainList1.res_likeCnt} 			
             </p>
            </div>
        <!--   </div> -->
        </div>
                        
        <div class="col-lg-3 col-md-4">
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList2.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList2.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList2.res_num}"> ${mainList2.res_name}</a>
              </h2>
              <p class="card-text">  
             			<strong>${mainList2.res_addr}<br></strong> 
              			평점  : ${mainList2.res_score} <br> 
              			리뷰 : ${mainList2.res_reviewCnt} <br>
              			좋아요 : ${mainList2.res_likeCnt}
              </p>
            </div>
        <!--   </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList3.res_num}">
            <img class="card-img-top" src="${pageContext.request.contextPath}${mainList3.res_imgSrc1}" alt="">
            </a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList3.res_num}">${mainList3.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong> ${mainList3.res_addr}<br> </strong>
              			평점 : ${mainList3.res_score}<br>
              			리뷰 :  ${mainList3.res_reviewCnt}<br>
              			좋아요 : ${mainList3.res_likeCnt}
              </p>
            </div>
        <!--   </div> -->
        </div>
        
        
        
        <div class="col-lg-3 col-md-4">
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList4.res_num}">
            <img class="card-img-top" src="${pageContext.request.contextPath}${mainList4.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList4.res_num}">${mainList4.res_name}</a>
              </h2>
              <p class="card-text">
             			<strong>${mainList4.res_addr}<br></strong>
              			평점 : ${mainList4.res_score}<br>
              			리뷰 :  ${mainList4.res_reviewCnt}<br>
              			좋아요 : ${mainList4.res_likeCnt}
              </p>
            </div>
    <!--       </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList5.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList5.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList5.res_num}">${mainList5.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong>${mainList5.res_addr}<br></strong>
              			평점 : ${mainList5.res_score}<br>
              			리뷰 :  ${mainList5.res_reviewCnt}<br>
              			좋아요 : ${mainList5.res_likeCnt}
              </p>
            </div>
         <!--  </div> -->
        </div>
        
        <div class="col-lg-3 col-md-4">
          <!-- <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList6.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList6.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList6.res_num}">${mainList6.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong> ${mainList6.res_addr}<br> </strong>
              			평점 : ${mainList6.res_score}<br>
              			리뷰 :  ${mainList6.res_reviewCnt}<br>
              			좋아요 : ${mainList6.res_likeCnt}
              </p>
            </div>
          <!-- </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
        <!--   <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList7.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList7.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList7.res_num}">${mainList7.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong> ${mainList7.res_addr}<br> </strong>
              			평점 : ${mainList7.res_score}<br>
              			리뷰 :  ${mainList7.res_reviewCnt}<br>
              			좋아요 : ${mainList7.res_likeCnt}
              </p>
            </div>
          <!-- </div> -->
        </div>
        
        
     </div>
    </c:if>
<hr>

      <!-- Portfolio Section -->
	
	

	<c:if test="${mainList8.gubun == 2}">
	 <div class="row">
          <div class="col-lg-3 col-md-4" style="margin-top: 65px;">
          <h4>평점이 높은 인기식당</h4>
        <!--   <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList8.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList8.res_imgSrc1}" alt=""></a>           
            <div class="card-body">   
            <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList8.res_num}"> ${mainList8.res_name}</a>
              </h2>       	
              			<strong>${mainList8.res_addr}<br></strong>
              			평점 : ${mainList8.res_score}<br>
              			리뷰 :  ${mainList8.res_reviewCnt}<br>
              			좋아요 : ${mainList8.res_likeCnt}
            </div>
         <!--  </div> -->
        </div>
        
        <div class="col-lg-3 col-md-4">
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList9.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList9.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList9.res_num}"> ${mainList9.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong>${mainList9.res_addr}<br></strong>
              			평점 : ${mainList9.res_score}<br>
              			리뷰 :  ${mainList9.res_reviewCnt}<br>
              			좋아요 : ${mainList9.res_likeCnt}
             </p>
            </div>
        <!--   </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
     <!--      <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList10.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList10.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList10.res_num}">${mainList10.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong>${mainList10.res_addr}<br></strong>
              			평점 : ${mainList10.res_score}<br>
              			리뷰 :  ${mainList10.res_reviewCnt}<br>
              			좋아요 : ${mainList10.res_likeCnt}
              </p>
            </div>
        <!--   </div> -->
        </div>
        
        
        
        
        <div class="col-lg-3 col-md-4">
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList11.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList11.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList11.res_num}"> ${mainList11.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong>${mainList11.res_addr}<br></strong>
              			평점 : ${mainList11.res_score}<br>
              			리뷰 :  ${mainList11.res_reviewCnt}<br>
              			좋아요 : ${mainList11.res_likeCnt}
              </p>
            </div>
          <!-- </div> -->
        </div>
        <div class="col-lg-3 col-md-4">
          <!-- <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList12.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList12.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList12.res_num}">${mainList12.res_name}</a>
              </h2>
              <p class="card-text">
              			 <strong>${mainList12.res_addr}<br></strong>
              			평점 : ${mainList12.res_score}<br>
              			리뷰 :  ${mainList12.res_reviewCnt}<br>
              			좋아요 : ${mainList12.res_likeCnt}
              </p>
            </div>
         <!--  </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList13.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList13.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList13.res_num}">${mainList13.res_name}</a>
              </h2>
              <p class="card-text">
             			<strong>${mainList13.res_addr}<br></strong>
              			평점 : ${mainList13.res_score}<br>
              			리뷰 :  ${mainList13.res_reviewCnt}<br>
              			좋아요 : ${mainList13.res_likeCnt}
              </p>
            </div>
         <!--  </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
        <!--   <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList14.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList14.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList14.res_num}">${mainList14.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong> ${mainList14.res_addr}<br> </strong>
              			평점 : ${mainList14.res_score}<br>
              			리뷰 :  ${mainList14.res_reviewCnt}<br>
              			좋아요 : ${mainList14.res_likeCnt}
              </p>
            </div>
     <!--      </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
        <!--   <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList15.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList15.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList15.res_num}">${mainList15.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong> ${mainList15.res_addr}<br> </strong>
              			평점 : ${mainList15.res_score}<br>
              			리뷰 :  ${mainList15.res_reviewCnt}<br>
              			좋아요 : ${mainList15.res_likeCnt}
              </p>
            </div>
         <!--  </div> -->
        </div>
        
     </div> 
    </c:if>
<hr>    
    <c:if test="${mainList16.gubun == 3}">
	
	 <div class="row">
          <div class="col-lg-3 col-md-4" style="margin-top: 65px;">
        <h4>추천이 많은 인기식당</h4>
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList16.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList16.res_imgSrc1}" alt=""></a>
            
            <div class="card-body">   
            <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList16.res_num}"> ${mainList16.res_name}</a>
              </h2>       	
              			<strong>${mainList16.res_addr}<br></strong>
              			평점 : ${mainList16.res_score}<br>
              			리뷰 :  ${mainList16.res_reviewCnt}<br>
              			좋아요 : ${mainList16.res_likeCnt}
            </div>
       <!--    </div> -->
        </div>
        
        <div class="col-lg-3 col-md-4">
     <!--      <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList17.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList17.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList17.res_num}"> ${mainList17.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong>${mainList17.res_addr}<br></strong>
              			평점 : ${mainList17.res_score}<br>
              			리뷰 :  ${mainList17.res_reviewCnt}<br>
              			좋아요 : ${mainList17.res_likeCnt}
             </p>
            </div>
         <!--  </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
        <!--   <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList18.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList18.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList18.res_num}">${mainList18.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong>${mainList18.res_addr}<br></strong>
              			평점 : ${mainList18.res_score}<br>
              			리뷰 :  ${mainList18.res_reviewCnt}<br>
              			좋아요 : ${mainList18.res_likeCnt}
              </p>
            </div>
        <!--   </div> -->
        </div>
        
        
        
        
        <div class="col-lg-3 col-md-4">
          <!-- <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList19.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList19.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList19.res_num}"> ${mainList19.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong>${mainList19.res_addr}<br></strong>
              			평점 : ${mainList19.res_score}<br>
              			리뷰 :  ${mainList19.res_reviewCnt}<br>
              			좋아요 : ${mainList19.res_likeCnt}
              </p>
            </div>
          <!-- </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList20.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList20.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList20.res_num}">${mainList20.res_name}</a>
              </h2>
              <p class="card-text">
              			 <strong>${mainList20.res_addr}<br></strong>
              			평점 : ${mainList20.res_score}<br>
              			리뷰 :  ${mainList20.res_reviewCnt}<br>
              			좋아요 : ${mainList20.res_likeCnt}
              </p>
            </div>
         <!--  </div> -->
        </div>
        <div class="col-lg-3 col-md-4">
       <!--    <div class="card h-100"> -->
            <a href=""HgresInfo.do?res_num=${mainList21.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList21.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList21.res_num}">${mainList21.res_name}</a>
              </h2>
              <p class="card-text">
             			<strong>${mainList21.res_addr}<br></strong>
              			평점 : ${mainList21.res_score}<br>
              			리뷰 :  ${mainList21.res_reviewCnt}<br>
              			좋아요 : ${mainList21.res_likeCnt}
              </p>
            </div>
         <!--  </div> -->
        </div>
        
        <div class="col-lg-3 col-md-4">
        <!--   <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList22.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList22.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList22.res_num}">${mainList22.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong> ${mainList22.res_addr}<br> </strong>
              			평점 : ${mainList22.res_score}<br>
              			리뷰 :  ${mainList22.res_reviewCnt}<br>
              			좋아요 : ${mainList22.res_likeCnt}
              </p>
            </div>
     <!--      </div> -->
        </div>
        
        
        <div class="col-lg-3 col-md-4">
         <!--  <div class="card h-100"> -->
            <a href="HgresInfo.do?res_num=${mainList23.res_num}"><img class="card-img-top" src="${pageContext.request.contextPath}${mainList23.res_imgSrc1}" alt=""></a>
            <div class="card-body">
              <h2 class="card-title">
                <a href="HgresInfo.do?res_num=${mainList23.res_num}">${mainList23.res_name}</a>
              </h2>
              <p class="card-text">
              			<strong> ${mainList23.res_addr}<br> </strong>
              			평점 : ${mainList23.res_score}<br>
              			리뷰 :  ${mainList23.res_reviewCnt}<br>
              			좋아요 : ${mainList23.res_likeCnt}
              </p>
            </div>
        <!--   </div> -->
        </div>
        
     </div> 
    </c:if> 
    <hr>
</div>


    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
    </footer>
 

    
</body>
</html>