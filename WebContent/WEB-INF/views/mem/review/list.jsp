<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<c:import url="/WEB-INF/views/layout/header.jsp" />

<div class="container" >
<h2>리뷰 목록</h2>
<br>

<div style="float: right; margin: -20px 0 0 0;">
	<a href="<%=request.getContextPath() %>/review/list">최신순</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	<a href="<%=request.getContextPath() %>/review/listhit">조회순</a>
</div>
<hr style="clear: both;">
     
<table id="inventory" class="table table-hover table-condensed" style="clear: both;">

<thead>
<tr style="cursor: pointer;">
	<th style="width: 20%">게시글 번호</th>
	<th style="width: 50%">제목</th>
	<th style="width: 10%">작성자</th>
	<th style="width: 10%">조회수</th>
	<th style="width: 10%">작성일</th>
</tr>
</thead>

<tbody>
<c:forEach items="${reviewList }" var="review">
<tr>
	<td>${review.reviewNo }</td>
	<td style="text-align: left">
		<a href="<%=request.getContextPath() %>/review/detail?reviewno=${review.reviewNo }">${review.reviewTitle }</a>
		<c:if test="${review.fileNo ne 0 }">&nbsp;&nbsp;<span class="glyphicon glyphicon-floppy-disk
		" aria-hidde="true"></span></c:if>
	</td>
	<td>${review.memId }</td>
	<td>${review.reviewHit }</td>
	<td>${review.reviewDate }</td>
</tr>
</c:forEach>
</tbody>
</table>

</div><br>


<div style="text-align: center; margin: 0 0 25px 0;" >
<form action="<%=request.getContextPath() %>/review/search" method="get">
	<select id="searchtype" name="searchtype">
		<option value="reviewTitle">제목</option> 
	</select>
	<input type="text" id="keyword" name="keyword" placeholder="공연후기를 검색해보세요!"/>
	<button>검색</button>
</form>
</div>

<c:import url="/WEB-INF/views/layout/paging.jsp" />

<c:import url="/WEB-INF/views/layout/footer.jsp" />