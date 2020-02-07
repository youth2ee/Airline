<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이니시스 결제</title>
</head>
<link href="../resources/css/reset.css" rel="stylesheet">
<body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<script type="text/javascript">

var IMP = window.IMP; // 생략가능
IMP.init('imp21684366'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '${VO.name}',
    amount : ${VO.amount},
    buyer_email : '${VO.membersVO.email}',
    buyer_name : '${VO.membersVO.name}',
    buyer_tel : '${VO.membersVO.phone}',
}, function(rsp) {
    if ( rsp.success ) {

        
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;

/*         opener.parent.location="../imPay/imPayComplete";
        self.close(); */
        alert(msg);
        
  		$.ajax({
			data : {
				success:rsp.success,
				imp_uid:rsp.imp_uid,
				merchant_uid:rsp.merchant_uid,
				pay_method:rsp.pay_method,
				paid_amount:rsp.paid_amount,
				status:rsp.status,
				name:rsp.name,
				pg_provider:rsp.pg_provider,
				pg_tid:rsp.pg_tid,
				paid_at:rsp.paid_at,
				receipt_url:rsp.receipt_url,
				apply_num:rsp.apply_num,
				mil:'${VO.mil}'
					
			},
			type : "GET",
			url : "../imPay/imPayComplete",
			success : function(data) {
				$('.hi').html(data);

			}
		}); 

        
        
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        alert(msg);
        location.href="../";
    }
    
    
});


</script>

<!-- <script type="text/javascript">
var IMP = window.IMP; // 생략가능
IMP.init('imp21684366'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : ${VO.name},
    amount : ${VO.amount},
    buyer_email : ${VO.membersVO.email},
    buyer_name : ${VO.membersVO.name},
    buyer_tel : ${VO.membersVO.phone},
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;

        opener.parent.location="../imPay/imPayComplete";
        self.close();
        
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }
    
    alert(msg);
});


</script>  -->


</body>
</html>