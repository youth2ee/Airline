<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="../resources/css/reset.css" rel="stylesheet">
    <link href="../resources/css/header.css" rel="stylesheet">
    <c:import url="../template/boot.jsp"></c:import>
    <link href="../resources/css/mypage/park.css" rel="stylesheet">
<style type="text/css">
	
th {
  text-align: center;
}
label {font-size:16px !important; color:#151515 !important;}
.wine:hover{
color: white;
}
</style>
</head>
<body>
<c:import url="../layout/header.jsp"></c:import>
		<div id="sub_content">
			<div class="section">
				<table class="board_table" id="grid">
					<thead class="t_hidden">
						<tr>
						<th scope="col">공항</th>
						<th scope="col">차량번호</th>
						<th scope="col">이용예정일시</th>
						<th scope="col">차량종류</th>
						<th scope="col">상태</th>
						<th scope="col"></th>
					</tr></thead>
					<tbody>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td class="t_hidden">${dto.airport}</td>
							<td class="t_hidden">${dto.carNum}</td>
							<td class="t_hidden">${dto.startDate} ~ ${dto.endDate}</td>
							<td class="t_hidden">일반</td>
							<td class="t_hidden">예약완료</td>
							<td><button class="btn small wine" onclick="location.href='parkSelect?pResNum=${dto.pResNum}'">상세정보</button><button class="btn small border" onclick="deleteconfirm(${dto.pResNum})">예약취소</button></td>
						
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<!-- //paginate -->
			</div>
		</div>
<script type="text/javascript">

function deleteconfirm(pResNum){
	location.href='parkCancel?pResNum='+pResNum;
}

</script>
</body>
</html>