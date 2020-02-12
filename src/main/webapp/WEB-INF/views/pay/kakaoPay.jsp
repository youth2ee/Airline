<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIRLINE Limos Pay</title>

<style type="text/css">
#btn{
	cursor:pointer;	
}
</style>
</head>
<body>
<%-- 	<form action="kakaoPay" method="post" id="frm">
		<input type="hidden" value="${count}" name="quantity">
		<input type="hidden" value="${price}" name="total_amount">
	</form>
	<script type="text/javascript">
			$("#frm").submit();
	</script> --%>
	
	<h1> kakaoPay api 이용하기 </h1>
 
<form method="post" action="/kakaoPay">
    <button>카카오페이로 결제하기</button>
</form>
	
</body>
</html>