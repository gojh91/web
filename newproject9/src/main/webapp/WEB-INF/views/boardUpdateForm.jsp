<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function Check(){ 
		var message=confirm("수정하시겠습니까?");
		if (message==true){
			return true;
		}else{
			alert("수정 취소 되었습니다.");
			return false;
		} 
	} 
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="boardUpdate.do" method="post" name="frm"
		onSubmit="return Check()">
		<input type="hidden" name="bd_num" required="required"
			value="${board.bd_num}">
		<div class="listBack2">
			<div class="list2">
				<div class="title2">
					<input class="text" type="text" name="bd_title" required="required"
						placeholder="제목" maxlength="100" value="${board.bd_title}">
				</div>
				<div class="location2">
					<input class="text" type="text" name="bd_location"
						required="required" placeholder="위치" maxlength="33"
						value="${board.bd_location}">
				</div>
				<div class="content2">
					<textarea class="text2" name="bd_content" required="required"
						placeholder="내용">${board.bd_content}</textarea>
				</div>
				<div class="hashTag2">
					<input class="text" type="text" name="bd_hashTag"
						required="required" placeholder="해쉬태그" maxlength="166"
						value="${board.bd_hashTag}">
				</div>
				<input class="submit" type="submit" value="수정">
				<input type="button" onclick="history.back()" value="취소">
			</div>
		</div>
	</form>
</body>
</html>