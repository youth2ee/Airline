<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
</head>
<body>

가격 확인하고
결제 넘어가기 직전

<button id="btn"> 결제 </button>

<script type="text/javascript">

$('#btn').click(function(){
	window.open("../imPay/imPayList?name=사과&amount=1000", "이니시스",  "width=825px,height=600px");
});

</script>


</body>
</html>