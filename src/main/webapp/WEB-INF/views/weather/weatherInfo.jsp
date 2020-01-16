<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./weatherInfo">
	<select name="airLine" >
		<option value="RKSI/인천공항/1">인천공항</option>
		<option value="RKSS/김포공항/2">김포공항</option>
		<option value="RKNY/양양공항/3">양양공항</option>
		<option value="RKTU/청주공항/4">청주공항</option>
		<option value="RKTN/대구공항/5">대구공항</option>
		<option value="RKJB/무안공항/6">무안공항</option>
		<option value="RKJY/여수공항/7">여수공항</option>
		<option value="RKPK/김해공항/8">김해공항</option>
		<option value="RKPU/울산공항/9">울산공항</option>
		<option value="RKPC/제주공항/10">제주공항</option>
	</select>
	<button>선택</button>
</form>
	
	${weather}
	<h1>===============================================</h1>
	${weather2}
	
	<script type="text/javascript">
		
	</script>
</body>
</html>