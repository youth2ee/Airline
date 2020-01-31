<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- 바디 바로 아래에 임포트 -->
<div id="loading_oh" style="position:absolute; top:10px; left:10px; width: 100%; height: 100%; z-index: 1000; background-color:rgba(243,243,243,0.5);">
<table width="100%" height="100%" align="center" cellpadding="0" cellspacing="0">
<tr>
    <td align="center" width="100%" height="100%"><img src="${pageContext.request.contextPath}/images/loading2.gif" border="0"><br><b><font color="black">잠시만 기다려 주세요</font></b></td>
</tr>
</table>
</div>
<script type="text/javascript">
window.onload = function(){
	$("#loading_oh").css("display", "none");
}
//페이지 로딩완료 이후 로딩이미지 다시 필요하면 함수 호출

//로딩이미지 띄우기 -> JS에서 필요한부분에 LS();
function LS(){
	$("#loading_oh").css("display", "block");
}

//로딩이미지 없애기 -> JS에서 필요한부분에 LS();
function LE(){
	$("#loading_oh").css("display", "none");
}

</script>
<div class="header_wrap">
		<div class="header_top_inner">
			<div class="header_top_menu">
				<div class="menu_topwrap">
					<ul>
						<li>1
						</li>
						<li class="li1">2</li>
						<li class="li1">3</li>
					</ul>
				</div>
				
				<div class="menu_topwrap2">
					<ul>
						<li>로그인</li>
						<li class="li1">회원가입</li>
						<li class="li1">고객센터</li>
					</ul>				
				</div>
			</div>
		</div>
		<div class="header_bottom_inner">
			<div class="header_bottom_menu">
				<div class="menu_wrap_Left">
					<img alt="" src="./images/index/index_2.png" style="width: 220px; padding-top: 18px;">
				</div>
			
			
				<div class="menu_wrap">
					<div class="menu1">항공권예약</div>
					<div class="menu1">웹체크인</div>
					<div class="menu1">주차장예약</div>
					<div class="menu1">리무진예약</div>
				</div>
				
				
				<div class="menu_wrap_Right">
					<div class="r1"><i class='fas fa-comment-dots' style='font-size:30px'></i></div>
					<div class="r1"><i class="material-icons" style="font-size:33px; padding-top: 20px;">person_pin</i></div>
					<div class="r1 tooltip1">
					<i class='fas fa-search' style='font-size:28px; padding-left: 3px;'></i>
					<div class="tooltiptext1">
<div class="search__container">
	<form action="./indexSearch" id="frm">
    <input class="search__input" type="text" placeholder="Search" name="search">
    </form>
</div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	