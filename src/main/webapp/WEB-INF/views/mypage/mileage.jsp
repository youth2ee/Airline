<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/reset.css" rel="stylesheet">
    <link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
<link href="../resources/css/mypage/mileage.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<header><c:import url="../layout/header.jsp"></c:import></header>
<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option selected="selected" value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>


<section>
<table>
<tr><td style="text-align: center; width: 1200px; padding-bottom: 50px;"><h3 style="font-size: 40px">마일리지 내역</h3></td></tr>
<c:forEach items="${blist}" var="bl">
<tr><td style="text-align: center;
    font-size: 15px;
    text-align: left;
    height: 40px;
    border: 1px solid #ddd;
    line-height: 40px;
    padding-left: 20px;">${bl.bookingNum}</td></tr>

</c:forEach>


</table>

</section>


</body>
</html>