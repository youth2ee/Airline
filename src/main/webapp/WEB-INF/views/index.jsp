<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>

<link href="../resources/css/header.css" rel="stylesheet">
<c:import url="./template/boot.jsp"></c:import>
</head>
<body>
	<div class="header_wrap">
		<div class="header_top_inner">
			<div class="header_top_menu">
				<div class="menu_topwrap">
					<ul>
						<li>마일리지 적립몰</li>
						<li>기내 면세점</li>
						<li>기업우대</li>
					</ul>
				</div>
				
				<div class="menu_topwrap2">
					<ul>
						<li>로그인</li>
						<li>이벤트</li>
						<li>고객지원</li>
					</ul>				
				</div>
			</div>
		</div>
		<div class="header_bottom_inner">
			<div class="header_bottom_menu">
				<div class="menu_wrap">
					<div class="menu1">예약</div>
					<div class="menu1">여행준비</div>
					<div class="menu1">여행</div>
					<div class="menu2">EveryAir club</div>
				</div>
			</div>
		</div>
	</div>


	<h1>Hello Index</h1>
	<a href="./booking/bookingMain">예약</a>
	<a href="./booking/bookingList">예약리스트</a>
	

</body>
</html>