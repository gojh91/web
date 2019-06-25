<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<c:if test="${pw == null || pw == '' }">
	<font color="red">입력하신 정보가 틀렸습니다.</font>
</c:if>
<c:if test="${pw != null }">
	<font color="green"> 회원님의 비밀번호는 "${pw }" 입니다.</font>
</c:if>
