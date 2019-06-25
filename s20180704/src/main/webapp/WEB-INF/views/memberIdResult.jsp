<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<c:if test="${id == null || id == '' }">
	<font color="red">입력하신 정보가 틀렸습니다.</font>
</c:if>
<c:if test="${id != null }">
	<font color="green"> 회원님의 아이디는 "${id }" 입니다.</font>
</c:if>
