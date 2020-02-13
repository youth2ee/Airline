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

<div style="width: 100%; text-align: center;"><h3 style="font-size: 40px; color: black;">마일리지 내역</h3></div>

<table class="table_list tb_type2" id="table_0" style="margin: 50px 0;">
<tr><th scope="row" style="width: 50%;">현재 나의 마일리지</th><td>${member.mileage}</td></tr>
</table>

<table class="table_list tb_type2" id="table_0" style="margin-bottom: 30px;">
<tr>
<th scope="row">예매일</th>
<th scope="row">예매번호</th>
<th scope="row">사용한 마일리지</th>
<th scope="row">적립한 마일리지</th>
</tr>
<c:forEach items="${blist}" var="bl">
<tr style="border: 1px solid #ddd;" class="mtr">
<td style="text-align: center;
    font-size: 15px;
    text-align: center;
    height: 40px;
    line-height: 40px;
    padding-left: 20px;">${bl.couName}</td>
<td class="btd">${bl.bookingNum}</td>
<td>- ${bl.mileageMin}</td>
<td>+ <span class="mplus" style="cursor: pointer;">${bl.mileagePlus}</span></td>
</tr>

</c:forEach>


</table>

</section>


<script type="text/javascript">

$('.mplus').click(function(){

	alert($(this).closest('.mtr').find('.btd').text());


/* 	$.ajax({
		data : {
			id : '${member.id}',
			bookingNum : $(this).closest('.mtr').find('.btd').text()
		},
		type : "GET",
		url : "./milplus",
		success : function(data) {

		}
	}); */
	
});

</script>

</body>
</html>