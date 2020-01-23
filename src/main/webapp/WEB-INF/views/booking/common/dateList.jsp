<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <tr>
	<td style="width: 80px;">편명</td> 
	<td style="width: 130px;">기종</td> 
	<td>출발시간</td> 
	<td>도착시간</td>
	<td>운행거리</td> 
	<td>운행시간</td> 
	<td>가격</td>  
</tr> -->

<c:if test="${bookingVO.kind == '편도'}">
<c:if test="${empty DairList}"> 
<tr><td colspan="7" rowspan="5" style="text-align: center; padding-top: 125px; cursor: default;">운항정보가 존재하지 않습니다.</td></tr>
</c:if>

<c:if test="${not empty DairList}"> 
<tr id="deptitle">
	<td class="td3t" colspan="2">운항시간</td> 
	<!-- <td class="td4">도착시간</td> -->
	<!-- <td class="td5">운행거리</td>  -->
	<!-- <td class="td6">운행시간</td>  -->
	<td class="td2t">항공사</td> 
	<td class="td1t">편명</td> 
	<td class="td7t">가격</td>  
</tr>


<c:forEach items="${DairList}" var="dlist"> 
<tr class="dtrcheck">
	<td class="td3"><%-- ${dlist.depTime} <div>  </div> ${dlist.arrTime} --%>
		
	<div class="timeIWrap">
	<div class="tiLeft" style="padding-right: 10px;">${dlist.depTime}</div>
	
	<div style="float: left;">
		<div class="timTop"></div>
		<div>
			<div class="timmLeft"><i class="material-icons" style="padding-right: 10px; padding-left:10px; color: gray;" >flight_takeoff</i></div>
			 
			<div class="timmMid">
				<div class="timmM1"><i class='far fa-clock'></i> ${dlist.flightTime}분</div>
				<div class="timmM2">직항</div>
				<!-- <hr style="border: 0.5px solid #c1c1c1;"> -->
			</div> 
			
			<div class="timmRight"><i class="material-icons" style="padding-left: 10px; padding-right:10px;  color: gray;">flight_land</i></div>
		</div>
		<div class="timBottom"></div>
	</div>
	
	<div class="tiRight" style="padding-left: 10px;">${dlist.arrTime}</div>
	</div>
		
	</td>
 
	<td class="td2">${dlist.airlineNm}</td> 
	<td class="td1">${dlist.vihicleId}<input type="hidden" value="${dlist.fnum}" class="dfnum"></td> 
	<%-- <td class="td4">${dlist.arrTime}</td>  --%>
	<%-- <td class="td5">${dlist.flightKm}KM</td> --%>
	<%-- <td class="td6">${dlist.flightTime}분</td>  --%>
	<td class="td7">${dlist.economyCharge}원</td>  
	
	<tr class="dhide" style="display: none; background-color: salmon; height: 30px;"><td colspan="7">${dlist.fnum} ${dlist.flightKm}KM</td></tr>
</tr>
</c:forEach>
</c:if>
</c:if>



<c:if test="${bookingVO.kind == '왕복'}">

<c:if test="${empty AairList}"> 
<tr><td colspan="7" rowspan="5" style="text-align: center; padding-top: 125px; cursor: default;">운항정보가 존재하지 않습니다.</td></tr>
</c:if>

<c:if test="${not empty AairList}"> 
<tr id="arrtitle"> 
	<td class="td3t" colspan="2">운항시간</td> 
	<!-- <td class="td4">도착시간</td> -->
	<!-- <td class="td5">운행거리</td>  -->
	<!-- <td class="td6">운행시간</td>  -->
	<td class="td2t">항공사</td> 
	<td class="td1t">편명</td> 
	<td class="td7t">가격</td>  
</tr>

<c:forEach items="${AairList}" var="alist"> 
<tr class="atrcheck">
	<td class="td3"><%-- ${dlist.depTime} <div>  </div> ${dlist.arrTime} --%>
		
	<div class="timeIWrap">
	<div class="tiLeft" style="padding-right: 10px;">${alist.depTime}</div>
	
	<div style="float: left;">
		<div class="timTop"></div>
		<div>
			<div class="timmLeft"><i class="material-icons" style="padding-right: 10px; padding-left:10px; color: gray;" >flight_takeoff</i></div>
			 
			<div class="timmMid">
				<div class="timmM1"><i class='far fa-clock'></i> ${alist.flightTime}분</div>
				<div class="timmM2">직항</div>
				<!-- <hr style="border: 0.5px solid #c1c1c1;"> -->
			</div> 
			
			<div class="timmRight"><i class="material-icons" style="padding-left: 10px; padding-right:10px;  color: gray;">flight_land</i></div>
		</div>
		<div class="timBottom"></div>
	</div>
	
	<div class="tiRight" style="padding-left: 10px;">${alist.arrTime}</div>
	</div>
		
	</td>
 
	<td class="td2">${alist.airlineNm}</td> 
	<td class="td1">${alist.vihicleId}<input type="hidden" value="${alist.fnum}" class="dfnum"></td> 
	<%-- <td class="td4">${dlist.arrTime}</td>  --%>
	<%-- <td class="td5">${dlist.flightKm}KM</td> --%>
	<%-- <td class="td6">${dlist.flightTime}분</td>  --%>
	<td class="td7">${alist.economyCharge}원</td>  
	
	<tr class="ahide" style="display: none; background-color: salmon; height: 30px;"><td colspan="7">${alist.fnum}</td></tr>
</tr>
</c:forEach>
</c:if>
</c:if>