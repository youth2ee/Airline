<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
    <c:if test="${empty fdlist}">
    	<span style="font-size: 25px; font-weight: bolder;">데이터가 존재하지 않습니다.</span>
    </c:if>

	<c:if test="${not empty fdlist}">
	    	<table style="width: 1159px; text-align: center; border: 1px solid #ddd;">
	    	<tr style="font-size: 20px; height: 45px; line-height: 45px; background-color: #6d6e70; color: white; font-weight: bolder;">
	    	<th style="text-align: center;">항공편</th>
	    	<th style="text-align: center;">항공사</th>
	    	<th style="text-align: center;">출발지</th>
	    	<th style="text-align: center;">도착지</th>
	    	<th style="text-align: center;">출발일</th>
	    	<th style="text-align: center;">도착일</th>
	    	</tr>
			
	    <c:forEach items="${fdlist}" var="t">
			<tr style="height: 35px; line-height: 35px; text-align: center; font-size: 16px;">
			<td>${t.vihicleId}</td>
			<td>${t.airlineNm}</td>
			<td>${t.depAirportNm}</td>
			<td>${t.arrAirportNm}</td>
			<td>${t.depPlandTime}</td>
			<td>${t.arrPlandTime}</td>
			</tr>
	    </c:forEach>
	    	
	    	</table>
    </c:if>

    
