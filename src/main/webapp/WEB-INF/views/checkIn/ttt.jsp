<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./ttt">
		<div><input type="checkBox" id="chk1"><input type="text" id="text1" ></div>
		<div><input type="checkBox" id="chk2"><input type="text" id="text2" name="text2"></div>
		<input type="button" value="테스트" id="btn">
	</form>
	<script type="text/javascript">
	
	$("#chk1").change(function(){	
		if($("#chk1").is(":checked")){
			$("#text1").attr('name','123');
		}
		else{
			$("#text1").removeAttr('name');
		}
	});
		
	
	</script>
</body>
</html>