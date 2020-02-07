<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul>

	
	<c:if test="${cate != '전체'}">
	
		<c:if test="${empty list}">
			<li class="nolist">검색결과가 없습니다.</li>
		</c:if>
		
		<c:forEach items="${list}" var="vo">
			<li>
				<div class="ttitle">${vo.title}</div>
				<div class="tcons">${vo.textContents}</div>
			</li>
		</c:forEach>

	</c:if>


	<c:if test="${cate == '전체'}">
							<li class="cate">EveryAir소식</li>							
						<c:forEach items="${list}" var="vo">
							
							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == 'EveryAir소식'}">
								<li OnClick="location.href ='./board/boardSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>
						
						<li class="cate">EveryAir클럽</li>							
						<c:forEach items="${list}" var="vo">

						
							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == 'EveryAir클럽'}">
								<li OnClick="location.href ='./board/boardSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>
						
						<li class="cate">유류할증료</li>							
						<c:forEach items="${list}" var="vo">

							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == '유류할증료'}">
								<li OnClick="location.href ='./board/boardSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>
						
						<li class="cate">제휴사소식</li>							
						<c:forEach items="${list}" var="vo">

						
							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == '제휴사소식'}">
								<li OnClick="location.href ='./board/boardSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>
						
						<li class="cate">기타</li>							
						<c:forEach items="${list}" var="vo">

							
							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == '기타'}">
								<li OnClick="location.href ='./board/boardSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>						
						
	
	
	
	</c:if>


</ul>
