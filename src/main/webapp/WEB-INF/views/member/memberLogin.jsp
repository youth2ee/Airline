<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<link href="../resources/css/header.css" rel="stylesheet">
<style type="text/css">
.container {
    width: 1180px;
    margin: 0px auto 100px;
}
.container h3 {
    margin: 60px 0 50px 0;
    font-size: 40px;
    color: #000;
    text-align: center;
    font-weight: normal;
    line-height: 1;
    font-family: 'Noto Sans KR','AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;
}
.inner{
    display: block;
    width: 500px;
    margin: 0 auto;
}
.input_wrap {
    display: block;
    position: relative;
}
input[type="text"], input[type="email"], input[type="password"], input[type="number"] {
    height: 44px;
    padding: 0 15px;
    margin-right: 10px;
    border: 1px solid #f3f3f3;
    border-bottom: 1px solid #ddd;
    color: #222;
    background-color: #f3f3f3;
    font-size: 16px;
    line-height: 40px;
}
input, select, label, button, textarea {
    border-radius: 0;
    -webkit-border-radius: 0;
    background-color: transparent;
    color: #222;
    font-size: 15px;
    line-height: normal;
    font-family: 'Noto Sans KR','AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;
    vertical-align: middle;
    -webkit-appearance: none;
    appearance: none;
    -moz-appearance: none;
}

input[type="checkbox"] + label {
    min-height: 20px;
    padding: 0 40px 0 30px;
    background: url(https://flyasiana.com/C/pc/image/common/bg_checkbox_default.png) no-repeat;
    font-size: 16px;
    color: #222;
    vertical-align: middle;
    line-height: 18px;
}
.login_wrap .inner .login_btn_wrap button {
    width: 100%;
    display: block;
}
button.danger {
    margin-top: 15px;
    border: 1px solid #d60815;
    background-color: #d60815;
    color: #fff;
    width: 500px;
    height: 50px;
    border-radius: 4px;
}
.btnJoin {
    border: 1px solid #6d6e71;
    background-color: #6d6e71;
    color: #fff;
    padding: 11px 30px;
    font-size: 15px;
    min-height: 46px;
    line-height: 17px;
}
#id {
    width: 468px;
    margin-bottom: 15px;
}
#pw{
	margin-bottom: 15px;
}
.login_wrap .inner .login_info_wrap {
    overflow: hidden;
    margin: 17px 0;
    padding-top: 20px;
    border-top: 1px solid #ddd;
}
 .login_wrap ul .li2:before,.login_wrap ul .li3:before {
        content: '';
    display: inline-block;
    vertical-align: middle;
    height: 12px;
    width: 1px;
    border-left: 1px solid #ccc;
    margin: 0 15px;
}
.login_wrap ul{
    list-style: none;
 }
 .login_wrap ul li {
 	float: left;
 }
 .left{
    width: 65%;
    float: left;
    height: 80px;
    }
.right{
	width: 35%;
    float: left;
    height: 80px;
}
ul{
	font-size: 14px;
    padding: 0;
}
.btnJoin{
	float: right;
	border-radius: 5px;
}
</style>
</head>
<c:import url="../layout/header.jsp" />
<body>
	<div class="container">
		<form>
			<div class="login_wrap">
				<h3>로그인</h3>
				<div class="inner_wrap">
					<div class="inner">
						<div class="input_wrap">
							<input type="text" id="id" placeholder="아이디 입력" title="아이디 입력" style="width:468px;" name="id">
							<input type="password" id="pw" placeholder="비밀번호 입력" title="비밀번호 입력" style="width:468px;" autocomplete="off" name="pw">
						</div>
						<div class="checkBox_wrap">
							<input type="checkbox" id="rememberId">
							<label for="rememberId" id="rememberIdLabel" class="id_save">아이디 저장</label>
						</div>
						<div class="btn_wrap">
							<button type="button" id="btnLogin" name="btnLogin" class="btn danger">로그인</button>
						</div>
						<div class="login_info_wrap">
							<div class="left">
								<ul>
									<li>아이디 찾기</li>
									<li class="li2">회원번호 찾기</li>
									<li class="li3">비밀번호 찾기</li>
								</ul>
								
							</div>
							<div class="right">
								<button class="btnJoin">
									회원가입
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<footer>
	
	</footer>
</body>
</html>