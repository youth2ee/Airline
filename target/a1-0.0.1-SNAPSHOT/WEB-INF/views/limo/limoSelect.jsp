<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="../resources/css/limo.css" rel="stylesheet">
<body>
<!-- <img alt="bus" src="../images/limo/bus.png"> -->
<div class="limo_wrap" >
	<c:forEach begin="1" end="45" var="limo" varStatus="vo">
		<c:choose>
			<c:when test="${vo.current%4 eq 2 && vo.current lt 40}">
				<label class="limo" style="margin-right: 50px;">
					<input type="checkbox" name="seat" value="${vo.current}">		
				</label>
			</c:when>
			<c:otherwise>
				<label class="limo">
					<input type="checkbox" name="seat" value="${vo.current}">
				</label>
			</c:otherwise>
			
		</c:choose>
		<c:choose>
			<c:when test="${vo.current%4 eq 0 && vo.current lt 41}">
					<br>
			</c:when>
		</c:choose>
	</c:forEach>
</div>

</body>