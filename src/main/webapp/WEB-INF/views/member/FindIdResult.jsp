<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp" />
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/reset.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/layout.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/common.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/flyasiana.css">
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/calendar.css">

<link rel="stylesheet" type="text/css" href="../resources/css/header.css">
</head>
<body>
<c:import url="../layout/header.jsp" />
<div class="container" id="container">
				
				<h3>아이디 찾기</h3>
				<div class="sub_info_wrap">
					<p class="text_type2 fsz_23">
						입력하신 정보와 일치하는 아이디는 아래와 같습니다.
					</p>
					
				</div>
				<h4>입력하신 정보와 일치하는 회원번호는 아래와 같습니다.</h4>
				<table class="table_list tb_type2">
					<caption>
						<strong>
							회원님의 아이디를 확인할 수 있는 표입니다.
						
					</strong><p>아이디 로 구성된 표입니다.</p></caption>
					<colgroup>
						<col style="width:20%;">
						<col style="width:80%;">
					</colgroup>
					<tbody>
						<tr>
							
							<th scope="row">아이디</th>
							<td class="fo_bol">${memberVO.id}</td>
							
						</tr>
					</tbody>
				</table>
				<div class="btn_wrap_riType4">
					<button type="button" id="btnPWSearch" class="btn_L white">비밀번호 찾기</button>
					<button type="button" id="btnLogin" class="btn_L red">로그인</button>
				</div>
			</div>
</body>
<script type="text/javascript">

$("#btnLogin").click(function(){
	location.href='./memberLogin';
});
</script>
</html>