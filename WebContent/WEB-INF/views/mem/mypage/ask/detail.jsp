<%@page import="dto.XAsk"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<style type="text/css">

th {
	height: 50px;
	
}

td {
	border: 1px solid #ccc;
	height: 30px;

}

#answer {
	width: 1000px;
	padding: 10px;
	text-align: center;
	vertical-align: middle;
	overflow: auto; /* 자동 스크롤 */
	
	border: 1px solid #ccc;
	border-collapse: collapse;
}

#cont {
	background-color: #F2F2F2;
	height:70px;
	width: 100%;
	padding:10px;
	
	display: table;
}

#cont p {
	display: table-cell;
	text-align: center;
	vertical-align:middle;
}

</style>

<div id="detailAsk" class="container">

<table style="width: 1000px; text-align: center; margin: 0 auto; border-collapse: collapse;">

<tr>
	<th colspan="10" style="text-align: center; border: 1px solid #ccc; font-size: 30px;">${detailAsk.askTitle }</th>
</tr>

<tr>
	<td style="background-color: #ccc; width: 12.5%">문의번호</td>
	<td style="width: 5%">${detailAsk.askNo }</td>
	<td style="background-color: #ccc; width: 15%">아이디</td>
	<td style="width: 10%">${detailAsk.memId }</td>
	<td style="background-color: #ccc; width: 12.5%">문의유형</td>
	<td style="width: 10%">${detailAsk.askKind }</td>
	<td style="background-color: #ccc; width: 7.5%">답변여부</td>
	<td style="width: 5%">${detailAsk.askState }</td>
	<td style="background-color: #ccc; width: 7.5%">작성일</td>
	<td style="width: 15%">${detailAsk.askDate }</td>
</tr>

<tr>
	<td colspan="10" style="height: 300px; border: 1px solid #ccc;">${detailAsk.askContent }</td>
</tr>


</table>

<table style="width: 1000px; text-align: center; margin: 0 auto; border-collapse: collapse;">

<tr>
	<td>${AskComment.commentContent }</td>
</tr>

</table>

</div>