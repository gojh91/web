<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰쓰기</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">

<!-- Stylesheets -->
<link href="${pageContext.request.contextPath}/resources/JY/common-css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/JY/common-css/ionicons.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/JY/single-post-1/css/styles.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/JY/single-post-1/css/responsive.css" rel="stylesheet">
</head>
<style>

	body{
		padding-top:150px;
		background-color:white;
	}
	h4{
		font-size:40px;
		color:#C0392B;
	}
	#completeBtn{
		width:100%;
		height:50px;
		font-size:20px;
		color:white;
		background-color:#C0392B;
	}
</style>
<body>
<section class="comment-section" style="background-color:white;">
      <div class="container" style="background-color:white;">
         <h4><b>		리뷰쓰기</b></h4><br>
         <div class="row">

            <div class="col-lg-1 col-md-0"></div>
               <div class="col-lg-10 col-md-12">
               <div class="comment-form">
                  <form action="JYinsert.do" method="get">
                     <div class="row">

                        <div class="col-sm-6">
                           <p>아이디</p><br>
                           <input type="text" aria-required="true" name="mb_id" class="form-control" value="${bd_id}" aria-invalid="true">
                        </div>
                        <div class="col-sm-6">
                           <p>가게 이름</p><br>
                           <input type="text" aria-required="true" id="res_name" class="form-control" value="${res_name}" aria-invalid="true" >
                           <input type="hidden" name="res_num" value="${board.res_num}">
                        </div>
                        
                        <div class="col-sm-6">
                           <p>위치</p><br>
                           <input type="text" aria-required="true" name="bd_location" class="form-control" placeholder="위치 입력" aria-invalid="true" >
                        </div>

                        
                        <div class="col-sm-6">
                           <p>평점</p><br>
                           <input type="number" aria-required="true" name="bd_score" class="form-control" value="${board.bd_score}" aria-invalid="true" >
                        </div> 
                        
                        
                        <div class="col-sm-12">
                           <textarea name="bd_title" rows="1" class="text-area-messge form-control" placeholder="제목을 입력해주세요" aria-required="true" aria-invalid="false" value="${bd_title}"></textarea>
                        </div>


                
						<div class="col-sm-12">
       						 <textarea id="imgsrc" name="bd_imgSrc" rows="1" class="text-area-messge form-control" placeholder="사진 첨부" aria-required="true" aria-invalid="false" value="${savedName}"></textarea>
       						 <button class="submit-btn" type="button" id="uploadBtn">이미지 첨부</button>
						</div>

                     
                        
                        <div class="col-sm-12">
                           <textarea name="bd_content" rows="6" class=
                           "text-area-messge form-control" placeholder="내용을입력해주세요" value="${bd_content}" aria-required="true" aria-invalid="false"></textarea>
                        </div>
                        <div class="col-sm-12">
                           <textarea  name ="bd_hashTag" rows="1" class="text-area-messge form-control" placeholder="해쉬태그를 입력해주세요 ex) #meal_ting #good" aria-required="true" aria-invalid="false" value="${bd_hashTag}"></textarea>
                        </div>

                     </div><!-- row -->
                     
                     <input type="submit" class="submit-btn" id="completeBtn" value="작성 완료">
                     
                  </form>
               </div><!-- comment-form -->
               
            </div>
         </div>
      </div><!-- container -->
   </section>
   <p>${saveMsg}</p>
   </body>

   <script>
      $('#uploadBtn').click(function(event){
         console.log('upload clicked');
         openPopUp();
      });
      function openPopUp(){
         window.name = "writeForm";
         var url = "uploadImgForm.do";
         var winWidth = 500;
         var winHeight = 400;
         var popUpOption = "width=" + winWidth + ", height=" + winHeight;
         var openPop = window.open(url, "파일 첨부", popUpOption);   
      }
   </script>
</html>