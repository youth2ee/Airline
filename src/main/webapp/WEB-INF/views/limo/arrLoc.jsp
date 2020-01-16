<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<select name="arrLoc" class="arrLoc">
	<c:forEach items="${list}" var="location">
		<option value="${location.arrLoc}" id="${location.price}">${location.arrLoc}</option>	
	</c:forEach>
</select>
</body>
</html>
