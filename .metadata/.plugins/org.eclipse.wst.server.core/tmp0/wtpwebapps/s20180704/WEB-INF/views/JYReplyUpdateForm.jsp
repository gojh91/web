<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>댓글수정</title>
</head>
<body>
<form action="JYReplyUpdate.do" method="post" name="frm">
<table>
   <tr>
      <td>
         <input type="hidden" name="bd_num"
         required="required" value="${JYReplyUpdateForm.bd_num}">
      </td>
   </tr>
   <tr>
      <td>
         <input type="hidden" name="re_seqNum"
         required="required" value="${JYReplyUpdateForm.re_seqNum}">
      </td>
   </tr>
   <tr>
      <th>내용</th>
      <td>
         <input type="text" name="re_content"
         required="required" value="${JYReplyUpdateForm.re_content}">
      </td>
   </tr>
</table>

<table>
   <tr>
      <td>
         <input type="submit" value="댓글수정">
      </td>
   </tr>
</table>

</form>
</body>
</html>