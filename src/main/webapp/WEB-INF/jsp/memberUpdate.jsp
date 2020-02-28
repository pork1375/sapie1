<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<style>
table {
	margin-bottom: 10px;
	width: 700px;
}
table, td {
	border: 1px solid gray;
}
.profileimage {
	width: 50px;
	height: 50px;
	border: 1px solid blue;
}
</style>

</head>
<body>
		<h3>회원정보</h3>
		<form name="regForm" method="post" action="/memberUpdate" id="regForm">
			<input type="hidden" name="no" id="no" value="${data.no}"/>
			<table>
				<tr>
					<td>유형구분</td>
					<td>${data.division}</td>
					<td>봉사단계</td>
					<td><select name='servicestage' id="servicestage">
							<option>::선택::</option>
							<option value='새싹' <c:if test="${data.servicestage eq '새싹'}">selected</c:if> >새싹</option>
							<option value='열매' <c:if test="${data.servicestage eq '열매'}">selected</c:if> >열매</option>
					</select></td>
					<td>번역구분</td>
					<td><select name='translation' id="translation">
							<option value='all' <c:if test="${data.translation eq '모두'}">selected</c:if> >모두</option>
							<option value='child' <c:if test="${data.translation eq '아동서신'}">selected</c:if> >아동서신</option>
							<option value='sponsor' <c:if test="${data.translation eq '후원자서신'}">selected</c:if> >후원자서신</option>
					</select></td>
				</tr>
				<tr>
					<td>미번역서신수</td>
					<td><input type="text" name="ul" value="${data.ul}"></td>
					<td>패널티 구분/일자</td>
					<td>1 / 2017-03-01</td>
					<td>담당직원</td>
					<td><select name='staff' id="staff">
							<option value='김직원' <c:if test="${data.staff eq '김직원'}">selected</c:if> >김직원</option>
							<option value='박직원' <c:if test="${data.staff eq '박직원'}">selected</c:if> >박직원</option>
							<option value='이직원' <c:if test="${data.staff eq '이직원'}">selected</c:if> >이직원</option>
					</select></td>
				</tr>
			</table>
		</form>
		
		<table>
			<tr>
				<td>이름</td>
				<td>${data.name}</td>
				<td>영문이름</td>
				<td>${data.ename}</td>
			</tr>
			<tr>
				<td>아이디 / 이메일</td>
				<td colspan="3"> <label><input
						type="checkbox" checked>이메일 수신 동의</label><br> <label><input
						type="checkbox">서신할당 알람메일 수신허용(해외거주 등 문자수신 불가능한 경우)</label></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td colspan="3"> 
				<label>음력<input type="radio" name="bir" value="음력"></label> 
				<label>양력<input type="radio" name="bir" value="양력" checked></label>
				</td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
				<td>${data.phon}<br> <label><input type="checkbox">SMS 수신동의</label></td>

				<td>직업</td>
				<td>${data.job} <label><input type="checkbox">직업 정보 동의</label></td>

			</tr>
			<tr>
				<td>자택주소</td>
				<td colspan="3">${data.address}<br> <label><input
						type="checkbox">자택주소 정보 동의</label></td>

			</tr>
			<tr>
				<td>프로필사진</td>
				<td colspan="3"><div class="profileimage"></div> <br>이미지파일명<label><input
						type="checkbox">프로필이미지 정보 동의</label></td>
			</tr>
			<tr>
				<td>지원동기</td>
				<td colspan="3">${data.motive}</td>
			</tr>
		</table>
		<label>
			<input type="checkbox" checked> 
			최소 6개월 이상 봉사활동을 성실히 할 것을 약속합니다.
			</label> <br> 
			<input type="button" value="일시정지" onclick="delBtn('N')">
			<input type="button" value="활동재개테스트" onclick="delBtn('Y')"> 
			<input type="button" value="수정" onclick="sendit()"> 
			<input type="button" value="닫기" onclick="history.back()">
	
</body>
</html>
<script>
function sendit() {
	//alert("수정");
		$("#regForm")[0].submit();
}

function delBtn(type) {
	if(confirm('정말로 삭제하시겠습니까?')){
		//url
	}
}
</script>