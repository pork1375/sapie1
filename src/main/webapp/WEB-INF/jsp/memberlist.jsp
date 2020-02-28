<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<script>
	function membersave() {
		//var form = document.getElementById("");
		// form.action = "<c:url value='/membersave'/>";
		//form.action = "/membersave";
		//url = url + "?code=" + code;
		location.href="/membersave";
	}
	function memberUpdate(no) {
		//alert(no);
		var url = "/Update?no="+no;
		location.href=url;
	}
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="memberlist?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
/* 	function page(idx) {
		var pagenum = idx;
		var contentnum = $("#contentnum option:selected").val();
		location.href="${pageContext.request.contextPath}/memberlist?pagenum="+pagenum+"&contentnum="+contentnum;
		} */
</script>
<style>
table {
	margin-bottom: 10px;
	width: 1200px;
}
table, td, th {
	border: 1px solid gray;
}
a {
	color: black;
	text-decoration: none;
	outline: none;
}
</style>
<body>
	
		<select name="list1">
			<option value="list_all" selected="selected">전체</option>
			<option value="">번역봉사자</option>
			<option value="">기관방문</option>
			<option value="">일반</option>
			<option value="">신청 일시중지</option>
			<option value="">페널티 일시중지</option>
			<option value="">직원 일시중지</option>
			<option value="">활동재개테스트</option>
		</select> <select name="list2">
			<option value="">전체</option>
			<option value="">새싹</option>
			<option value="">열매</option>
		</select> <select name="list3">
			<option value="" selected="selected">모두</option>
			<option value="">아동서신</option>
			<option value="">후원자서신</option>
		</select>
		
		
		<select name="list4">
			<option value="" selected="selected">이름</option>
			<option value="">아이디/이메일</option>
			<option value="">휴대전화</option>
			<option value="">담당직원</option>
		</select> <input type="text">
		<input type="button" value="검색">
		
		<input type="button" value="등록" onclick="membersave()">
			
			<input type="button" value="엑셀다운로드">
			

			<br><c:out value="${memberlist.no}" /> <br>
		<select id="cntPerPage" name="sel" onchange="selChange()"><!-- 페이징 옵션 선택 -->
			<option value="5"<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
		</select>
		<form id="memberlist" name="memberlist" method="post">
		<table>
			<tr>
				<th>NO</th>
				<th>유형구분</th>
				<th>봉사단계</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>아이디</th>
				<th>이메일</th>
				<th>번역구분</th>
				<th>담당직원</th>
				<th>가입일</th>
			</tr>
			<c:forEach var="memberlist" items="${list}">
				<tr onclick="memberUpdate( ${memberlist.no} )">
					<td><c:out value="${memberlist.no}" /></td>
					<td><c:out value="${memberlist.division}" /></td>
					<td><c:out value="${memberlist.servicestage}" /></td>
					<td><c:out value="${memberlist.name}" /></td>
					<td><c:out value="${memberlist.birth}" /></td>
					<td><c:out value="${memberlist.id}" /></td>
					<td><c:out value="${memberlist.email}" /></td>
					<td><c:out value="${memberlist.translation}" /></td>
					<td><c:out value="${memberlist.staff}" /></td>
					<td><c:out value="${memberlist.joined}" /></td>
				</tr>
			</c:forEach>
		</table>
	</form>
<%-- 	<c:if test="${page.prev}">
		<a style="text-decoration:none;" href="javascript:page(${page.getStartPage()-1});">&laquo;</a>
	</c:if>
	<c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="idx">
		<a style="text-decoration:none;" href="javascript:page(${idx});">${idx};</a>
	</c:forEach>
		<c:if test="${page.prev}">
		<a style="text-decoration:none;" href="javascript:page(${page.getEndPage()+1});">&raquo;</a>
	</c:if> --%>
	
	<div>
		<c:if test="${paging.startPage != 1}">
			<a href="/memberlist?nowPage=${paging.startPage-1}&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage}">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage}">
					<a href="/memberlist?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/memberlist?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>

	


</body>
</html>