<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Nav</title>
</head>
<body>

<%-- <div>
<c:if test="${not empty customVO.adultsVOList}">
<h1>성인 : ${fn:length(customVO.adultsVOList)}</h1>
<c:forEach items="${customVO.adultsVOList}"  var="adult" varStatus="status">

${fn:length(adult.flightDataVO)}
${adult.firstName} ${adult.lastName}
${adult.memberNum}


<c:forEach items="${adult.flightDataVO}" var="finfo">
<div>
${finfo.vihicleId}
${finfo.airlineNm}
${finfo.depPlandTime}
${finfo.depAirportNm}
${finfo.arrPlandTime}
${finfo.arrAirportNm}
${finfo.flightTime}
${finfo.economyCharge}
</div>

<div>
${finfo.priceVO.realPrice}원/
${finfo.priceVO.cname}/
${finfo.priceVO.cprice}원/
${finfo.priceVO.ctotal}원/
</div>

</c:forEach>

</c:forEach>
</c:if>


<c:if test="${not empty customVO.childrenVOList}">
<h1>아이 : ${fn:length(customVO.childrenVOList)}</h1>
<c:forEach items="${customVO.childrenVOList}"  var="children">


${fn:length(children.flightDataVO)}
${children.firstName} ${children.lastName}
${children.memberNum}


<c:forEach items="${children.flightDataVO}" var="finfoc">
<div>
${finfoc.vihicleId}
${finfoc.airlineNm}
${finfoc.depPlandTime}
${finfoc.depAirportNm}
${finfoc.arrPlandTime}
${finfoc.arrAirportNm}
${finfoc.flightTime}
${finfoc.economyCharge}
</div>

<div>
${finfoc.priceVO.realPrice}원/
${finfoc.priceVO.cname}/
${finfoc.priceVO.cprice}원/
${finfoc.priceVO.ctotal}원/
</div>

</c:forEach>




</c:forEach>
</c:if>






</div> --%>

</body>
</html>