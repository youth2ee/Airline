<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="./template/boot.jsp"></c:import>

<link rel="stylesheet" href="../resources/css/index/indexSearch.css">
<link rel="stylesheet" href="../resources/css/reset.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<header></header>
<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option selected="selected" value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>


<!----- new ------>

<div id="container">
	<h3>공지사항</h3>
	
	<form id="frm" action="./indexSearch">
	<div class="total_search_input">
		<div class="search_inner">
			<input type="text" name="search" id="searchText" class="common" placeholder="검색어를 입력하세요." value="${search}">
			<button id="btnSearch">검색</button>
		</div>
	</div>
	</form>	
		
		
	<div class="tab_wrap">
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
					<c:forEach items="${tlist}" var = "vo">
					<li>
							<div>${vo.title}</div>
							<div>${vo.textContents}</div>
					</li>
					</c:forEach>
				 </ul>	
			</div>
		</div>
<!-- 		<div id="tab-2" class="tab-content"></div>
		<div id="tab-3" class="tab-content"></div>
		<div id="tab-4" class="tab-content"></div>
		<div id="tab-5" class="tab-content"></div>
		<div id="tab-6" class="tab-content"></div> -->
	</div>
	
</div>


<div id="realList"></div>


<!-- paging -->

	
	<script type="text/javascript">
	/* tab */
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
	                                                  
	/*paging*/
		$('.pagingNo').click(function(){	
			var a = $(this).val();                 
			});

		$('body').on('click','.tab-link',function(){
			var menu = $(this).find('.val').text();
			var search = $('#searchText').val();

			$.ajax({
				data : {
					menu:menu,
					search:search
					},
				type : "GET",
				url : "./searchSelect",
				success : function(data) {
					$('.tab_wrap').html(data);
				}
			}); 
			
		});

		
	</script>

</body>
</html>	
			
			
			
