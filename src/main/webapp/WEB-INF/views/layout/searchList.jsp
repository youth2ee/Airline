<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">
				<span class="val">전체</span>
			</li>
			<li class="tab-link" data-tab="tab-2">
				<span class="val">EveryAir소식</span>
			</li>
			<li class="tab-link" data-tab="tab-3">
				<span class="val">유류할증료</span>
			</li>
			<li class="tab-link" data-tab="tab-4">
				<span class="val">EveryAir클럽</span>
			</li>
			<li class="tab-link" data-tab="tab-5">
				<span class="val">제휴사소식</span>
			</li>
			<li class="tab-link" data-tab="tab-6">
				<span class="val">기타</span>
			</li>
		</ul>
		
		<div id="tab-1" class="tab-content current">
			<div class="bbs_list">
				<ul>
					<c:forEach items="${list}" var = "vo">
					<li>
							<div>${vo.title}</div>
							<div>${vo.textContents}</div>
					</li>
					</c:forEach>
				 </ul>	
			</div>
		</div>