<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<style type="text/css">

table {
	text-align: center;
}

</style>

<div class="container">

<h2>리뷰 게시글 검색 결과</h2>
<hr>

<table class="table table-hover table-condensed">

<thead>
<tr>
	<th style="text-align: center; width: 10%">게시글 번호</th>
	<th style="text-align: center; width: 10%">공연</th>
	<th style="text-align: center; width: 42%">제목</th>
	<th style="text-align: center; width: 10%">작성자</th>
	<th style="text-align: center; width: 10%">조회수</th>
	<th style="text-align: center; width: 15%">작성일</th>
</tr>
</thead>

<c:forEach items="${searchReviewList }" var="review">
</tbody>
<tr>
	<td>${review.reviewNo }</td>
	<td>${review.showNo }</td>
	<td>
		<a href="<%=request.getContextPath() %>/review/detail?reviewno=${review.reviewNo }">${review.reviewTitle }</a>
	</td>
	<td>${review.memId }</td>
	<td>${review.reviewHit }</td>
	<td>${review.reviewDate }</td>
</tr>
</tbody>
</c:forEach>


</table>

<c:import url="/WEB-INF/views/layout/parameterPaging.jsp" />
</div>

<c:import url="/WEB-INF/views/layout/footer.jsp" />