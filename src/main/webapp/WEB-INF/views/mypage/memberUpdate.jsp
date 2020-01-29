<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/mypage/memberUpdate.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>



<header></header>
<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option value="./main">나의 Every Air</option>
<option selected="selected" value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>



	<section>
		<div class="myasiana_wrap">
			<h3 style="font-size: 40px">회원정보</h3>
			<h4 style="font-size: 28px; font-weight: bolder;">기본 정보</h4>
			<table class="table_list tb_type2" id="table_0">
				<tbody>
					<tr>
						<th scope="row">회원번호</th>
						<td>776&nbsp;699&nbsp;818</td>
						<th scope="row">아이디</th>
						<td>daze123</td>
					</tr>

					<tr>
						<th scope="row">이름(한글)</th>
						<td>임윤희</td>
						<td style="border: 1px solid white;"></td>
						<td></td>
					</tr>

					<tr>
						<th scope="row">휴대전화</th>
						<td>010-4735-2699</td>
						<th scope="row">이메일</th>
						<td>daze123@hanmail.net</td>
					</tr>

				</tbody>
			</table>

			<div class="btn_wrap_ceType1">
				<button type="button" class="btn_L red" onclick="location.href = './ModifyMemberInfoPage.do';">회원정보 변경</button>
			</div>
		</div>
	</section>





</body>
</html>