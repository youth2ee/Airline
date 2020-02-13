<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin: 0 0 0 0;">
<!-- Tocplus 15.1 -->
<c:if test="${not empty member}">

<script type="text/javascript">
tocplusTop=1150;
tocplusLeft=5;
tocplusMinimizedImage='http://kr03.tocplus007.com/img/minimized_ko.gif';
tocplusHAlign='right';
tocplusWidth=455;
tocplusHeight=770;
tocplusUserName='${member.name}';
tocplusFrameColor='#c60c16';
tocplusFloatingWindow=true;
var tocplusHost = (("https:" == document.location.protocol) ? "https://" : "http://");
document.write(unescape("%"+"3Cscript src='" + tocplusHost + "kr03.tocplus007.com/chatLoader.do?userId=everyair' type='text/javascript'"+"%"+"3E"+"%"+"3C/script"+"%"+"3E"));
</script>

</c:if>
<c:if test="${empty member}">

<script type="text/javascript">
tocplusTop=1150;
tocplusLeft=5;
tocplusMinimizedImage='http://kr03.tocplus007.com/img/minimized_ko.gif';
tocplusHAlign='right';
tocplusWidth=455;
tocplusHeight=770;
tocplusUserName='게스트';
tocplusFrameColor='#c60c16';
tocplusFloatingWindow=true;
var tocplusHost = (("https:" == document.location.protocol) ? "https://" : "http://");
document.write(unescape("%"+"3Cscript src='" + tocplusHost + "kr03.tocplus007.com/chatLoader.do?userId=everyair' type='text/javascript'"+"%"+"3E"+"%"+"3C/script"+"%"+"3E"));
</script>
</c:if>

</body>
</html>