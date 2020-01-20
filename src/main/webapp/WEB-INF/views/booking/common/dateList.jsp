<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tr>
	<td style="width: 80px;">편명</td> 
	<td style="width: 130px;">기종</td> 
	<td>출발시간</td> 
	<td>도착시간</td>
	<td>운행거리</td> 
	<td>운행시간</td> 
	<td>가격</td>  
</tr>

<c:if test="${bookingVO.kind == '1'}">

<c:if test="${empty DairList}"> 
<tr><td colspan="7" style="text-align: center;">운항정보가 존재하지 않습니다.</td></tr>
</c:if>

<c:forEach items="${DairList}" var="dlist"> 
<tr class="dtrcheck">
	<td>${dlist.vihicleId}<input type="hidden" value="${dlist.fnum}" class="dfnum"></td> 
	<td>${dlist.airlineNm}</td> 
	<td>${dlist.depTime}</td> 
	<td>${dlist.arrTime}</td> 
	<td>${dlist.flightKm}</td>
	<td>${dlist.flightTime}</td> 
	<td>${dlist.economyCharge}원</td>  
</tr>
</c:forEach>
</c:if>

<c:if test="${bookingVO.kind == '2'}">

<c:if test="${empty AairList}"> 
<tr><td colspan="7" style="text-align: center;">운항정보가 존재하지 않습니다.</td></tr>
</c:if>

<c:forEach items="${AairList}" var="alist"> 
<tr class="atrcheck">
	<td>${alist.vihicleId}<input type="hidden" value="${alist.fnum}" class="afnum"></td> 
	<td>${alist.airlineNm}</td> 
	<td>${alist.depTime}</td> 
	<td>${alist.arrTime}</td> 
	<td>${alist.flightKm}</td>
	<td>${alist.flightTime}</td> 
	<td>${alist.economyCharge}원</td>  
</tr>
</c:forEach>
</c:if>