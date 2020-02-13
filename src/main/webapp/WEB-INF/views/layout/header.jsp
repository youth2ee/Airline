<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="header_wrap">
		<div class="header_top_inner">
			<div class="header_top_menu">
				<div class="menu_topwrap">
					<ul>
						<li>1</li>
						<li class="li1">2</li>
						<li class="li1">3</li>
					</ul>
				</div>
				
				<div class="menu_topwrap2">
					<ul>
						<c:if test="${not empty member}">
						<li OnClick="location.href ='${pageContext.request.contextPath}/member/memberLogout'" style="cursor:pointer;">로그아웃</li>
						<li class="li1" OnClick="location.href ='${pageContext.request.contextPath}/mypage/main'" style="cursor:pointer;">마이페이지</li>
						</c:if>
						<c:if test="${empty member}">
						<li OnClick="location.href ='${pageContext.request.contextPath}/member/memberLogin'" style="cursor:pointer;">로그인</li>
						<li class="li1" OnClick="location.href ='${pageContext.request.contextPath}/member/memberAgree'" style="cursor:pointer;">회원가입</li>
						</c:if>
						
						<li class="li1" OnClick="location.href ='${pageContext.request.contextPath}/notice/noticeList'" style="cursor:pointer;">고객센터</li>
					</ul>				
				</div>
			</div>
		</div>
		<div class="header_bottom_inner">
			<div class="header_bottom_menu">
				<div class="menu_wrap_Left">
					<img alt="" src="${pageContext.request.contextPath}/images/index/index_2.png" style="width: 220px; padding-top: 18px;" OnClick="location.href ='/${pageContext.request.contextPath}'" style="cursor:pointer;" >
				</div>
			
			
				<div class="menu_wrap">
					<div class="menu1" OnClick="location.href ='${pageContext.request.contextPath}/booking/bookingMain'" style="cursor:pointer;">항공권예약</div>
					<div class="menu1" OnClick="location.href ='${pageContext.request.contextPath}/checkIn/test'" style="cursor:pointer;">웹체크인</div>
					<div class="menu1" OnClick="location.href ='${pageContext.request.contextPath}/park/ParkRes'" style="cursor:pointer;">주차장예약</div>
					<div class="menu1" OnClick="location.href ='${pageContext.request.contextPath}/limo/limoHome'" style="cursor:pointer;">리무진예약</div>
				</div>
				
				
				<div class="menu_wrap_Right">
					
										<div class="r1">
					<i class='fas fa-comment-dots' style='font-size: 30px' onclick="window.open('${pageContext.request.contextPath}/chat2','아론','width=470, height=800');"></i>
				</div>
					
					<div class="r1">
					<c:if test="${not empty member}">
					<i class="material-icons" OnClick="location.href ='${pageContext.request.contextPath}/mypage/main'" style="font-size:33px; padding-top: 20px; cursor:pointer;">person_pin</i>
					</c:if>
					<c:if test="${empty member}">
					<i class="material-icons mp" style="font-size:33px; padding-top: 20px; cursor:pointer;">person_pin</i>
					</c:if>
					
					</div>
					
					<div class="r1 tooltip1">
					<i class='fas fa-search' id="sbtn" style='font-size:28px; padding-left: 3px;'></i>
						<div class="tooltiptext1">
							<div class="search__container">
								<form action="${pageContext.request.contextPath}/indexSearch" id="frm2">


							  	  <input class="search__input" type="text" placeholder="Search" name="search">
							  	  <i class='fas fa-search' id="ssbtn"></i>

							    </form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript">
/* 검색 */
$('body').on('click', '#sbtn', function(){
	$('.tooltiptext1').css("display", "inline-block");
});

$('body').on('click', '#ssbtn', function(){
	$('#frm2').submit();
});


$('body').on('click', '.mp', function(){
	alert("로그인 해주세요.");
	location.href="${pageContext.request.contextPath}/member/memberLogin";	
});
</script>

