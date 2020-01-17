<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 
    
    <div style="width: 400px; height: 400px; background-color: aqua;">
 	<table id="deplocTable">
 	<c:forEach items="${depLoc}" var="depairPort">
 	<tr><td class="deploctd">${depairPort.depAirportNm}</td></tr>
 	</c:forEach> 
 </table>
 </div>