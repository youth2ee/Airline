<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="isCheckIn">${isCheckIn}</div>
<div class="count">${count}</div>
<c:forEach items="${bookingMore}" var="booking" varStatus="status">
	<div class="bnum${status.count}">${booking.bnum}</div>
	<div class="depPlandTime${status.count}">${booking.depPlandTime}</div>
	<div class="arrPlandTime${status.count}">${booking.arrPlandTime}</div>
	<div class="depAirportNm${status.count}">${booking.depAirportNm}</div>
	<div class="arrAirportNm${status.count}">${booking.arrAirportNm}</div>
	<div class="totalPrice${status.count}">${booking.totalPrice}</div>
	<div class="vihicleId${status.count}">${booking.vihicleId}</div>
	<div class="name${status.count}">${booking.name}</div>
	<div class="kind${status.count}">${booking.kind}</div>
	<div class="flightBNum${status.count}">${booking.flightBNum}</div>
	<div class="seatName${status.count}">${seats[status.index].seatName}</div>
	<div class="bookingNum${status.count}">${booking.bookingNum}</div>
</c:forEach>
