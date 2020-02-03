<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
				<ul>
					<c:forEach items="${list}" var = "vo">
					<li>
							<div>${vo.title}</div>
							<div class="tcons">${vo.textContents}</div>
					</li>
					</c:forEach>
				 </ul>	
