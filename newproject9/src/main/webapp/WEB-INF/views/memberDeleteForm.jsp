<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function checkbox() {
		var flag = false;
		// checkbox 접근후 체크된 개수 파악   name으로 접근, values는 배열의 형태
		var values = document.getElementsByName("agree");  /* 형태는 배열이 됨 */
		var count = 0;
	 	for (var i=0; i<values.length; i++) {
			if(values[i].checked) {
				count++;
			}
		}
		if(count < 1) {
			alert("동의하셔야 합니다.");	
		} else {
			flag = true;
		} 
		return flag;
	}
</script>

<title>Insert title here</title>
</head>
<body>
	<form action="memberDelete.do" method="post" name="frm"
		onsubmit="return checkbox()">

		<fieldset class="boundBox">
			<br />
			<br />

			<div style="width: 800px" align="left">
				<h2 class="titleFont" style="font-size: 2em;">탈퇴 안내</h2>
				<p>회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
				<br />
				<br />

				<div style="font-size: 1em; font-weight: bold;">
					<p>
						√ 사용하고 계신 아이디(<em>${member.mb_id}</em>)는 탙퇴할 경우 재사용 및 복구가 불가능합니다.
					</p>
					<br />
					<br />
					<p>
						√ 탈퇴후에는 아이디 (<em>${member.mb_id}</em>)로 데이터는 복구할 수 없습니다.
					</p>
					<br />
					<br /> <input type="checkbox" name="agree" value="1"> 안내
					사항을 모두 확인하였으면, 이에 동의합니다.<br />
					<br />
					<input type="hidden" name = "mb_id" value = "${member.mb_id}">
				</div>
			</div>

			<div align="center">
				<table>
					<tr>
						<td><button type="submit"
								style="margin-top: 20px; font-size: 1.6em; font-weight: bold;"
								class="topBtn">확인</button></td>
					</tr>
				</table>
				<br />
				<br />
			</div>
		</fieldset>
	</form>
</body>
</html>