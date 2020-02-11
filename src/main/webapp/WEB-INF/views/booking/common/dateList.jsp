<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${bookingVO.kind == '편도'}">
<c:if test="${empty DairList}"> 
<tr><td colspan="7" rowspan="5" style="text-align: center; padding-top: 125px; cursor: default;">운항정보가 존재하지 않습니다.</td></tr>
</c:if>

<c:if test="${not empty DairList}"> 
<tr id="deptitle">
	<td class="td3t" colspan="2">운항시간</td> 
	<td class="td2t">항공사</td> 
	<td class="td1t">편명</td> 
	<td class="td7t">가격</td>  
	<td class="td7t">예약좌석</td>
</tr>
<c:forEach items="${DairList}" var="dlist"> 
<tr class="dtrcheck">
	<td class="td3">
		
	<div class="timeIWrap">
	<div class="tiLeft" style="padding-right: 10px;">${dlist.depTime}</div>
	
	<div style="float: left;">
		<div class="timTop"></div>
		<div>
			<div class="timmLeft"><i class="material-icons" style="padding-right: 10px; padding-left:10px; color: #d60815;" >flight_takeoff</i></div>
			 
			<div class="timmMid">
				<div class="timmM1"><i class='far fa-clock'></i> ${dlist.flightTime}분</div>
				<div class="timmM2">직항</div>
			</div> 
			
			<div class="timmRight"><i class="material-icons" style="padding-left: 10px; padding-right:10px;  color: #d60815;">flight_land</i></div>
		</div>
		<div class="timBottom"></div>
	</div>
	
	<div class="tiRight" style="padding-left: 10px;">${dlist.arrTime}</div>
	</div>
		
	</td>
 
	<td class="td2">
		<div style="float: left; padding-left: 30px;line-height: 73px;">
		<c:if test="${dlist.airlineNm == '대한 항공'}">
		<img alt="" src="../images/airline/1.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '아시아나항공'}">
		<img alt="" src="../images/airline/2.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '에어부산'}">
		<img alt="" src="../images/airline/3.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '에어서울'}">
		<img alt="" src="../images/airline/4.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '이스타항공'}">
		<img alt="" src="../images/airline/5.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '제주항공'}">
		<img alt="" src="../images/airline/6.png" style="width: 115px;">
		</c:if>		
		<c:if test="${dlist.airlineNm == '진 에어'}">
		<img alt="" src="../images/airline/7.png" style="width: 115px;">
		</c:if>			
		<c:if test="${dlist.airlineNm == '코리아 익스프레스 에어'}">
		<img alt="" src="../images/airline/8.png" style="width: 115px;">
		</c:if>			
		<c:if test="${dlist.airlineNm == '티웨이항공'}">
		<img alt="" src="../images/airline/9.png" style="width: 115px;">
		</c:if>			
		<c:if test="${dlist.airlineNm == '플라이 강원'}">
		<img alt="" src="../images/airline/10.png" style="width: 115px;">
		</c:if>
		<c:if test="${dlist.airlineNm == '하이에어'}">
		<img alt="" src="../images/airline/11.png" style="width: 115px;">
		</c:if>	
		
		</div>
		<div style="float: left; padding-left: 25px;line-height: 73px;">${dlist.airlineNm}</div>
	</td> 
	<td class="td1">${dlist.vihicleId}<input type="hidden" value="${dlist.fnum}" class="dfnum"></td> 
	<td class="td7">${dlist.economyCharge}원</td>  
	<td class="td7">${195 - dlist.seatTotal}</td> 
</tr>

<tr class="dhide"><td colspan="7" style="vertical-align: middle;">


<div style="width: 770px;margin: 0 auto;font-weight: bold; padding-left: 26px;">
	
	<div style="float: left; line-height: 34px; margin-right:40px;">
		<div style="clear: both;">
			<div style="float: left;">출발시간 :&nbsp</div> <div class="deptd" style="float: left;">${dlist.depPlandTime}</div>
		</div>
	</div>
	
	<div style="float: left; line-height: 34px; margin-right: 37px;">
		<div style="clear: both;">
			<div style="float: left;">도착시간 :&nbsp</div> <div class="arrtd" style="float: left;">${dlist.arrPlandTime}</div>
		</div>
	</div>
	
	<div style="float: left; line-height: 34px;">
		<div style="clear: both;">
			<div style="float: left;">이동거리 :&nbsp</div> <div class="km" style="float: left;">${dlist.flightKm}KM</div>
		</div>
	</div>
