<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://flyasiana.com/C/pc/css/error.css">
</head>
<body>
<div class="container">
		<div class="error_wrapper flcase">
			<div class="err_tit">
				<p>${code}  ${msg}</p>

				<p>서비스 이용에 불편을 드려 죄송합니다. <br>
					일시적인 오류가 발생했습니다</p>


			</div>
			<div class="error_cont">
				<div class="infobox">
					<p>서비스 처리과정에서 문제가 발생하여 이용이 원활하지 않습니다. <br>
						잠시 후, 다시 이용해주시기 바랍니다.
					</p>
					
					<!-- en -->
					<p>An error has occurred. <br>
						Please try again later.
					</p>
					

				</div>
				<div class="btn_wrap2">
					<button type="button" class="btn_M red" onclick="location.href='http://localhost'">EveryAir Airlines Home</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>