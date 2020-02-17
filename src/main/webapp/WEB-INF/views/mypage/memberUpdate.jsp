<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Limousine</title>
<link href="../resources/css/reset.css" rel="stylesheet">
  <link href="../resources/css/header.css" rel="stylesheet">
<link href="../resources/css/mypage/memberUpdate.css" rel="stylesheet">
<link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
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
<option selected="selected" value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>


<form action="./memberUpdate" method="post" id="frm">
	<section>
		<div class="myasiana_wrap">
			<h3 style="font-size: 40px">회원정보</h3>
			<h4 style="font-size: 28px; font-weight: bolder;">기본 정보</h4>
			<table class="table_list tb_type2" id="table_0">
				<tbody>
					<tr>
						<th scope="row">회원번호</th>
						<td>${member.memberNum}</td>
						<th scope="row">아이디</th>
						<td><input type="text" value="${member.id}" name="id" readonly="readonly"></td>
					</tr>

					<tr>
						<th scope="row">이름(한글)</th>
						<td><input type="text" value="${member.name}" name="name" id="name"></td>
						<td style="border: 1px solid white;"></td>
						<td></td>
					</tr>

					<tr>
						<th scope="row">휴대전화</th>
						<td><input type="text" value="${member.phone}" name="phone" id="phone"></td>
						<th scope="row">이메일</th>
						<td><input type="text" value="${member.email}" name="email" id="email"></td>
					</tr>

				</tbody>
			</table>

			<div class="btn_wrap_ceType1">
				<button type="button" class="btn_L red" id="btn">회원정보 변경</button>
			</div>
		</div>
	</section>
</form>

<script type="text/javascript">
	 $("#btn").click(function(){
		 var email = $("#email").val().trim();
		 var name = $("#name").val().trim();
		 var phone = $("#phone").val().trim();
		 if(phone.match("-")){
		 	var phones = phone.split("-");
		 	phone = "";
		 	for(var i = 0; i < phones.length; i++)
			 	phone += phones[i]
		 }
		 // 이메일 정규식
		 var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; 
		 // 숫자 정규식
		 var regNumber = /^[0-9]*$/;

		if(email == "")
			alert('이메일을 입력하세요.');
		else if(!emailRule.test($("input[id='email']").val()))            
	         alert('올바른 이메일을 입력하세요.');
		else if(name == "")
			alert('이름을 입력하세요.');
		else if(phone == "")
			alert('전화번호를 입력하세요');
		else if(!regNumber.test(phone) || phone.length > 12 || phone.length < 10)
			alert('올바른 전화번호를 입력하세요');
		else if (email != "" && name != "" && phone != "" ){
		 	$("#phone").val(phone);
			$("#frm").submit();
		}
	});
</script>

</body>
</html>