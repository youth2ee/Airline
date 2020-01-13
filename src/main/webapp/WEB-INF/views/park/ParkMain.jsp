<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp" />
</head>
<body>
주차장 메인

<script type="text/javascript">
	window.onload = function(){

		$.ajax({
			type:"GET",
			url: "http://openapi.airport.kr/openapi/service/StatusOfParking/getTrackingParking?serviceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D&pageNo=1&numOfRows=15",
			dataType:'json',
			success:function(data){
				console.log(data);
				/* var KRWJPY = data.KRWJPY[0];
				var KRWUSD = data.KRWUSD[0];
				var KRWEUR = data.KRWEUR[0];
				var KRWCNY = data.KRWCNY[0];
				$(".KRWJPY").val(KRWJPY);
				$(".KRWUSD").val(KRWUSD);
				$(".KRWEUR").val(KRWEUR);
				$(".KRWCNY").val(KRWCNY); */
			}
		});
		


	}

</script>
</body>
</html>