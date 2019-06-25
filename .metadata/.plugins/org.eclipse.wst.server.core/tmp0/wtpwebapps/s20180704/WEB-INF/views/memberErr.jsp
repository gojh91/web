<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${err == 'loginErr' }">
		<script type="text/javascript">
			alert("회원아이디 혹은 비밀번호가 틀렸습니다.");
			history.back();
		</script>
	</c:if>
	<c:if test="${err == 'memberSearchErr' }">
		<input type="hidden" name="mb_id" value="${member.mb_id }">
		<script type="text/javascript">
			alert("등록되지 않은 아이디입니다.");
			location.href = "memberUpdateForm5.do";
		</script>
	</c:if>
	<c:if test="${err == 'memberInsertErr' }">
		<script type="text/javascript">
			alert("관리자만 가능한 페이지 입니다.");
			history.back();
		</script>
	</c:if>
	<c:if test="${err == 'holSuccess' }">
		<script type="text/javascript">
			alert("휴가신청에 성공하셨습니다.");
			location.href = "restForm.do";
		</script>
	</c:if>
	<c:if test="${err == 'holErr' }">
		<script type="text/javascript">
			alert("휴가날짜가 중복되었습니다.");
			location.href = "restForm.do";
		</script>
	</c:if>
	<c:if test="${err == 'holDateErr' }">
		<script type="text/javascript">
			alert("휴가날짜가 중복되었습니다.");
			location.href = "restForm.do";
		</script>
	</c:if>
	<c:if test="${err == 'holCntErr' }">
		<script type="text/javascript">
			alert("남은 연차가 없습니다.");
			location.href = "restForm.do";
		</script>
	</c:if>
</body>
</html>