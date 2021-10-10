<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>공연의 모든 것, 공공연히</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 부트스트랩 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">

/* 메인 메뉴 - 1depth */
ul.nav {
	/* ul태그의 기본 리스트스타일 없애기 */
	list-style-type: none;
	
	/* 기본 여백 제거 */
	padding: 0;
	margin: 0;	
}

/* ------------------------------------------------ */

/* 메인 메뉴의 항목 */
ul.nav > li {

	/* 수평으로 일렬 배치하기 */
	float: left;

	/* 줄간격을 이용한 높이 조절 */
	line-height: 40px;
	
	/* 테두리를 이용한 메뉴 항목 구분선 만들기 */
	border-right: 1px solid #fff;
}

/* 메인 메뉴의 항목 텍스트 */
ul.nav > li > a {
	/* 글자 색상 */
	color: black;
	
	/* 글자 꾸밈선 제거(underline, 밑줄 제거) */
	text-decoration: none;
	
	/* 글자 스타일 지정 */
	font-size: 15px; /* 크기 */
	font-weight: bold; /* 굵게 */
	font-family: "맑은 고딕"; /* 글꼴 */
	
	/* 내부여백 */
	/* 	-> a태그의 내부여백은 링크 클릭 가능한 영역 */
	padding: 10px 15px;
	
	/* 외부여백 */
	/* 	-> a태그의 외부여백은 링크 클릭 불가능한 영역 */
	margin: 0 3px;

}

ul.nav > li > a:hover {
	text-decoration:none; color:#E3ACAA;
}




</style>

</head>
<body>

<ul class="nav">
	<li><a href="#">로고영역</a>
	<li><a href="#">뮤지컬</a></li>
	<li><a href="#">오페라</a></li>
	<li><a href="#">콘서트</a></li>
	<li><a href="#">연극</a></li>
	<li><a href="#">내가 찜한 콘텐츠</a></li>
</ul>