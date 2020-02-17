<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Index search</title>
<c:import url="./template/boot.jsp"></c:import>
    <link href="../resources/css/header.css" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/index/indexSearch.css">
<link rel="stylesheet" href="../resources/css/reset.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<header><c:import url="./layout/header.jsp"></c:import></header>
	<div id="headerBottom">
		<div id="hbh">
			<div id="hbhome">
				<i class="fa fa-home"></i>
			</div>
		</div>
	</div>


	<!----- new ------>

	<div id="container">
		<h3>통합검색</h3>

		<form id="frm" action="./indexSearch">
			<div class="total_search_input">
				<div class="search_inner">
					<input type="text" name="search" id="searchText" class="common"
						placeholder="검색어를 입력하세요." value="${search}">
					<button id="btnSearch">검색</button>
				</div>
			</div>
		</form>


		<div class="tab_wrap">
			<ul class="tabs">
				<li class="tab-link current"><span class="val">전체</span></li>
				<li class="tab-link"><span class="val">EveryAir소식</span></li>
				<li class="tab-link"><span class="val">EveryAir클럽</span></li>
				<li class="tab-link"><span class="val">유류할증료</span></li>
				<li class="tab-link"><span class="val">제휴사소식</span></li>
				<li class="tab-link"><span class="val">기타</span></li>
			</ul>

			<div>
				<div class="bbs_list">
					<ul>
						<li class="cate">EveryAir소식</li>							
						<c:forEach items="${tlist}" var="vo">
							
							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == 'EveryAir소식'}">
								<li OnClick="location.href ='./notice/noticeSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>
						
						<li class="cate">EveryAir클럽</li>							
						<c:forEach items="${tlist}" var="vo">

						
							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == 'EveryAir클럽'}">
								<li OnClick="location.href ='./notice/noticeSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>
						
						<li class="cate">유류할증료</li>							
						<c:forEach items="${tlist}" var="vo">

							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == '유류할증료'}">
								<li OnClick="location.href ='./notice/noticeSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>
						
						<li class="cate">제휴사소식</li>							
						<c:forEach items="${tlist}" var="vo">

						
							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == '제휴사소식'}">
								<li OnClick="location.href ='./notice/noticeSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>
						
						<li class="cate">기타</li>							
						<c:forEach items="${tlist}" var="vo">

							
							<c:if test="${not empty vo}">
							<c:if test="${vo.cate == '기타'}">
								<li OnClick="location.href ='./notice/noticeSelect?num=${vo.num}'" style="cursor:pointer;" >
									<div class="ttitle">${vo.title}</div>
									<div class="tcons">${vo.textContents}</div>
								</li>
							</c:if>
							</c:if>
						</c:forEach>						
						
					</ul>
				</div>
			</div>
		</div>

	</div>


	<div id="realList">
		<div id="rtitle">실시간 검색어</div>
		<div id="rwrap"> 
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

		</c:forEach>
		</div>
	</div>


	<!-- paging -->


	<script type="text/javascript">
		var search = '${search}';

		/* 검색어 : red */
		$(document).ready(function() {
					$('.tcons').each(function(index) {
								var tlist = $(this).text();
								tlist = tlist.replace(search, "<span class='tact'>" + search + "</span>");

								$(this).html(tlist);

							});

					$('.ttitle').each(function(index) {
						var tlist2 = $(this).text();
						tlist2 = tlist2.replace(search, "<span class='tact2'>" + search + "</span>");

						$(this).html(tlist2);

					});
					
				});


		$('body').on('click','.tab-link',function() {

					$(this).parent('ul').find('li').removeClass('current');
					$(this).addClass('current');

					var menu = $(this).find('.val').text();
					var search = $('#searchText').val();

					$.ajax({
						data : {
							menu : menu,
							search : search
						},
						type : "GET",
						url : "./searchSelect",
						success : function(data) {
							$('.bbs_list').html(data);
					        $(".cate").each(function(){
					        	if($(this).next().hasClass('cate') || $(this).next().html()==undefined){
					        		$(this).after('<li class="nolist">검색결과가 없습니다.</li>');
					        	}
					        });
							$('.tcons').each(function(index) {
								var tlist = $(this).text();
								tlist = tlist.replace(search,"<span class='tact'>" + search + "</span>");
										$(this).html(tlist);
							});


							$('.ttitle').each(function(index) {
								var tlist2 = $(this).text();
								tlist2 = tlist2.replace(search, "<span class='tact2'>" + search + "</span>");

								$(this).html(tlist2);

							});
						}
					});

				});

/* ajax 실시간 자동 검색어 */

$(document).ready(function() {
       
playAlert = setInterval(function() {
	$.ajaxSettings.traditional = true;
    $.ajax ({
        url : "./rlist",
        cache : false,
        success : function (data) {

        $("#rwrap").html(data);
        
        }

    });

    }, 5000);
}); 




$(".cate").each(function(){

	if($(this).next().hasClass('cate') || $(this).next().html()==undefined){
		$(this).after('<li class="nolist">검색결과가 없습니다.</li>');
	}
	
});



	</script>

</body>
</html>



