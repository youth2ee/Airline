<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../resources/newni/jquery.min.js"></script>
<script type="text/javascript" src="../resources/newni/qrcode.js"></script>
</head>
<body>
		<input type="text" id="text" value="${depFlightNum}">
	<div id="qrcode">
	</div>
</body>
<script type="text/javascript">


	var qrcode = new QRCode(document.getElementById("qrcode"), {
			text : $("#text").val(),
			width : 128,
			height : 128,
			colorDark : "#000000",
			colorLight : "#ffffff",
			correctLevel : QRCode.CorrectLevel.H
	});
</script>
</html>