<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>

<table>

<tr><th>결제성공</th></tr>
<tr><td style="color: fuchsia;">success</td><td style="background-color: maroon;">${vo.success} </td></tr>
<tr><td style="color: fuchsia;">imp_uid </td><td style="background-color: maroon;">${vo.imp_uid} </td></tr>
<tr><td style="color: fuchsia;">merchant_uid </td><td style="background-color: maroon;">${vo.merchant_uid} </td></tr>
<tr><td style="color: fuchsia;">pay_method </td><td style="background-color: maroon;">${vo.pay_method} </td></tr>
<tr><td style="color: fuchsia;">paid_amount </td><td style="background-color: maroon;">${vo.paid_amount} </td></tr>
<tr><td style="color: fuchsia;">status </td><td style="background-color: maroon;">${vo.status} </td></tr>
<tr><td style="color: fuchsia;">name </td><td style="background-color: maroon;">${vo.name} </td></tr>
<tr><td style="color: fuchsia;">pg_provider </td><td style="background-color: maroon;">${vo.pg_provider} </td></tr>
<tr><td style="color: fuchsia;">pg_tid </td><td style="background-color: maroon;">${vo.pg_tid} </td></tr>
<tr><td style="color: fuchsia;">paid_at </td><td style="background-color: maroon;">${vo.paid_at} </td></tr>
<tr><td style="color: fuchsia;">receipt_url </td><td style="background-color: maroon;">${vo.receipt_url} </td></tr>
<tr><td style="color: fuchsia;">apply_num </td><td style="background-color: maroon;">${vo.apply_num} </td></tr>

</table>


<button id="btn">메인으로</button>


<script>
$('body').on('click','#btn', function(){
	opener.parent.location="../";
    self.close();

});

</script>

