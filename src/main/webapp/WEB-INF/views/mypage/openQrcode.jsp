<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="../resources/newni/qrcode.js"></script>
<style type="text/css">
body {
	background-color: gainsboro;
}

#qrcode {
	padding: 0px 40px;
    padding-top: 30px;
    box-sizing: border-box;
}
</style>
</head>
<body>
	<div class="mem_barcode_wrap">
		<p class="barcode_top">
			<span class="hidden membershipCardName"></span>
		</p>
		<div class="mem_barcode_info">
			<p class="mem_barcode" id="qrcode" style="padding: 0px 40px;"></p>
			<p class="mem_name">${member.name}</p>
			<p class="mem_num">
				<span>${member.memberNum}</span>
			</p>
		</div>
		<p class="barcode_bottom"
			style="background: url('../images/index/index_2.png'); background-size: contain;">
		</p>
	</div>
</body>
	
<script type="text/javascript">
var qrcode = new QRCode(document.getElementById("qrcode"), {
	text :"${member.name}" + "${member.memberNum}",
	width : 160,
	height : 160,
	colorDark : "#000000",
	colorLight : "#ffffff",
	correctLevel : QRCode.CorrectLevel.H
});

	</script>
</html>