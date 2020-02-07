<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
		<c:forEach items="${rList}" var="rl" varStatus="status">

			<div class="rlist_wrap" OnClick="location.href ='./indexSearch?search=${rl.svoca}'" style="cursor:pointer;" >

				<div class="rcon rrank">
				<c:if test="${status.index + 1 eq 1}">
					<img src="${pageContext.request.contextPath}/images/icon/1.png">
				</c:if>		
				<c:if test="${status.index + 1 eq 2}">
					<img src="${pageContext.request.contextPath}/images/icon/2.png">
				</c:if>		
				<c:if test="${status.index + 1 eq 3}">
					<img src="${pageContext.request.contextPath}/images/icon/3.png">
				</c:if>	
				<c:if test="${status.index + 1 eq 4}">
					<img src="${pageContext.request.contextPath}/images/icon/4.png">
				</c:if>	
				<c:if test="${status.index + 1 eq 5}">
					<img src="${pageContext.request.contextPath}/images/icon/5.png">
				</c:if>	
				<c:if test="${status.index + 1 eq 6}">
					<img src="${pageContext.request.contextPath}/images/icon/6.png">
				</c:if>	
				<c:if test="${status.index + 1 eq 7}">
					<img src="${pageContext.request.contextPath}/images/icon/7.png">
				</c:if>	
				<c:if test="${status.index + 1 eq 8}">
					<img src="${pageContext.request.contextPath}/images/icon/8.png">
				</c:if>	
				<c:if test="${status.index + 1 eq 9}">
					<img src="${pageContext.request.contextPath}/images/icon/9.png">
				</c:if>	
				<c:if test="${status.index + 1 eq 10}">
					<img src="${pageContext.request.contextPath}/images/icon/10.png">
				</c:if>	
				
				</div>
				
				<div> 

				<div class="rcon rmain">${rl.svoca}</div>
				<div class="rcon rlast">${rl.total}</div>
				
				<div class="rup">
					<c:if test="${tolist[rl.svoca] > 0}">
					<div class="rupc" title="up"><span class="glyphicon glyphicon-chevron-up"></span></div>
					</c:if>
					
					<c:if test="${tolist[rl.svoca] < 0}">
					<div class="rupc" title="down"><span class="glyphicon glyphicon-chevron-down"></span></div>
					</c:if>
					
					<c:if test="${tolist[rl.svoca] == 0}">
					<div class="rupc" title="middle"><span class="glyphicon glyphicon-minus"></span></div>
					</c:if>
				</div>
				</div>
				
			</div>

		</c:forEach>