</div>


</td></tr>
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
	<td class="td2t">항공사</td> 
	<td class="td1t">편명</td> 
	<td class="td7t">가격</td>  
	<td class="td7t">예약좌석</td>
</tr>
<c:forEach items="${AairList}" var="alist"> 
<tr class="atrcheck">
	<td class="td3">
		
	<div class="timeIWrap">
	<div class="tiLeft" style="padding-right: 10px;">${alist.depTime}</div>
	
	<div style="float: left;">
		<div class="timTop"></div>
		<div>
			<div class="timmLeft"><i class="material-icons" style="padding-right: 10px; padding-left:10px; color: #d60815;" >flight_takeoff</i></div>
			 
			<div class="timmMid">
				<div class="timmM1"><i class='far fa-clock'></i> ${alist.flightTime}분</div>
				<div class="timmM2">직항</div>
			</div> 
			
			<div class="timmRight"><i class="material-icons" style="padding-left: 10px; padding-right:10px;  color: #d60815;">flight_land</i></div>
		</div>
		<div class="timBottom"></div>
	</div>
	
	<div class="tiRight" style="padding-left: 10px;">${alist.arrTime}</div>
	</div>
		
	</td>
 
	<td class="td2">
			<div style="float: left;  padding-left: 30px; line-height: 73px;">
		<c:if test="${alist.airlineNm == '대한 항공'}">
		<img alt="" src="../images/airline/1.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '아시아나항공'}">
		<img alt="" src="../images/airline/2.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '에어부산'}">
		<img alt="" src="../images/airline/3.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '에어서울'}">
		<img alt="" src="../images/airline/4.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '이스타항공'}">
		<img alt="" src="../images/airline/5.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '제주항공'}">
		<img alt="" src="../images/airline/6.png" style="width: 115px;">
		</c:if>		
		<c:if test="${alist.airlineNm == '진 에어'}">
		<img alt="" src="../images/airline/7.png" style="width: 115px;">
		</c:if>			
		<c:if test="${alist.airlineNm == '코리아 익스프레스 에어'}">
		<img alt="" src="../images/airline/8.png" style="width: 115px;">
		</c:if>			
		<c:if test="${alist.airlineNm == '티웨이항공'}">
		<img alt="" src="../images/airline/9.png" style="width: 115px;">
		</c:if>			
		<c:if test="${alist.airlineNm == '플라이 강원'}">
		<img alt="" src="../images/airline/10.png" style="width: 115px;">
		</c:if>
		<c:if test="${alist.airlineNm == '하이에어'}">
		<img alt="" src="../images/airline/11.png" style="width: 115px;">
		</c:if>	
		
		</div>
		<div style="float: left; padding-left: 25px; line-height: 73px;">${alist.airlineNm}</div>
	
	</td> 
	<td class="td1">${alist.vihicleId}<input type="hidden" value="${alist.fnum}" class="afnum"></td> 
	<td class="td7">${alist.economyCharge}원</td>  
	<td class="td7">${195 - alist.seatTotal}</td>  
</tr>

<tr class="ahide"><td colspan="7" style="vertical-align: middle;">

<div style="width: 770px;margin: 0 auto;font-weight: bold; padding-left: 26px;">
	
	<div style="float: left; line-height: 34px; margin-right:40px;">
		<div style="clear: both;">
			<div style="float: left;">출발시간 :&nbsp</div> <div class="deptd" style="float: left;">${alist.depPlandTime}</div>
		</div>
	</div>
	
	<div style="float: left; line-height: 34px; margin-right: 37px;">
		<div style="clear: both;">
			<div style="float: left;">도착시간 :&nbsp</div> <div class="arrtd" style="float: left;">${alist.arrPlandTime}</div>
		</div>
	</div>
	
	<div style="float: left; line-height: 34px;">
		<div style="clear: both;">
			<div style="float: left;">이동거리 :&nbsp</div> <div class="km" style="float: left;">${alist.flightKm}KM</div>
		</div>
	</div>
</div>




</td></tr>
</c:forEach>



</c:if>
</c:if>