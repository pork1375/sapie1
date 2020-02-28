<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>등록</title>
<style>
table {
	margin-bottom: 10px;
	width: 700px;
}
table, td {
	border: 1px solid gray;
}
</style>
</head>
<body>
<form id="joinForm" name="joinForm" method="post" action="/memberinsert" onsubmit="return sendit();">
		<h3>회원등록</h3>
		<table>
			<tr>
				<td>유형구분</td>
				<td><input type="text" value="번역봉사" name="division" readonly></td>
				<td>봉사단계</td>
				<td><select name="servicestage" id="servicestage">
						<%-- <option value="새싹" <c:if test="${servicestage == '새싹'}"/> }>새싹</option>
						<option value="열매" <c:if test="${servicestage == '열매'}"/> }>열매</option> 
						<option value="새싹" <c:if test="${servicestage == '새싹'}"></c:if>>새싹</option>--%>
						<%-- <option value="새싹" <c:if test="${servicestage eq '새싹'}"> </c:if>>새싹</option> --%>
						<option value='새싹'>새싹</option>
						<option value='열매'>열매</option> 
						<option value=' '></option>
				</select></td>
				<td>번역구분</td>
				<td><select name='translation'>
						<option value='모두'>모두</option>
						<option value='아동서신'>아동서신</option>
						<option value='후원자서신'>후원자서신</option>
				</select></td>
			</tr>
			<tr>
				<td>미번역서신수</td>
				<td><input type="text" name="ul" value="1"></td>
				<td>패널티 구분/일자</td>
				<td>1 / 2017-03-01</td>
				<td>담당직원</td>
				<td><select name="staff">
						<option value='김직원'>김직원</option>
						<option value='박직원'>박직원</option>
						<option value='이직원'>이직원</option>
				</select></td>
			</tr>
		</table>
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name"></td>
				<td>영문이름</td>
				<td><input type="text" name="ename" id="ename"></td>
			</tr>
			<tr>
				<td>아이디 / 이메일</td>
				<td colspan="3"><input type="text" name="id"> / <input
					type="text" name="email"><label>
					<input type="checkbox" name="agree" checked>이메일 수신 동의</label><br>
					<label><input type="checkbox" name="agree">서신할당 알람메일 수신허용(해외거주 등 문자수신 불가능한 경우)</label></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td colspan="3"><input type="text" name="birth">
					<label>음력<input type="radio" name="yin" value="음력"></label>
					<label>양력<input type="radio" name="yin" value="양력" checked></label>
				</td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
				<td><input type="text" name="phon"><br> <label><input
						type="checkbox" name="agree">SMS 수신동의</label></td>

				<td>직업</td>
				<td><input type="text" name="job"> <label><input
						type="checkbox" name="agree">직업 정보 동의</label></td>

			</tr>
			<tr>
				<td>자택주소</td>
				<td colspan="3"><input type="text" name="address"><br>
					<label><input type="checkbox" name="agree">자택주소
						정보 동의</label></td>

			</tr>
			<tr>
				<td>프로필사진</td>
				<td colspan="3"><input type="file" name="photo"> <br>
					<label><input type="checkbox" name="agree">프로필이미지 정보 동의</label></td>
			</tr>
			<tr>
				<td>지원동기</td>
				<td colspan="3"><input type="text" name="motive"></td>
			</tr>
		</table>
		<label><input type="checkbox" checked> 최소 6개월 이상 봉사활동을 성실히 할 것을 약속합니다.</label>
				<br>
				<input type="hidden" name="joined" id="joined">
				<input type="submit" value="등록" onclick="sendit()"> 
				<input type="button" value="닫기" onclick="history.back()">
				
	</form>
</body>
</html>
<script>
function sendit() {
	//alert("등록");
/*
if(document.joinForm.name.value == "") {
alert("이름");
return false;
}
if(document.joinForm.ename.value == "") {
	alert("영문이름");
	return false;
	} 
if(document.joinForm.id.value == "") {
	alert("아이디");
	return false;
	} 
if(document.joinForm.email.value == "") {
	alert("이메일");
	return false;
	}
if(document.joinForm.birth.value == "") {
	alert("생년월일");
	return false;
	}
if(document.joinForm.phon.value == "") {
	alert("휴대폰번호");
	return false;
	}
*/
		
} 
</script>