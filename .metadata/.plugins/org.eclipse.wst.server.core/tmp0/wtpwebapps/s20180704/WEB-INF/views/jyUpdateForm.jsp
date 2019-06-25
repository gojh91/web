<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 수정</title>
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
         <h4><b>		리뷰수정</b></h4><br>
         <div class="row">

            <div class="col-lg-1 col-md-0"></div>
               <div class="col-lg-10 col-md-12">
               <div class="comment-form">
                  <form action="JYupdate.do" method="post" name="frm">
                     <div class="row">

                        <div class="col-sm-6">
                           <input type="hidden" name="bd_num" required="required" value="${jyUpdateForm.bd_num}">
                           <p>아이디</p><br>
                           <input type="text" aria-required="true" name="mb_id" class="form-control" value="${jyUpdateForm.mb_id}" aria-invalid="true">
                        </div>
                        <div class="col-sm-6">
                           <p>가게 번호</p><br>
                           <input type="number" aria-required="true" name="res_num" class="form-control" value="${jyUpdateForm.res_num}" aria-invalid="true">
                        </div>
                        
                        <div class="col-sm-6">
                           <p>위치</p><br>
                           <input type="text" aria-required="true" name="bd_location" class="form-control" value="${jyUpdateForm.bd_location}" aria-invalid="true" >
                        </div>

                        
                        <div class="col-sm-6">
                           <p>평점</p><br>
                           <input type="number" aria-required="true" name="bd_score" class="form-control" value="${jyUpdateForm.bd_score}" aria-invalid="true" >
                        </div> 
                        
                        
                        <div class="col-sm-12">
                           <input name="bd_title" rows="1" class="text-area-messge form-control" aria-required="true" aria-invalid="false" value="${jyUpdateForm.bd_title}">
                        </div>


                
						<div class="col-sm-12">
       						 <input id="imgsrc" name="bd_imgSrc" rows="1" class="text-area-messge form-control"  aria-required="true" aria-invalid="false" value="${jyUpdateForm.bd_imgSrc}">
       						 <button class="submit-btn" type="button" id="uploadBtn">이미지 첨부</button>
						</div>

                     
                        
                        <div class="col-sm-12">
                           <input name="bd_content" rows="6" class=
                           "text-area-messge form-control" value="${jyUpdateForm.bd_content}" aria-required="true" aria-invalid="false">
                        </div>
                        <div class="col-sm-12">
                           <input  name ="bd_hashTag" rows="1" class="text-area-messge form-control" aria-required="true" aria-invalid="false" value="${jyUpdateForm.bd_hashTag}">
                        </div>

                     </div><!-- row -->
                     
                     <input type="submit" class="submit-btn" id="completeBtn" value="수정 완료">
                     
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





































<%-- <form action="JYupdate.do" method="post" name="frm">
<table>
   <tr>
      <td>
         <input type="hidden" name="bd_num"
         required="required" value="${jyUpdateForm.bd_num}">
      </td>
   </tr>
   <tr><th>작성자</th><td>${jyUpdateForm.mb_id}</td></tr>
   <tr>
      <th>제목</th>
      <td>
         <input type="text" name="bd_title"
         required="required" value="${jyUpdateForm.bd_title}">
      </td>
   </tr>
   <tr>
      <th>내용</th>
      <td>
         <input type="text" name="bd_content"
         required="required" value="${jyUpdateForm.bd_content}">
      </td>
   </tr>
   <tr>
      <th>이미지파일</th>
      <td>
         <input type="text" name="bd_imgSrc"
         required="required" value="${jyUpdateForm.bd_imgSrc}">
      </td>
   </tr>
   <tr>
      <th>해시태그</th>
      <td>
         <input type="text" name="bd_hashTag"
         required="required" value="${jyUpdateForm.bd_hashTag}">
      </td>
   </tr>
   <tr>
      <th>위치</th>
      <td>
         <input type="text" name="bd_location"
         required="required" value="${jyUpdateForm.bd_location}">
      </td>
   </tr>
   <tr><th>등록일자</th><td>${jyUpdateForm.bd_regDate}</td></tr>
   <tr><th>맛집번호</th><td>${jyUpdateForm.res_num}</td></tr>
   <tr>
      <th>평점</th>
      <td>
         <input type="text" name="bd_score"
         required="required" value="${jyUpdateForm.bd_score}">
      </td>
   </tr>
   
</table>
<table
   style="
   margin: auto;
   "
>
   <tr>
      <td>
         <input type="button" value="메인" 
         onclick="location.href='sdList.do'">
         <input type="submit" value="수정">
      </td>
   </tr>
</table>
</form>

</body>
</html> --%>