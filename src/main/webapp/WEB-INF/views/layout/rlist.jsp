<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
		<c:forEach items="${rList}" var="rl" varStatus="status">

			<div class="rlist_wrap" OnClick="location.href ='./indexSearch?search=${rl.svoca}'" style="cursor:pointer;" >
				<div class="rcon rrank">${status.index + 1}</div>
				<div class="rcon rmain">${rl.svoca}</div>
				<div class="rcon">${rl.total}</div>
				
				<div class="rup">
				
				<c:if test="${tolist[rl.svoca] > 0}">
				<div class="rupc" title="up">▲</div>
				</c:if>
				
				<c:if test="${tolist[rl.svoca] < 0}">
				<div class="rupc" title="down">▼</div>
				</c:if>
				
				<c:if test="${tolist[rl.svoca] == 0}">
				<div class="rupc" title="middle">-</div>
				</c:if>
				
				</div>
			</div>

		</c:forEach>