<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="KO">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="Author" content="">
<meta name="keywords"
	content="탑승정보입력,Asiana Airlines,Asiana,Airlines,Fly,Flight,Ticket,Booking,Travel,Trip,Vacation,Business,Reservation,Checkin,Boarding Pass,Passenger">
<meta name="description" content="Asiana Airlines">

<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com/C/pc/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com/C/pc/css/layout.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com/C/pc/css/common.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com/C/pc/css/flyasiana.css">
<link rel="stylesheet" type="text/css"
	href="https://flyasiana.com/C/pc/css/corp.css">

<title>탑승정보입력│아시아나항공</title>
<img
	src="https://eum.flyasiana.com/ne.nfl?category=browser&amp;msg=Uncaught%20TypeError%3A%20Cannot%20read%20property%20'push'%20of%20undefined&amp;url=&amp;lineNo=1&amp;columnNo=63&amp;error=TypeError%3A%20Cannot%20read%20property%20'push'%20of%20undefined%20%250A%20%20%20%20at%20%3Canonymous%3E%3A1%3A63%20%250A%20%20%20%20at%20%3Canonymous%3E%3A4%3A59%20%250A%20%20%20%20at%20https%3A%2F%2Fwww.googletagmanager.com%2Fgtm.js%3Fid%3DGTM-57TCD7W%3A1607%3A414%20%250A%20%20%20%20at%20c%20(https%3A%2F%2Fwww.googletagmanager.com%2Fgtm.js%3Fid%3DGTM-57TCD7W%3A1609%3A152)%20%250A%20%20%20%20at%20Ab%20(https%3A%2F%2Fwww.googletagmanager.com%2Fgtm.js%3Fid%3DGTM-57TCD7W%3A1466%3A396)%20%250A%20%20%20%20at%20e%20(https%3A%2F%2Fwww.googletagmanager.com%2Fgtm.js%3Fid%3DGTM-57TCD7W%3A1495%3A138)%20%250A%20%20%20%20at%20https%3A%2F%2Fwww.googletagmanager.com%2Fgtm.js%3Fid%3DGTM-57TCD7W%3A1457%3A114%20%250A%20%20%20%20at%20Array.%3Canonymous%3E%20(https%3A%2F%2Fwww.googletagmanager.com%2Fgtm.js%3Fid%3DGTM-57TCD7W%3A1496%3A229)%20%250A%20%20%20%20at%20Object.Bf%20(https%3A%2F%2Fwww.googletagmanager.com%2Fgtm.js%3Fid%3DGTM-57TCD7W%3A1495%3A473)%20%250A%20%20%20%20at%20df%20(https%3A%2F%2Fwww.googletagmanager.com%2Fgtm.js%3Fid%3DGTM-57TCD7W%3A1496%3A518)&amp;rr=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueInputPassenger.do&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;txid=&amp;user_end_time=1579248875&amp;1579248875813"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=134853583683312980&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=54&amp;pv=0&amp;pd=0&amp;po=0&amp;pt=54&amp;user_end_time=1579248875&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248875823"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=browser&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=744&amp;pv=12&amp;pd=1639&amp;po=4&amp;pt=2399&amp;rr=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueInputPassenger.do&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;txid=&amp;user_end_time=1579248877&amp;1579248877223"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=104119351388917070&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=40&amp;pv=1&amp;pd=0&amp;po=0&amp;pt=41&amp;user_end_time=1579248880&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248880696"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=135494209387187400&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=70&amp;pv=0&amp;pd=0&amp;po=0&amp;pt=70&amp;user_end_time=1579248883&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248883229"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=155353658254811700&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=75&amp;pv=1&amp;pd=0&amp;po=0&amp;pt=76&amp;user_end_time=1579248914&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248914981"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=567032763609196&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=45&amp;pv=0&amp;pd=0&amp;po=0&amp;pt=45&amp;user_end_time=1579248917&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248917374"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=93169084053214450&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=121&amp;pv=0&amp;pd=0&amp;po=0&amp;pt=121&amp;user_end_time=1579248926&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248926072"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=67485602476210740&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=43&amp;pv=0&amp;pd=0&amp;po=0&amp;pt=43&amp;user_end_time=1579248926&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248926301"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=13941979868816640&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=38&amp;pv=0&amp;pd=0&amp;po=0&amp;pt=38&amp;user_end_time=1579248929&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248929599"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=120239402171518940&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=41&amp;pv=0&amp;pd=0&amp;po=0&amp;pt=41&amp;user_end_time=1579248930&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248930003"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=56701520878510800&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=152&amp;pv=0&amp;pd=0&amp;po=0&amp;pt=152&amp;user_end_time=1579248959&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248959911"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
<img
	src="https://eum.flyasiana.com/ne.nfl?category=ajax&amp;rr=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;referrer=https%3A%2F%2Fflyasiana.com%2FI%2FKR%2FKO%2FRevenueDomesticFlightsSelect.do&amp;lang=ko&amp;c=&amp;ss=&amp;os=windows&amp;osg=windows&amp;osv=10&amp;arch=64&amp;wb=chrome&amp;wbv=79.0.3945.117&amp;wbg=chrome&amp;le=blink&amp;leg=blink&amp;dd=unknown&amp;ddg=pc&amp;browsing_type=B&amp;t=nprd&amp;v=1.2.7&amp;cv=0.2&amp;uuid=63639086503513150&amp;pr=0&amp;pa=0&amp;pl=0&amp;pc=0&amp;ps=167&amp;pv=0&amp;pd=0&amp;po=0&amp;pt=167&amp;user_end_time=1579248959&amp;error=201&amp;url=https%3A%2F%2Fflyasiana.com%2Fpublic%2Ff67fc9d121576a410e665f8135125&amp;method=POST&amp;1579248959930"
	width="1" height="1"
	style="left: 0px; position: absolute; display: none;">
</head>
<body style="overflow-y: auto;">
	<input type="hidden" id="hidJsessionId"
		value="3d-yj9FtUcBasd4BWsiXnP52FB1guKgMvJtE2k0WtTLG69V-ykau!-221295701!-800309583">



	<form id="form_goTo" name="form_goTo" method="post" target="_self">
		<input type="hidden" name="sessionUniqueKey"
			value="fed5a168-d901-4d82-f626-a75346f7ce44"> <input
			type="hidden" id="bookConditionData" name="bookConditionData"
			value="{&quot;officeId&quot;:&quot;SELOZ08DA&quot;,&quot;tripType&quot;:&quot;RT&quot;,&quot;domIntType&quot;:&quot;D&quot;,&quot;deductionType&quot;:&quot;&quot;,&quot;userData&quot;:{&quot;acno&quot;:&quot;776699818&quot;,&quot;birthDate&quot;:&quot;19970710&quot;,&quot;cardExpireDate&quot;:&quot;&quot;,&quot;email&quot;:&quot;daze123@hanmail.net&quot;,&quot;encryptPassword&quot;:&quot;&quot;,&quot;enrollDate&quot;:&quot;20200117&quot;,&quot;enrollStatus&quot;:&quot;1&quot;,&quot;firstName&quot;:&quot;YOONHEE&quot;,&quot;homePhone&quot;:&quot;&quot;,&quot;initPasswdIND&quot;:&quot;N&quot;,&quot;koreanFirstName&quot;:&quot;윤희&quot;,&quot;koreanLastName&quot;:&quot;임&quot;,&quot;koreanName&quot;:&quot;임윤희&quot;,&quot;englishName&quot;:&quot;YOONHEE/IM&quot;,&quot;lastName&quot;:&quot;IM&quot;,&quot;memberGrade&quot;:&quot;S&quot;,&quot;mobile&quot;:&quot;82-010-4735-2699&quot;,&quot;nationality&quot;:&quot;KR&quot;,&quot;residentCountry&quot;:&quot;KR&quot;,&quot;sso&quot;:&quot;&quot;,&quot;sex&quot;:&quot;F&quot;,&quot;siteList&quot;:&quot;FNN&quot;,&quot;title&quot;:&quot;MS&quot;,&quot;userId&quot;:&quot;daze123&quot;,&quot;totalRestMileage&quot;:&quot;0&quot;,&quot;campaignIdList&quot;:null,&quot;contactChangeDate&quot;:&quot;20200117&quot;,&quot;lastPasswordChangeDate&quot;:&quot;20200117&quot;,&quot;masterLogin&quot;:false,&quot;ssoSessionId&quot;:&quot;&quot;,&quot;customerClientIp&quot;:&quot;211.238.142.26&quot;,&quot;errorCode&quot;:&quot;0000&quot;,&quot;errorMessage&quot;:&quot;&quot;,&quot;token&quot;:&quot;&quot;,&quot;uuid&quot;:&quot;&quot;,&quot;onlineCouponCount&quot;:0,&quot;familyNumber&quot;:0},&quot;segmentConditionDatas&quot;:[{&quot;flightId&quot;:&quot;4&quot;,&quot;segmentNo&quot;:&quot;&quot;,&quot;departureArea&quot;:&quot;KR&quot;,&quot;departureCountry&quot;:&quot;&quot;,&quot;departureCity&quot;:&quot;SEL&quot;,&quot;departureCityName&quot;:&quot;서울&quot;,&quot;departureAirport&quot;:&quot;GMP&quot;,&quot;departureAirportName&quot;:&quot;서울 / 김포&quot;,&quot;arrivalArea&quot;:&quot;KR&quot;,&quot;arrivalCountry&quot;:&quot;&quot;,&quot;arrivalCity&quot;:&quot;CJU&quot;,&quot;arrivalCityName&quot;:&quot;제주&quot;,&quot;arrivalAirport&quot;:&quot;CJU&quot;,&quot;arrivalAirportName&quot;:&quot;제주&quot;,&quot;direct&quot;:&quot;&quot;,&quot;departureDateTime&quot;:&quot;202001171810&quot;,&quot;arrivalDateTime&quot;:&quot;&quot;,&quot;cabinClassList&quot;:[&quot;E&quot;],&quot;cabinClassNameList&quot;:[],&quot;exchangeSegment&quot;:false,&quot;flownSegment&quot;:false,&quot;recommendId&quot;:&quot;4&quot;,&quot;flightSegmentId&quot;:&quot;4&quot;,&quot;beforeArrivalDate&quot;:&quot;&quot;,&quot;bookingClass&quot;:&quot;Y&quot;,&quot;codeShare&quot;:&quot;Y&quot;,&quot;preAssignSeat&quot;:false,&quot;operationCarrierCode&quot;:&quot;BX&quot;,&quot;fareFamilyDiscountRate&quot;:&quot;0&quot;,&quot;flightConditionDatas&quot;:[{&quot;carrierCode&quot;:&quot;OZ&quot;,&quot;flightNo&quot;:&quot;8015&quot;,&quot;operationCarrierCode&quot;:&quot;BX&quot;,&quot;operationFlightNo&quot;:&quot;&quot;,&quot;departureCountry&quot;:&quot;KR&quot;,&quot;arrivalCountry&quot;:&quot;KR&quot;,&quot;departureAirport&quot;:&quot;GMP&quot;,&quot;arrivalAirport&quot;:&quot;CJU&quot;,&quot;departureDate&quot;:&quot;20200117181000&quot;,&quot;arrivalDate&quot;:&quot;20200117192000&quot;,&quot;departureCity&quot;:&quot;SEL&quot;,&quot;arrivalCity&quot;:&quot;CJU&quot;,&quot;fareFamily&quot;:&quot;BASIC&quot;,&quot;fareFamilyDesc&quot;:&quot;정상운임&quot;}]},{&quot;flightId&quot;:&quot;29&quot;,&quot;segmentNo&quot;:&quot;&quot;,&quot;departureArea&quot;:&quot;KR&quot;,&quot;departureCountry&quot;:&quot;&quot;,&quot;departureCity&quot;:&quot;CJU&quot;,&quot;departureCityName&quot;:&quot;제주&quot;,&quot;departureAirport&quot;:&quot;CJU&quot;,&quot;departureAirportName&quot;:&quot;제주&quot;,&quot;arrivalArea&quot;:&quot;KR&quot;,&quot;arrivalCountry&quot;:&quot;&quot;,&quot;arrivalCity&quot;:&quot;SEL&quot;,&quot;arrivalCityName&quot;:&quot;서울&quot;,&quot;arrivalAirport&quot;:&quot;GMP&quot;,&quot;arrivalAirportName&quot;:&quot;서울 / 김포&quot;,&quot;direct&quot;:&quot;&quot;,&quot;departureDateTime&quot;:&quot;202001180930&quot;,&quot;arrivalDateTime&quot;:&quot;&quot;,&quot;cabinClassList&quot;:[&quot;E&quot;],&quot;cabinClassNameList&quot;:[],&quot;exchangeSegment&quot;:false,&quot;flownSegment&quot;:false,&quot;recommendId&quot;:&quot;18&quot;,&quot;flightSegmentId&quot;:&quot;29&quot;,&quot;beforeArrivalDate&quot;:&quot;&quot;,&quot;bookingClass&quot;:&quot;Y&quot;,&quot;codeShare&quot;:&quot;Y&quot;,&quot;preAssignSeat&quot;:false,&quot;operationCarrierCode&quot;:&quot;BX&quot;,&quot;fareFamilyDiscountRate&quot;:&quot;0&quot;,&quot;flightConditionDatas&quot;:[{&quot;carrierCode&quot;:&quot;OZ&quot;,&quot;flightNo&quot;:&quot;8026&quot;,&quot;operationCarrierCode&quot;:&quot;BX&quot;,&quot;operationFlightNo&quot;:&quot;&quot;,&quot;departureCountry&quot;:&quot;KR&quot;,&quot;arrivalCountry&quot;:&quot;KR&quot;,&quot;departureAirport&quot;:&quot;CJU&quot;,&quot;arrivalAirport&quot;:&quot;GMP&quot;,&quot;departureDate&quot;:&quot;20200118093000&quot;,&quot;arrivalDate&quot;:&quot;20200118104500&quot;,&quot;departureCity&quot;:&quot;CJU&quot;,&quot;arrivalCity&quot;:&quot;SEL&quot;,&quot;fareFamily&quot;:&quot;BASIC&quot;,&quot;fareFamilyDesc&quot;:&quot;정상운임&quot;}]}],&quot;passengerConditionDatas&quot;:[{&quot;passengerNo&quot;:&quot;&quot;,&quot;passengerType&quot;:&quot;ADT&quot;,&quot;passengerTypeDesc&quot;:&quot;성인&quot;,&quot;title&quot;:&quot;&quot;,&quot;gender&quot;:&quot;&quot;,&quot;lastName&quot;:&quot;&quot;,&quot;firstName&quot;:&quot;&quot;,&quot;koreanFirstName&quot;:&quot;&quot;,&quot;koreanLastName&quot;:&quot;&quot;,&quot;birthDate&quot;:&quot;&quot;,&quot;carrierCode&quot;:&quot;&quot;,&quot;ffpNo&quot;:&quot;&quot;,&quot;departurePTCCode&quot;:&quot;&quot;,&quot;departurePTCRate&quot;:&quot;&quot;,&quot;departurePTCDesc&quot;:&quot;&quot;,&quot;arrivalPTCCode&quot;:&quot;&quot;,&quot;arrivalPTCRate&quot;:&quot;&quot;,&quot;arrivalPTCDesc&quot;:&quot;&quot;,&quot;infantPassengerNo&quot;:&quot;&quot;,&quot;hasInfant&quot;:false,&quot;primaryPassenger&quot;:false,&quot;savePassenger&quot;:false,&quot;staffSKElement_Auth&quot;:&quot;&quot;,&quot;staffSKElement_DJ&quot;:&quot;&quot;,&quot;staffSKElement_SN&quot;:&quot;&quot;,&quot;authNo&quot;:&quot;&quot;,&quot;acno&quot;:&quot;&quot;,&quot;staffNum&quot;:&quot;&quot;,&quot;dayOfBirth&quot;:&quot;&quot;,&quot;passengerName&quot;:&quot;&quot;,&quot;discountCode&quot;:&quot;&quot;,&quot;departureAirport&quot;:&quot;&quot;,&quot;departureAirportName&quot;:&quot;&quot;,&quot;arrivalAirport&quot;:&quot;&quot;,&quot;arrivalAirportName&quot;:&quot;&quot;,&quot;seqNumber&quot;:&quot;&quot;,&quot;staffPTCCode&quot;:&quot;&quot;,&quot;staffCoporateCode&quot;:&quot;&quot;,&quot;staffPricingCode&quot;:&quot;&quot;,&quot;staffResume&quot;:&quot;&quot;}],&quot;contactDatas&quot;:null,&quot;onlineCouponData&quot;:null,&quot;bizType&quot;:&quot;REV&quot;,&quot;airlineSearchType&quot;:&quot;&quot;,&quot;ptcCode&quot;:&quot;&quot;,&quot;pointOfSale&quot;:&quot;SEL&quot;,&quot;searchCurrency&quot;:&quot;KRW&quot;,&quot;mixedCabinCode&quot;:&quot;&quot;,&quot;paymentType&quot;:&quot;&quot;,&quot;mobileFlag&quot;:false,&quot;starAlliance&quot;:false,&quot;atc&quot;:false,&quot;childOnly&quot;:false,&quot;parentPnrAlpha&quot;:&quot;&quot;,&quot;bookForAnother&quot;:false,&quot;pageTicket&quot;:&quot;0&quot;,&quot;jsessionId&quot;:&quot;3d-yj9FtUcBasd4BWsiXnP52FB1guKgMvJtE2k0WtTLG69V-ykau!-221295701!-800309583&quot;,&quot;eventCFF&quot;:&quot;&quot;,&quot;salesType&quot;:&quot;&quot;,&quot;deepLinkId&quot;:&quot;&quot;,&quot;bigEventSeqNo&quot;:&quot;&quot;,&quot;bigEventDetailSeqNo&quot;:&quot;&quot;,&quot;deepLinkDate&quot;:&quot;20200117&quot;,&quot;onlyUpgradeSearch&quot;:false,&quot;travellerPTCInfoWithJson&quot;:&quot;&quot;,&quot;mixedBoadingLevel&quot;:false,&quot;actNo&quot;:&quot;&quot;,&quot;actMNo&quot;:&quot;&quot;,&quot;actGrade&quot;:&quot;&quot;,&quot;amount&quot;:&quot;&quot;,&quot;mileage&quot;:&quot;&quot;,&quot;currency&quot;:&quot;&quot;,&quot;cffList&quot;:[],&quot;staffSKElement_STFS&quot;:&quot;&quot;,&quot;staffSKElement_STFD&quot;:&quot;&quot;,&quot;staffSKElement_limitHour&quot;:&quot;&quot;,&quot;staff_systemId&quot;:&quot;&quot;,&quot;staff_arnkYn&quot;:&quot;&quot;,&quot;sublo&quot;:false,&quot;offlineOnhold&quot;:false}">
		<input type="hidden" id="parentData" name="parentData">
	</form>
	<form id="inputPassengerForm" name="inputPassengerForm" method="post"
		target="_self">
		<input type="hidden" name="bizType" value="REV"> <input
			type="hidden" id="bookConditionData" name="bookConditionData"
			value="{&quot;officeId&quot;:&quot;SELOZ08DA&quot;,&quot;tripType&quot;:&quot;RT&quot;,&quot;domIntType&quot;:&quot;D&quot;,&quot;deductionType&quot;:&quot;&quot;,&quot;userData&quot;:{&quot;acno&quot;:&quot;776699818&quot;,&quot;birthDate&quot;:&quot;19970710&quot;,&quot;cardExpireDate&quot;:&quot;&quot;,&quot;email&quot;:&quot;daze123@hanmail.net&quot;,&quot;encryptPassword&quot;:&quot;&quot;,&quot;enrollDate&quot;:&quot;20200117&quot;,&quot;enrollStatus&quot;:&quot;1&quot;,&quot;firstName&quot;:&quot;YOONHEE&quot;,&quot;homePhone&quot;:&quot;&quot;,&quot;initPasswdIND&quot;:&quot;N&quot;,&quot;koreanFirstName&quot;:&quot;윤희&quot;,&quot;koreanLastName&quot;:&quot;임&quot;,&quot;koreanName&quot;:&quot;임윤희&quot;,&quot;englishName&quot;:&quot;YOONHEE/IM&quot;,&quot;lastName&quot;:&quot;IM&quot;,&quot;memberGrade&quot;:&quot;S&quot;,&quot;mobile&quot;:&quot;82-010-4735-2699&quot;,&quot;nationality&quot;:&quot;KR&quot;,&quot;residentCountry&quot;:&quot;KR&quot;,&quot;sso&quot;:&quot;&quot;,&quot;sex&quot;:&quot;F&quot;,&quot;siteList&quot;:&quot;FNN&quot;,&quot;title&quot;:&quot;MS&quot;,&quot;userId&quot;:&quot;daze123&quot;,&quot;totalRestMileage&quot;:&quot;0&quot;,&quot;campaignIdList&quot;:null,&quot;contactChangeDate&quot;:&quot;20200117&quot;,&quot;lastPasswordChangeDate&quot;:&quot;20200117&quot;,&quot;masterLogin&quot;:false,&quot;ssoSessionId&quot;:&quot;&quot;,&quot;customerClientIp&quot;:&quot;211.238.142.26&quot;,&quot;errorCode&quot;:&quot;0000&quot;,&quot;errorMessage&quot;:&quot;&quot;,&quot;token&quot;:&quot;&quot;,&quot;uuid&quot;:&quot;&quot;,&quot;onlineCouponCount&quot;:0,&quot;familyNumber&quot;:0},&quot;segmentConditionDatas&quot;:[{&quot;flightId&quot;:&quot;4&quot;,&quot;segmentNo&quot;:&quot;&quot;,&quot;departureArea&quot;:&quot;KR&quot;,&quot;departureCountry&quot;:&quot;&quot;,&quot;departureCity&quot;:&quot;SEL&quot;,&quot;departureCityName&quot;:&quot;서울&quot;,&quot;departureAirport&quot;:&quot;GMP&quot;,&quot;departureAirportName&quot;:&quot;서울 / 김포&quot;,&quot;arrivalArea&quot;:&quot;KR&quot;,&quot;arrivalCountry&quot;:&quot;&quot;,&quot;arrivalCity&quot;:&quot;CJU&quot;,&quot;arrivalCityName&quot;:&quot;제주&quot;,&quot;arrivalAirport&quot;:&quot;CJU&quot;,&quot;arrivalAirportName&quot;:&quot;제주&quot;,&quot;direct&quot;:&quot;&quot;,&quot;departureDateTime&quot;:&quot;202001171810&quot;,&quot;arrivalDateTime&quot;:&quot;&quot;,&quot;cabinClassList&quot;:[&quot;E&quot;],&quot;cabinClassNameList&quot;:[],&quot;exchangeSegment&quot;:false,&quot;flownSegment&quot;:false,&quot;recommendId&quot;:&quot;4&quot;,&quot;flightSegmentId&quot;:&quot;4&quot;,&quot;beforeArrivalDate&quot;:&quot;&quot;,&quot;bookingClass&quot;:&quot;Y&quot;,&quot;codeShare&quot;:&quot;Y&quot;,&quot;preAssignSeat&quot;:false,&quot;operationCarrierCode&quot;:&quot;BX&quot;,&quot;fareFamilyDiscountRate&quot;:&quot;0&quot;,&quot;flightConditionDatas&quot;:[{&quot;carrierCode&quot;:&quot;OZ&quot;,&quot;flightNo&quot;:&quot;8015&quot;,&quot;operationCarrierCode&quot;:&quot;BX&quot;,&quot;operationFlightNo&quot;:&quot;&quot;,&quot;departureCountry&quot;:&quot;KR&quot;,&quot;arrivalCountry&quot;:&quot;KR&quot;,&quot;departureAirport&quot;:&quot;GMP&quot;,&quot;arrivalAirport&quot;:&quot;CJU&quot;,&quot;departureDate&quot;:&quot;20200117181000&quot;,&quot;arrivalDate&quot;:&quot;20200117192000&quot;,&quot;departureCity&quot;:&quot;SEL&quot;,&quot;arrivalCity&quot;:&quot;CJU&quot;,&quot;fareFamily&quot;:&quot;BASIC&quot;,&quot;fareFamilyDesc&quot;:&quot;정상운임&quot;}]},{&quot;flightId&quot;:&quot;29&quot;,&quot;segmentNo&quot;:&quot;&quot;,&quot;departureArea&quot;:&quot;KR&quot;,&quot;departureCountry&quot;:&quot;&quot;,&quot;departureCity&quot;:&quot;CJU&quot;,&quot;departureCityName&quot;:&quot;제주&quot;,&quot;departureAirport&quot;:&quot;CJU&quot;,&quot;departureAirportName&quot;:&quot;제주&quot;,&quot;arrivalArea&quot;:&quot;KR&quot;,&quot;arrivalCountry&quot;:&quot;&quot;,&quot;arrivalCity&quot;:&quot;SEL&quot;,&quot;arrivalCityName&quot;:&quot;서울&quot;,&quot;arrivalAirport&quot;:&quot;GMP&quot;,&quot;arrivalAirportName&quot;:&quot;서울 / 김포&quot;,&quot;direct&quot;:&quot;&quot;,&quot;departureDateTime&quot;:&quot;202001180930&quot;,&quot;arrivalDateTime&quot;:&quot;&quot;,&quot;cabinClassList&quot;:[&quot;E&quot;],&quot;cabinClassNameList&quot;:[],&quot;exchangeSegment&quot;:false,&quot;flownSegment&quot;:false,&quot;recommendId&quot;:&quot;18&quot;,&quot;flightSegmentId&quot;:&quot;29&quot;,&quot;beforeArrivalDate&quot;:&quot;&quot;,&quot;bookingClass&quot;:&quot;Y&quot;,&quot;codeShare&quot;:&quot;Y&quot;,&quot;preAssignSeat&quot;:false,&quot;operationCarrierCode&quot;:&quot;BX&quot;,&quot;fareFamilyDiscountRate&quot;:&quot;0&quot;,&quot;flightConditionDatas&quot;:[{&quot;carrierCode&quot;:&quot;OZ&quot;,&quot;flightNo&quot;:&quot;8026&quot;,&quot;operationCarrierCode&quot;:&quot;BX&quot;,&quot;operationFlightNo&quot;:&quot;&quot;,&quot;departureCountry&quot;:&quot;KR&quot;,&quot;arrivalCountry&quot;:&quot;KR&quot;,&quot;departureAirport&quot;:&quot;CJU&quot;,&quot;arrivalAirport&quot;:&quot;GMP&quot;,&quot;departureDate&quot;:&quot;20200118093000&quot;,&quot;arrivalDate&quot;:&quot;20200118104500&quot;,&quot;departureCity&quot;:&quot;CJU&quot;,&quot;arrivalCity&quot;:&quot;SEL&quot;,&quot;fareFamily&quot;:&quot;BASIC&quot;,&quot;fareFamilyDesc&quot;:&quot;정상운임&quot;}]}],&quot;passengerConditionDatas&quot;:[{&quot;passengerNo&quot;:&quot;&quot;,&quot;passengerType&quot;:&quot;ADT&quot;,&quot;passengerTypeDesc&quot;:&quot;성인&quot;,&quot;title&quot;:&quot;&quot;,&quot;gender&quot;:&quot;&quot;,&quot;lastName&quot;:&quot;&quot;,&quot;firstName&quot;:&quot;&quot;,&quot;koreanFirstName&quot;:&quot;&quot;,&quot;koreanLastName&quot;:&quot;&quot;,&quot;birthDate&quot;:&quot;&quot;,&quot;carrierCode&quot;:&quot;&quot;,&quot;ffpNo&quot;:&quot;&quot;,&quot;departurePTCCode&quot;:&quot;&quot;,&quot;departurePTCRate&quot;:&quot;&quot;,&quot;departurePTCDesc&quot;:&quot;&quot;,&quot;arrivalPTCCode&quot;:&quot;&quot;,&quot;arrivalPTCRate&quot;:&quot;&quot;,&quot;arrivalPTCDesc&quot;:&quot;&quot;,&quot;infantPassengerNo&quot;:&quot;&quot;,&quot;hasInfant&quot;:false,&quot;primaryPassenger&quot;:false,&quot;savePassenger&quot;:false,&quot;staffSKElement_Auth&quot;:&quot;&quot;,&quot;staffSKElement_DJ&quot;:&quot;&quot;,&quot;staffSKElement_SN&quot;:&quot;&quot;,&quot;authNo&quot;:&quot;&quot;,&quot;acno&quot;:&quot;&quot;,&quot;staffNum&quot;:&quot;&quot;,&quot;dayOfBirth&quot;:&quot;&quot;,&quot;passengerName&quot;:&quot;&quot;,&quot;discountCode&quot;:&quot;&quot;,&quot;departureAirport&quot;:&quot;&quot;,&quot;departureAirportName&quot;:&quot;&quot;,&quot;arrivalAirport&quot;:&quot;&quot;,&quot;arrivalAirportName&quot;:&quot;&quot;,&quot;seqNumber&quot;:&quot;&quot;,&quot;staffPTCCode&quot;:&quot;&quot;,&quot;staffCoporateCode&quot;:&quot;&quot;,&quot;staffPricingCode&quot;:&quot;&quot;,&quot;staffResume&quot;:&quot;&quot;}],&quot;contactDatas&quot;:null,&quot;onlineCouponData&quot;:null,&quot;bizType&quot;:&quot;REV&quot;,&quot;airlineSearchType&quot;:&quot;&quot;,&quot;ptcCode&quot;:&quot;&quot;,&quot;pointOfSale&quot;:&quot;SEL&quot;,&quot;searchCurrency&quot;:&quot;KRW&quot;,&quot;mixedCabinCode&quot;:&quot;&quot;,&quot;paymentType&quot;:&quot;&quot;,&quot;mobileFlag&quot;:false,&quot;starAlliance&quot;:false,&quot;atc&quot;:false,&quot;childOnly&quot;:false,&quot;parentPnrAlpha&quot;:&quot;&quot;,&quot;bookForAnother&quot;:false,&quot;pageTicket&quot;:&quot;0&quot;,&quot;jsessionId&quot;:&quot;3d-yj9FtUcBasd4BWsiXnP52FB1guKgMvJtE2k0WtTLG69V-ykau!-221295701!-800309583&quot;,&quot;eventCFF&quot;:&quot;&quot;,&quot;salesType&quot;:&quot;&quot;,&quot;deepLinkId&quot;:&quot;&quot;,&quot;bigEventSeqNo&quot;:&quot;&quot;,&quot;bigEventDetailSeqNo&quot;:&quot;&quot;,&quot;deepLinkDate&quot;:&quot;20200117&quot;,&quot;onlyUpgradeSearch&quot;:false,&quot;travellerPTCInfoWithJson&quot;:&quot;&quot;,&quot;mixedBoadingLevel&quot;:false,&quot;actNo&quot;:&quot;&quot;,&quot;actMNo&quot;:&quot;&quot;,&quot;actGrade&quot;:&quot;&quot;,&quot;amount&quot;:&quot;&quot;,&quot;mileage&quot;:&quot;&quot;,&quot;currency&quot;:&quot;&quot;,&quot;cffList&quot;:[],&quot;staffSKElement_STFS&quot;:&quot;&quot;,&quot;staffSKElement_STFD&quot;:&quot;&quot;,&quot;staffSKElement_limitHour&quot;:&quot;&quot;,&quot;staff_systemId&quot;:&quot;&quot;,&quot;staff_arnkYn&quot;:&quot;&quot;,&quot;sublo&quot;:false,&quot;offlineOnhold&quot;:false}">
		<input type="hidden" id="sessionUniqueKey" name="sessionUniqueKey"
			value="fed5a168-d901-4d82-f626-a75346f7ce44"> <input
			type="hidden" name="callPage" value="RESERVATION">
	</form>


	<div id="wrap">


		<script type="text/javascript" async=""
			src="https://www.google-analytics.com/plugins/ua/ec.js"></script>
		<script
			src="https://connect.facebook.net/signals/config/382397459053382?v=2.9.15&amp;r=stable"
			async=""></script>
		<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
		<script type="text/javascript" async=""
			src="//www.googleadservices.com/pagead/conversion_async.js"></script>
		<script type="text/javascript" async=""
			src="https://www.google-analytics.com/analytics.js"></script>
		<script async="" src="https://www.google-analytics.com/analytics.js"></script>
		<script type="text/javascript"
			src="https://eba-amadeus.netdna-ssl.com/fastTrack/ddlib/releases/stable/DigitalAnalytics.umd.js"></script>
		<script async=""
			src="https://www.googletagmanager.com/gtm.js?id=GTM-57TCD7W"></script>
		<script async=""
			src="https://ozimg.flyasiana.com/js/appinsightor.min.js"></script>
		<script type="text/javascript" src="/C/pc/js/script_observer.js"></script>

		<!-- for 부하 테스트 -->




		<!--// for 부하 테스트 -->

		<div class="skip_navi">
			<a href="#container">컨텐츠 바로가기</a> <a href="#nav">주요메뉴 바로가기</a>
		</div>

		<!-- util_wrap -->
		<div class="util_wrap" style="display: none">
			<div class="inner">
				<div class="fav_link">
					<ul>

						<li><a href="javascript:sharpNothig();"
							onclick="action_logging_common('TOP_01'); cms.goToLink('/C/KR/KO/club/earn-mileage-mall?menuId=CM201802220000728447');">마일리지
								적립몰</a></li>

						<li><a href="javascript:sharpNothig();"
							onclick="action_logging_common('TOP_02'); cms.goToLink('http://dutyfree.flyasiana.com/ko', '_blank');">기내
								면세점</a></li>

					</ul>
				</div>

				<div class="util_menu">
					<ul>

						<li><a href="javascript:sharpNothig();"
							onclick="action_logging_common('TOP_05'); cms.goToLink('/C/KR/KO/event/index?menuId=CM201802220000728482');">이벤트</a></li>
						<li><a href="javascript:sharpNothig();"
							onclick="action_logging_common('TOP_06'); cms.goToLink('/C/KR/KO/customer/main?menuId=CM201802220000728474');">고객서비스</a>
							<ul>

								<li><a href="javascript:sharpNothig();"
									onclick="cms.goToLink('/C/KR/KO//customer/notice/list');">공지사항</a></li>

								<li><a href="javascript:sharpNothig();"
									onclick="cms.goToLink('/C/KR/KO//customer/guidance/index');">자주찾는질문</a></li>

								<li><a href="javascript:sharpNothig();"
									onclick="cms.goToLink('/C/KR/KO//customer/voc');">고객의 말씀</a></li>

								<li><a href="javascript:sharpNothig();"
									onclick="cms.goToLink('/C/KR/KO//customer/form-download/list');">양식다운로드</a></li>

							</ul></li>


						<li><a href="javascript:sharpNothig();"
							onclick="action_logging_common('TOP_04'); cms.goToLink('/C/KR/KO/logout.do');">로그아웃</a></li>


					</ul>
				</div>

			</div>
		</div>
		<!--// util_wrap -->

		<!-- header_booking_wrap -->
		<div class="header_booking_wrap">
			<!-- booking_header -->
			<header class="sub" id="booking_header">
				<div class="h_inner">
					<h1 class="logo">
						<a href="javascript:sharpNothig();"
							onclick="action_logging_common('GNB_01'); cms.goToLink('/C/KR/KO/index');"><span
							class="hidden">ASIANA AIRLINES</span></a>
					</h1>

					<!-- step indicatior -->
					<div class="step_indi_wrap">

						<ul class="step_inner">
							<li class="step check"><span class="num">01</span><span
								class="txt">항공편선택</span></li>
							<li class="step on"><span class="hidden">현재 단계</span><span
								class="num">02</span><span class="txt">탑승정보입력</span></li>
							<li class="step"><span class="num">03</span><span
								class="txt">좌석배정</span></li>
							<li class="step"><span class="num">04</span><span
								class="txt">운임확인</span></li>
							<li class="step"><span class="num">05</span><span
								class="txt">예약완료</span></li>
						</ul>
					</div>
					<!-- //step indicatior -->

					<a href="javascript:sharpNothig();" class="all_menu"><span
						class="hidden">메뉴 펼치기</span></a>
				</div>
			</header>
			<!-- //booking_header -->

			<!-- over_header -->
			<header class="sub" id="over_header">
				<div class="header_bg"></div>
				<div class="h_inner">

					<h1 class="logo">
						<a href="javascript:sharpNothig();"
							onclick="action_logging_common('GNB_01'); cms.goToLink('/C/KR/KO/index');"><span
							class="hidden">ASIANA AIRLINES</span></a>
					</h1>

					<!-- nav -->


					<nav id="nav">
						<span class="nav_line"></span>
						<ul class="nav_list">


							<li><a
								onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
								href="/C/KR/KO/menu/id/CM201802220000728253" target="_self"
								data-id="CM201802220000728253">예약</a>

								<div class="nav_cont col5 wide">

									<ul class="nav_d2">

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728254" target="_self"
											data-id="CM201802220000728254">항공권 예약</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728255" target="_self"
													data-id="CM201802220000728255">항공권 예약</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728256" target="_self"
													data-id="CM201802220000728256">최저가 간편조회</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728257" target="_self"
													data-id="CM201802220000728257">오즈드림페어</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728260" target="_self"
													data-id="CM201802220000728260">신용카드 혜택</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728261" target="_self"
													data-id="CM201802220000728261">예약 안내</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728267" target="_self"
													data-id="CM201802220000728267">운임 안내</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728270" target="_self"
											data-id="CM201802220000728270">예약 조회</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728271" target="_self"
													data-id="CM201802220000728271">예약 내역</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728272" target="_self"
													data-id="CM201802220000728272">항공권 구매 내역</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728273" target="_self"
											data-id="CM201802220000728273">체크인</a></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728274" target="_self"
											data-id="CM201802220000728274">운항정보</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728275" target="_self"
													data-id="CM201802220000728275">스케줄 조회</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728276" target="_self"
													data-id="CM201802220000728276">출도착 조회</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728277" target="_self"
											data-id="CM201802220000728277">취항지정보</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728278" target="_self"
													data-id="CM201802220000728278">운항 노선</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728279" target="_self"
													data-id="CM201802220000728279">여행 정보</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201901160001126270" target="_self"
													data-id="CM201901160001126270">캐빈승무원 여행일기</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201906280001141751" target="_self"
													data-id="CM201906280001141751">아시아도 아시아나!</a></li>

											</ul></li>

									</ul>


								</div></li>

							<li><a
								onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
								href="/C/KR/KO/menu/id/CM201802220000728284" target="_self"
								data-id="CM201802220000728284">여행 준비</a>

								<div class="nav_cont col5 wide">

									<ul class="nav_d2">

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728285" target="_self"
											data-id="CM201802220000728285">체크인</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728286" target="_self"
													data-id="CM201802220000728286">사전 체크인</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728289" target="_self"
													data-id="CM201802220000728289">공항 체크인</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201909240001147374" target="_self"
											data-id="CM201909240001147374">사전 좌석 배정</a></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728296" target="_self"
											data-id="CM201802220000728296">수하물</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728297" target="_self"
													data-id="CM201802220000728297">이용 안내</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728298" target="_self"
													data-id="CM201802220000728298">위탁 수하물</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728304" target="_self"
													data-id="CM201802220000728304">휴대 수하물</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728306" target="_self"
													data-id="CM201802220000728306">수하물 계산기</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728308" target="_self"
													data-id="CM201802220000728308">운송제한 물품</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728309" target="_self"
													data-id="CM201802220000728309">수하물 보상</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728312" target="_self"
											data-id="CM201802220000728312">도움이 필요한 고객</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728313" target="_self"
													data-id="CM201802220000728313">유아여행 안내</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728316" target="_self"
													data-id="CM201802220000728316">혼자 여행하는 어린이/청소년</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728319" target="_self"
													data-id="CM201802220000728319">임신 중 여행</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728320" target="_self"
													data-id="CM201802220000728320">장애인 고객</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728321" target="_self"
													data-id="CM201802220000728321">패밀리 서비스</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728322" target="_self"
													data-id="CM201802220000728322">반려동물 동반</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728325" target="_self"
													data-id="CM201802220000728325">의료도움이 필요한 고객</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728328" target="_self"
											data-id="CM201802220000728328">출입국 신고서</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728329" target="_self"
													data-id="CM201802220000728329">출입국 신고서</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728330" target="_self"
													data-id="CM201802220000728330">미국 입출국 기록(I-94)전자열람</a></li>

											</ul></li>

									</ul>


								</div></li>

							<li><a
								onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
								href="/C/KR/KO/menu/id/CM201802220000728331" target="_self"
								data-id="CM201802220000728331">여행</a>

								<div class="nav_cont col5 wide">

									<ul class="nav_d2">

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728332" target="_self"
											data-id="CM201802220000728332">공항에서</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728333" target="_self"
													data-id="CM201802220000728333">공항 안내</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728334" target="_self"
													data-id="CM201802220000728334">탑승수속 절차</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728337" target="_self"
													data-id="CM201802220000728337">라운지 이용</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728342" target="_self"
											data-id="CM201802220000728342">기내에서</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728343" target="_self"
													data-id="CM201802220000728343">클래스별안내</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728358" target="_self"
													data-id="CM201802220000728358">기내식/음료</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728363" target="_self"
													data-id="CM201802220000728363">기내서비스순서</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728364" target="_self"
													data-id="CM201802220000728364">기내특별서비스</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728367" target="_self"
													data-id="CM201802220000728367">기내유실물조회</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728368" target="_self"
													data-id="CM201802220000728368">기내 엔터테인먼트</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728371" target="_self"
													data-id="CM201802220000728371">기내지 ASIANA 모바일앱</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728372" target="_self"
													data-id="CM201802220000728372">국제선 기내면세품</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728373" target="_self"
													data-id="CM201802220000728373">국내선 기내통신 판매</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728374" target="_self"
													data-id="CM201802220000728374">기내건강</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728375" target="_self"
													data-id="CM201802220000728375">휴대용전자기기 사용안내</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728376" target="_self"
											data-id="CM201802220000728376">항공기 정보</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728377" target="_self"
													data-id="CM201802220000728377">A380-800</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728379" target="_self"
													data-id="CM201802220000728379">B747-400</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728378" target="_self"
													data-id="CM201802220000728378">A350-900</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728380" target="_self"
													data-id="CM201802220000728380">B777-200ER</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728381" target="_self"
													data-id="CM201802220000728381">B767-300</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728382" target="_self"
													data-id="CM201802220000728382">A330-300</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201906120001140983" target="_self"
													data-id="CM201906120001140983">A321-neo</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728383" target="_self"
													data-id="CM201802220000728383">A321-100/200</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728384" target="_self"
													data-id="CM201802220000728384">A320-200</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728386" target="_self"
											data-id="CM201802220000728386">유료 부가서비스</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728390" target="_self"
													data-id="CM201802220000728390">레그룸 좌석</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201907300001143699" target="_self"
													data-id="CM201907300001143699">국내선 비즈니스 존</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201907300001143700" target="_self"
													data-id="CM201907300001143700">프론트 존</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201907300001143701" target="_self"
													data-id="CM201907300001143701">듀오 좌석</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728388" target="_self"
													data-id="CM201802220000728388">이코노미 스마티움</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728387" target="_self"
													data-id="CM201802220000728387">로얄 비즈니스</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201901080001124226" target="_self"
													data-id="CM201901080001124226">업그레이드 스탠바이</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728393" target="_self"
													data-id="CM201802220000728393">기내 Wi-Fi</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728392" target="_self"
													data-id="CM201802220000728392">도움이 필요한 고객</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728385" target="_self"
											data-id="CM201802220000728385">매직보딩패스</a></li>

									</ul>


								</div></li>

							<li><a
								onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
								href="/C/KR/KO/menu/id/CM201802220000728394" target="_self"
								data-id="CM201802220000728394">아시아나클럽</a>

								<div class="nav_cont col3">

									<ul class="nav_d2">

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728395" target="_self"
											data-id="CM201802220000728395">회원제도</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728396" target="_self"
													data-id="CM201802220000728396">회원안내</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728403" target="_self"
													data-id="CM201802220000728403">특별 프로그램</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728407" target="_self"
													data-id="CM201802220000728407">할인제휴사</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728410" target="_self"
											data-id="CM201802220000728410">마일리지적립</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728411" target="_self"
													data-id="CM201802220000728411">아시아나항공</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728416" target="_self"
													data-id="CM201802220000728416">스타얼라이언스/제휴항공사</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201811260001094805" target="_self"
													data-id="CM201811260001094805">마일리지 적립몰</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728420" target="_self"
													data-id="CM201802220000728420">금융(신용카드,환전)</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728424" target="_self"
													data-id="CM201802220000728424">쇼핑</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728421" target="_self"
													data-id="CM201802220000728421">여행(호텔,렌터카,여행자보험)</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728425" target="_self"
													data-id="CM201802220000728425">라이프(통신,보험)</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728426" target="_self"
													data-id="CM201802220000728426">누락마일리지적립</a></li>

											</ul></li>

										<li><a
											onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
											href="/C/KR/KO/menu/id/CM201802220000728429" target="_self"
											data-id="CM201802220000728429">마일리지사용</a>

											<ul class="nav_d3">

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728430" target="_self"
													data-id="CM201802220000728430">아시아나항공</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728434" target="_self"
													data-id="CM201802220000728434">스타얼라이언스/제휴항공사</a></li>

												<li><a
													onclick="action_logging_common_gnb(this);loadingOpen('entire'); return false;"
													href="/C/KR/KO/menu/id/CM201802220000728439" target="_self"
													data-id="CM201802220000728439">마일리지사용몰</a></li>

											</ul></li>

									</ul>



									<!-- gnb banner -->
									<div class="gnb_banner type2">

										<a onclick="loadingOpen('entire');"
											href="https://www.flyasiana.com/C/KR/KO/customer/notice/detail?id=CM201910250001150469"
											target="_self">
											<div class="img_wrap">

												<img
													src="https://ozimg.flyasiana.com/temp/image/20191128/7a726cd7-2db8-4448-9bb9-01fb4d754be7.jpeg"
													alt="아사아니클럽 우수회원 제도 안내" style="height: 100%;">
											</div>

										</a>


									</div>
									<!--// gnb banner -->

								</div></li>

						</ul>
					</nav>

					<!--// nav -->

					<!-- nav_right -->


					<div class="nav_right">

						<div class="chatbot_area">
							<a class="btn_chatbot" href="#" title="새창"
								onclick="fnOpenChatbot('All_PC_CB');return false;"> <span
								class="btn_chatbot-text">쳇봇</span>
								<div class="hdlayer_wrap">
									<span class="arrow"></span>
									<div class="hdlayer">챗봇 '아론' 에게 물어보세요</div>
								</div>

							</a>
						</div>

						<div class="myasiana_area">


							<a href="javascript:sharpNothig();" class="btn_myasiana"
								id="btnMyasiana" title="마이 아시아나"> <span class="hidden">마이
									아시아나</span> <span class="hidden">읽지 않은 새로운 알림</span> <span
								class="newnum">0</span>
							</a>

							<div class="hdlayer_wrap" id="layerMyasiana">
								<span class="arrow"></span>
								<div class="hdlayer">
									<div class="inner">
										<!-- myinfo_wrap -->
										<div class="myinfo_wrap">
											<div class="myinfo">

												<a
													href="javascript:cms.goToLink('/I/KR/KO/MyasianaDashboard.do');"
													class="name"> <span class="tit">임윤희님</span> <span
													class="hidden">회원정보 수정</span>
												</a>
												<p class="en_name">IM YOONHEE</p>


												<div class="desc">
													<span class="grade"> Silver </span> <span
														class="mem_number">OZ 776 699 818</span>
												</div>
											</div>
											<div class="detail_box">
												<dl>
													<dt>
														<span class="tit">마일리지</span>
													</dt>
													<dd>
														<a class="mile_more" href="javascript:sharpNothig();"
															onclick="action_logging_common('GNB_06_01'); cms.goToLink('/I/KR/KO/GetMileageDetail.do')">
															<span class="num">0</span>
														<!--<span class="unit">M</span>--> <span class="hidden">내역보기</span>
														</a>
													</dd>
												</dl>
												<dl>
													<dt>
														<span class="tit">보유 쿠폰</span>
													</dt>
													<dd>
														<a class="data" href="javascript:sharpNothig();"
															onclick="action_logging_common('GNB_06_02'); cms.goToLink('/I/KR/KO/ShowCouponList.do', '_post')">
															<span class="num" id="headerCouponCnt">0</span><span
															class="unit">건</span> <span class="hidden">전체보기</span>
														</a>
													</dd>
												</dl>
											</div>
											<button type="button" class="btn_S gray"
												onclick="action_logging_common('GNB_06_03'); cms.goToLink('/I/KR/KO/MyasianaDashboard.do?menuId=CM201803060000729176')">마이
												아시아나</button>

											<!-- 한국어인 경우에만 노출 -->
											<a class="mar_to10" href="/C/KR/KO/event/asianalike"><img
												src="/C/pc/image/common/btn_aisianalike.png"
												alt="방문할수록 커지는 행운 아시아나 LIKE"></a>


										</div>
										<!--// myinfo_wrap -->
										<!-- alert_wrap -->
										<div class="alert_wrap">
											<div class="head">
												<span class="tit">알림함</span> <a class="ico_more"
													href="#none"
													onclick="action_logging_common(&quot;GNB_06_04&quot;); cms.goToLink(&quot;/I/KR/KO/ShowFeedList.do&quot;);"><span
													class="hidden">알림함 전체보기</span></a>
											</div>
											<div class="alert_list">
												<div class="nodata">
													<dl>
														<dt>
															<span class="ico_noalert"></span>
															<p class="tit">새로운 알림이 없습니다.</p>
														</dt>
														<dd>
															중요한 알림을 한번에<br>확인할 수 있습니다.
														</dd>
													</dl>
												</div>
											</div>
										</div>
										<!--// alert_wrap -->
									</div>

									<a href="javascript:sharpNothig();" class="myasiana_close"><span
										class="hidden">마이아시아나 레이어 닫기</span></a>
								</div>
							</div>
						</div>

						<div class="search_area">
							<a href="javascript:sharpNothig();" class="btn_search" title="검색"><span
								class="hidden">검색</span></a>
							<div class="hdlayer_wrap" id="layerSearch">
								<span class="arrow"></span>
								<div class="hdlayer">
									<div class="inner">
										<form name="" action="/search/search.do">
											<input type="text" name="query" placeholder="검색어를 입력하세요"
												title="검색어를 입력하세요"> <input type="hidden"
												name="nationCode" value="KR"> <input type="hidden"
												name="langCode" value="KO">
											<button type="button" class="btn_M gray"
												onclick="action_logging_common('GNB_07'); cms.doSearchGet(this);">검색</button>
										</form>
									</div>
									<a href="javascript:sharpNothig();" class="search_close"><span
										class="hidden">검색 레이어 닫기</span></a>
								</div>
							</div>
						</div>

					</div>

					<!-- nav_right -->

				</div>
			</header>
			<!-- //over_header -->
		</div>
		<div id="sessionBanner" class="session_area" style="display: none;"
			tabindex="90">
			<div class="session_cont">
				<span>자동초기화 <em id="topCountTime" class="fo_bol"></em> 남았습니다.
				</span> <a href="javascript:sessionContinue('REV', undefined);"
					class="btn_arrow" id="sc" tabindex="91">세션 연장하기</a>
			</div>
		</div>
		<!-- //header_booking_wrap -->

		<!-- summary_wrap -->
		<div class="summary_wrap view">
			<!-- sm_top -->
			<div class="sm_top">
				<div class="sm_inner">
					<!-- <ul class="boarding_info">
				<li class="flight">
					<div class="inner">
						<p class="title">ICN<span class="arrow"></span>NRT</p>
						<ul class="detail">
							<li>인천<span class="arrow"></span>도쿄/나리타</li>
							<li>2017.09.01(금)</li>
							<li>이코노미</li>
						</ul>
					</div>
				</li>
				<li class="flight">
					<div class="inner">
						<p class="title">NRT<span class="arrow"></span>ICN</p>
						<ul class="detail">
							<li>도쿄/나리타<span class="arrow"></span>인천</li>
							<li>2017.09.03(일)</li>
							<li>이코노미</li>
						</ul>
					</div>
				</li>
				<li class="psng">
					<div class="inner">
						<p class="title">탑승인원 3명</p>
						<ul class="detail">
							<li>성인 2, 소아 1</li>
						</ul>
					</div>
				</li>
				<li class="payment">
					<div class="inner">
						<p class="title">￦ 3,460,000</p>
						<ul class="detail">
							<li>
								<span class="person">성인 2</span>
								<span class="price">￦ 92,400,000</span>
							</li>
							<li>
								<span class="person">소아 1</span>
								<span class="price">￦ 1,000,000</span>
							</li>
						</ul>
					</div>
				</li>
			</ul> -->
				</div>
			</div>
			<!--// sm_top -->
		</div>
		<!--// summary_wrap -->

		<!-- Google Tag Manager -->
		<script>
	try {
	(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-57TCD7W');
	} catch (e) {
	}
	</script>
		<!-- End Google Tag Manager -->

		<!-- Google Tag Manager (noscript) -->
		<noscript>
			<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-57TCD7W"
				height="0" width="0" style="display: none; visibility: hidden"></iframe>
		</noscript>
		<!-- End Google Tag Manager (noscript) -->

		<script type="text/javascript">
		var digitalData = JSON.parse('{"searchInput":{"searchInputInfo":{"dateTime":"2020-01-17T17:14:34.571+09:00","flightDetails":[{"flexibleDateValue":3,"fareFamilyCode":"BASIC","tripType":"RT","arrival":{"dateTime":"2020-01-17T17:14:34.571+09:00","cityCode":"CJU","airportCode":"CJU","terminal":"","locationCode":"CJU"},"passenger":[{"passengerTypeCode":"ADT","numberOfPassengers":1}],"cabin":"E","fareFamilyName":"정상운임","departure":{"dateTime":"2020-01-18T10:40:00.0+09:00","cityCode":"SEL","airportCode":"GMP","terminal":"","locationCode":"SEL"},"commercialFareFamily":[]},{"flexibleDateValue":3,"fareFamilyCode":"BASIC","tripType":"RT","arrival":{"dateTime":"2020-01-17T17:14:34.571+09:00","cityCode":"SEL","airportCode":"GMP","terminal":"","locationCode":"SEL"},"passenger":[{"passengerTypeCode":"ADT","numberOfPassengers":1}],"cabin":"E","fareFamilyName":"정상운임","departure":{"dateTime":"2020-01-20T11:00:00.0+09:00","cityCode":"CJU","airportCode":"CJU","terminal":"","locationCode":"CJU"},"commercialFareFamily":[]}],"corporateCode":""}},"product":[{"getProductCategory":"Booking","category":"Booking","productInfo":{"productID":"1","productDetails":{"flightTicket":{"journeyLength":2,"bound":[{"fareFamilyCode":"BASIC","arrival":{"dateTime":"2020-01-17T17:14:34.571+09:00","cityCode":"CJU","airportCode":"CJU","terminal":"","locationCode":"CJU"},"price":{"totalPrice":{"amount":214600.0,"currency":"KRW"},"priceBreakdown":{"baseFarePrice":{"amount":200000.0,"currency":"KRW"},"tax":{"totalTax":{"amount":14600.0,"currency":"KRW"},"fuelSurcharge":{"amount":6600.0,"currency":"KRW"}},"ancilliaryServicePrice":{"amount":0.0,"currency":""}},"pricePerTravellerType":[{"totalPrice":{"amount":0.0,"currency":""},"passengerTypeCode":"ADT"}],"miles":{"milesAmount":0.0,"cashPaidInMiles":{"amount":214600.0,"currency":"KRW"}}},"segment":[],"boundID":"1","fareFamilyName":"정상운임","upsell":{"otherFareFamily":[],"teaser":{"fareFamilyCode":"","fareFamilyName":""}},"departure":{"dateTime":"2020-01-18T10:40:00.0+09:00","cityCode":"SEL","airportCode":"GMP","terminal":"","locationCode":"SEL"}},{"fareFamilyCode":"BASIC","arrival":{"dateTime":"2020-01-17T17:14:34.577+09:00","cityCode":"SEL","airportCode":"GMP","terminal":"","locationCode":"SEL"},"price":{"totalPrice":{"amount":214600.0,"currency":"KRW"},"priceBreakdown":{"baseFarePrice":{"amount":200000.0,"currency":"KRW"},"tax":{"totalTax":{"amount":14600.0,"currency":"KRW"},"fuelSurcharge":{"amount":6600.0,"currency":"KRW"}},"ancilliaryServicePrice":{"amount":0.0,"currency":""}},"pricePerTravellerType":[{"totalPrice":{"amount":0.0,"currency":""},"passengerTypeCode":"ADT"}],"miles":{"milesAmount":0.0,"cashPaidInMiles":{"amount":214600.0,"currency":"KRW"}}},"segment":[],"boundID":"1","fareFamilyName":"정상운임","upsell":{"otherFareFamily":[],"teaser":{"fareFamilyCode":"","fareFamilyName":""}},"departure":{"dateTime":"2020-01-20T11:00:00.0+09:00","cityCode":"CJU","airportCode":"CJU","terminal":"","locationCode":"CJU"}}]}}}}],"pageInstanceID":"ALPI","page":{"pageInfo":{"channel":"eRetail","pageID":"ALPI","pageName":"Passenger Info Page"},"category":{"primaryCategory":"BOOKING"}},"event":[{"eventInfo":{"componentID":"","productID":"","eventName":"","pageID":"","timestamp":""},"category":{"primaryCategory":"BOOKING"}},{"eventInfo":{"componentID":"","productID":"","eventName":"","pageID":"","timestamp":""},"category":{"primaryCategory":"BOOKING"}},{"eventInfo":{"componentID":"","productID":"","eventName":"","pageID":"","timestamp":""},"category":{"primaryCategory":"BOOKING"}}],"version":"2.0.0","traveller":[{"passengerTypeCode":"ADT","travellerID":0}],"transaction":{"total":{"totalPrice":{"amount":214600.0,"currency":"KRW"},"priceBreakdown":{"baseFarePrice":{"amount":200000.0,"currency":"KRW"},"tax":{"totalTax":{"amount":14600.0,"currency":"KRW"},"fuelSurcharge":{"amount":6600.0,"currency":"KRW"}},"ancilliaryServicePrice":{"amount":0.0,"currency":""}},"pricePerTravellerType":[{"totalPrice":{"amount":0.0,"currency":""},"passengerTypeCode":"ADT"}]},"PNR":{"modificationDate":"","recLoc":"","creationDate":""},"payment":[{"methodOfPayment":"","price":{"totalPrice":{"amount":214600.0,"currency":"KRW"},"priceBreakdown":{"baseFarePrice":{"amount":200000.0,"currency":"KRW"},"tax":{"totalTax":{"amount":14600.0,"currency":"KRW"},"fuelSurcharge":{"amount":6600.0,"currency":"KRW"}},"ancilliaryServicePrice":{"amount":0.0,"currency":""}},"pricePerTravellerType":[{"totalPrice":{"amount":0.0,"currency":""},"passengerTypeCode":"ADT"}],"miles":{"milesAmount":0.0,"cashPaidInMiles":{"amount":214600.0,"currency":"KRW"}}},"paymentReference":"","paymentType":""}]},"digitalTouchpoint":{"touchpointInfo":{"market":"KR","site":"CBGDCBGD","tripFlow":"RT","officeID":"SELOZ08DA","bookingFlow":"PassengerInfo","language":"KO","sessionID":"3d-yj9FtUcBasd4BWsiXnP52FB1guKgMvJtE2k0WtTLG69V-ykau!-221295701!-800309583","category":{"primaryCategory":"BOOKING"}}}}');
	</script>
		<script type="text/javascript"
			src="https://eba-amadeus.netdna-ssl.com/fastTrack/acc/GA_OZ_CBGDCBGD.js"></script>

		<div class="summary_wrap view">

			<div class="sm_top">
				<div class="sm_inner">

					<ul class="boarding_info">
						<li class="flight">
							<div class="inner">
								<p class="title">
									GMP<span class="arrow"></span>CJU
								</p>
								<ul class="detail">
									<li>서울 / 김포<span class="arrow"></span>제주
									</li>
									<li>2020.01.17 (금)</li>

								</ul>
							</div>
						</li>

						<li class="flight">
							<div class="inner">
								<p class="title">
									CJU<span class="arrow"></span>GMP
								</p>
								<ul class="detail">
									<li>제주<span class="arrow"></span>서울 / 김포
									</li>
									<li>2020.01.18 (토)</li>

								</ul>
							</div>
						</li>

						<li class="psng">
							<div class="inner">
								<p class="title">탑승인원 1명</p>
								<ul class="detail">
									<li>성인1</li>

								</ul>
							</div>
						</li>
						<li class="payment">
							<div id="divFareData" class="inner">
								<p class="title">총 운임금액</p>
								<ul class="detail">
									<li><span class="person">성인 1</span> <span class="price">KRW
											214,600</span></li>
								</ul>
							</div>
						</li>
					</ul>

				</div>
			</div>

		</div>

		<div class="noti_wrap">
			<div class="inner">
				<ul class="list_type1">


					<li>반드시 실제 탑승하실 분의 성명을 입력하십시오. (예약 후 변경이 불가합니다)</li>
					<li>외국 국적이신 경우 성함을 여권상 영문으로 입력하여 주시기 바랍니다.</li>
					<li>탑승 완료 후에는 소급하여 할인을 적용 받을 수 없으므로 할인 대상 손님께서는 항공권 구입, 탑승 시
						할인 증빙서류를 소지하여 주시기 바랍니다.</li>
					<li>스타얼라이언스 회원사로 마일리지 적립을 원하는 경우 반드시 영문 성함으로 입력하여 주시기 바랍니다.
						공동운항편은 스타얼라이언스 회원사로 마일리지 적립이 불가합니다.</li>

					<li>정보통신망법 제17조의2(법정대리인 동의의 확인방법) 강화 시행령에 따라 만 14세 미만 미성년자 예매
						시 법정대리인의 동의 및 인증이 불가피하므로 14세 이상의 성인께서 로그인 후 예매진행을 해 주시기 바랍니다.</li>
				</ul>
			</div>
		</div>

		<div class="container" id="container">
			<div id="sessionLayer" class="layer_wrap" style="display: none;"
				tabindex="92">
				<div class="dim_layer"></div>
				<div class="layer_pop" style="width: 600px; top: 1122px;">
					<div class="pop_cont" tabindex="0">
						<p class="pop_tit st1">자동초기화</p>
						<p class="pop_tit st3">보안상의 이유와 개인 데이터 보호를 위하여 세션이 종료되며,
							아시아나항공 첫 화면으로 이동합니다.</p>
						<div class="gray_box alC">
							<p class="txt_top taC">
								남은 시간 <span id="startCountTime" class="fo_bol"></span>
							</p>
						</div>
					</div>
					<div class="btn_wrap_ceType2">
						<button type="button" class="btn_M white" onclick="liftOff();"
							tabindex="93">세션 종료</button>
						<button type="button" class="btn_M red"
							onclick="sessionContinue('REV', undefined);" tabindex="94">세션
							연장</button>
					</div>
					<a href="javascript:closeSessionLayer();" class="dim_close"
						tabindex="95"><span class="hidden">닫기</span></a>
				</div>
			</div>
			<h3>탑승자 정보</h3>
			<ul class="list_type3 border">
				<li>임신 32주 이상의 임신부 고객은 탑승이 제한될 수 있으니 사전에 확인하시기 바랍니다. (37주 이상은
					탑승불가)&nbsp; <a
					href="/C/KR/KO/cms/contents/menu/CM201802220000728319?menuId=CM201802220000728319"
					rel="noopener noreferrer" target="_blank" class="btn_arrow">임신중
						여행</a>
				</li>
			</ul>


			<div id="divPassengerData_ADT1" name="divPassengerData"
				passengertype="ADT">

				<div class="title_wrap_type1">
					<div class="left">

						<h4>성인1</h4>
						<input type="checkbox" id="chkExcludePersonal"> <label
							for="chkExcludePersonal">본인은 탑승에서 제외</label> <span
							class="require_txt"> 는 필수항목입니다.</span>
					</div>
					<div id="divSavePassengerInfo1" class="right hidden">

						<button type="button" class="btn_arrow_toggle on">열기</button>
					</div>
				</div>


				<table class="table_form" id="table_passenger0">
					<caption>
						<strong>탑승자 정보</strong>
						<p>성인의 성별필수항목, 이름필수항목, 생년월일필수항목, 회원번호로 구성된 표입니다.</p>
					</caption>
					<colgroup>
						<col style="width: 180px;">
						<col style="width: auto;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">성별<span class="icon_require">필수항목</span></th>
							<td class="rdch"><input type="radio" id="radMale1"
								name="radGender1" value="M" disabled=""><label
								for="radMale1">남자</label> <input type="radio" id="radFemale1"
								name="radGender1" value="F" checked="" disabled=""><label
								for="radFemale1">여자</label> <input type="hidden" id="hidGender1"
								name="hidGender" value="F"></td>
						</tr>
						<tr>
							<th scope="row"><label for="txtLastName1">이름<span
									class="icon_require">필수항목</span></label></th>
							<td><input type="text" id="txtLastName1" name="txtLastName"
								value="임" placeholder="성(신분증 언어)" title="성"
								style="width: 210px;" disabled=""> <input type="text"
								id="txtFirstName1" name="txtFirstName" value="윤희"
								placeholder="이름(신분증 언어)" title="이름" style="width: 371px;"
								disabled=""></td>
						</tr>

						<tr>
							<th scope="row"><label for="txtBirthDate1">생년월일<span class="icon_require">필수항목</span></label></th>
							<td><input type="text" class="hidden" id="txtBirthDate1" name="txtBirthDate" placeholder="생년월일 8자리 입력 (예시:19700131)" title="생년월일" value="19970710" style="width: 627px;"> 
							<select id="selectBirthDateYear_1" name="selAirline" title="생년월일 연도" style="width: 240px;" disabled="">
									<option value="">년</option>
									<option value="2020">2020</option>

									<option value="2019">2019</option>

									<option value="2018">2018</option>

									<option value="2017">2017</option>

									<option value="2016">2016</option>

									<option value="2015">2015</option>

									<option value="2014">2014</option>

									<option value="2013">2013</option>

									<option value="2012">2012</option>

									<option value="2011">2011</option>

									<option value="2010">2010</option>

									<option value="2009">2009</option>

									<option value="2008">2008</option>

									<option value="2007">2007</option>

									<option value="2006">2006</option>

									<option value="2005">2005</option>

									<option value="2004">2004</option>

									<option value="2003">2003</option>

									<option value="2002">2002</option>

									<option value="2001">2001</option>

									<option value="2000">2000</option>

									<option value="1999">1999</option>

									<option value="1998">1998</option>

									<option value="1997" selected="">1997</option>

									<option value="1996">1996</option>

									<option value="1995">1995</option>

									<option value="1994">1994</option>

									<option value="1993">1993</option>

									<option value="1992">1992</option>

									<option value="1991">1991</option>

									<option value="1990">1990</option>

									<option value="1989">1989</option>

									<option value="1988">1988</option>

									<option value="1987">1987</option>

									<option value="1986">1986</option>

									<option value="1985">1985</option>

									<option value="1984">1984</option>

									<option value="1983">1983</option>

									<option value="1982">1982</option>

									<option value="1981">1981</option>

									<option value="1980">1980</option>

									<option value="1979">1979</option>

									<option value="1978">1978</option>

									<option value="1977">1977</option>

									<option value="1976">1976</option>

									<option value="1975">1975</option>

									<option value="1974">1974</option>

									<option value="1973">1973</option>

									<option value="1972">1972</option>

									<option value="1971">1971</option>

									<option value="1970">1970</option>

									<option value="1969">1969</option>

									<option value="1968">1968</option>

									<option value="1967">1967</option>

									<option value="1966">1966</option>

									<option value="1965">1965</option>

									<option value="1964">1964</option>

									<option value="1963">1963</option>

									<option value="1962">1962</option>

									<option value="1961">1961</option>

									<option value="1960">1960</option>

									<option value="1959">1959</option>

									<option value="1958">1958</option>

									<option value="1957">1957</option>

									<option value="1956">1956</option>

									<option value="1955">1955</option>

									<option value="1954">1954</option>

									<option value="1953">1953</option>

									<option value="1952">1952</option>

									<option value="1951">1951</option>

									<option value="1950">1950</option>

									<option value="1949">1949</option>

									<option value="1948">1948</option>

									<option value="1947">1947</option>

									<option value="1946">1946</option>

									<option value="1945">1945</option>

									<option value="1944">1944</option>

									<option value="1943">1943</option>

									<option value="1942">1942</option>

									<option value="1941">1941</option>

									<option value="1940">1940</option>

									<option value="1939">1939</option>

									<option value="1938">1938</option>

									<option value="1937">1937</option>

									<option value="1936">1936</option>

									<option value="1935">1935</option>

									<option value="1934">1934</option>

									<option value="1933">1933</option>

									<option value="1932">1932</option>

									<option value="1931">1931</option>

									<option value="1930">1930</option>

									<option value="1929">1929</option>

									<option value="1928">1928</option>

									<option value="1927">1927</option>

									<option value="1926">1926</option>

									<option value="1925">1925</option>

									<option value="1924">1924</option>

									<option value="1923">1923</option>

									<option value="1922">1922</option>

									<option value="1921">1921</option>

									<option value="1920">1920</option>

									<option value="1919">1919</option>

									<option value="1918">1918</option>

									<option value="1917">1917</option>

									<option value="1916">1916</option>

									<option value="1915">1915</option>

									<option value="1914">1914</option>

									<option value="1913">1913</option>

									<option value="1912">1912</option>

									<option value="1911">1911</option>

									<option value="1910">1910</option>

							</select> <select id="selectBirthDateMonth_1" name="selAirline"
								title="생년월일 월" style="width: 240px;" disabled="">
									<option value="">월</option>
									<option value="01">01</option>

									<option value="02">02</option>

									<option value="03">03</option>

									<option value="04">04</option>

									<option value="05">05</option>

									<option value="06">06</option>

									<option value="07" selected="">07</option>

									<option value="08">08</option>

									<option value="09">09</option>

									<option value="10">10</option>

									<option value="11">11</option>

									<option value="12">12</option>

							</select> <select id="selectBirthDateDay_1" name="selAirline"
								title="생년월일 일" style="width: 240px;" disabled="">
									<option value="">일</option>
									<option value="01">01</option>

									<option value="02">02</option>

									<option value="03">03</option>

									<option value="04">04</option>

									<option value="05">05</option>

									<option value="06">06</option>

									<option value="07">07</option>

									<option value="08">08</option>

									<option value="09">09</option>

									<option value="10" selected="">10</option>

									<option value="11">11</option>

									<option value="12">12</option>

									<option value="13">13</option>

									<option value="14">14</option>

									<option value="15">15</option>

									<option value="16">16</option>

									<option value="17">17</option>

									<option value="18">18</option>

									<option value="19">19</option>

									<option value="20">20</option>

									<option value="21">21</option>

									<option value="22">22</option>

									<option value="23">23</option>

									<option value="24">24</option>

									<option value="25">25</option>

									<option value="26">26</option>

									<option value="27">27</option>

									<option value="28">28</option>

									<option value="29">29</option>

									<option value="30">30</option>

									<option value="31">31</option>

							</select></td>
						</tr>

						<tr>
							<th scope="row"><label for="selAirline1">회원번호<br>(탑승객)
							</label>
								<div class="tooltip_wrap">
									<a href="javascript:sharpNothig();" class="btn_info">도움말</a>
									<div class="layer_tooltip" style="width: 630px; display: none;">
										<div class="inner">
											<p class="title">
												회원번호<br>(탑승객)
											</p>
											<ul class="list_type2">
												<li>아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다.</li>
												<li>마일리지는 탑승 완료 후 적립되며, 항공사마다 적립시기에 차이가 있을 수 있습니다.</li>
												<li>아시아나클럽 회원이 아니신 경우, 탑승 전 회원가입을 해주셔야 적립이 가능합니다.</li>

											</ul>
										</div>
										<a href="javascript:sharpNothig();" class="tooltip_close"><span
											class="hidden">닫기</span></a>
									</div>
								</div></th>
							<td><select id="selAirline1" name="selAirline" title="항공사"
								style="width: 240px;">

									<option value="SA">남아프리카항공 - Voyager</option>

									<option value="LH">루프트한자 - Miles &amp; More</option>

									<option value="SN">브뤼셀항공 - Miles &amp; More</option>

									<option value="LX">스위스항공 - Miles&amp;More</option>

									<option value="SK">스칸디나비아항공 - EuroBonus</option>

									<option value="ZH">심천항공 - PhoenixMiles</option>

									<option value="SQ">싱가포르항공 - KrisFlyer</option>

									<option value="AV">아비앙카항공 - LifeMiles</option>

									<option value="OZ" selected="selected">아시아나항공 - Asiana
										Club</option>

									<option value="A3">에게안항공 - Miles+Bonus</option>

									<option value="BR">에바항공 - Infinity Mileagelands</option>

									<option value="CA">에어 차이나 - PhoenixMiles</option>

									<option value="NZ">에어뉴질랜드 - Airpoints</option>

									<option value="AI">에어인디아 - FlyingReturns</option>

									<option value="AC">에어캐나다 - Aeroplan</option>

									<option value="ET">에티오피아항공 - Sheba Miles</option>

									<option value="OS">오스트리아항공 - Miles &amp; More</option>

									<option value="UA">유나이티드항공 - MileagePlus</option>

									<option value="MS">이집트항공 - EGYPTAIR Plus</option>

									<option value="NH">전일본공수(ANA) - ANA Mileage Club</option>

									<option value="CM">코파항공 - ConnectMiles</option>

									<option value="OU">크로아티아항공 - Miles &amp; More</option>

									<option value="TG">타이항공 - Royal Orchid Plus</option>

									<option value="TP">탑포르투갈 - TAP Miles &amp; Go</option>

									<option value="TK">터키항공 - Miles &amp; Smiles</option>

									<option value="LO">폴란드항공 - Miles &amp; More</option>

							</select> <input type="text" id="txtFfpNumber1" name="txtFfpNumber"
								maxlength="9" title="회원번호<br/>(탑승객)" value="776699818"
								style="width: 373px;" disabled=""></td>
						</tr>

						<tr>
							<th scope="row"><label for="selPTCCode_Dep_1">개인할인<br>(첫번째
									여정)
							</label></th>
							<td><select id="selPTCCode_Dep_1" name="selPTCCode_Dep"
								title="신분할인 선택" style="width: 554px;">
									<option value="CB" ptccode="CB" ptcrate="0">개인할인 선택 안함</option>

									<option value="PR" ptccode="PR" ptcrate="30">장애인
										1~3급(30%)</option>

									<option value="PR" ptccode="PR" ptcrate="10">장애인
										4~6급(10%)</option>

									<option value="PC" ptccode="PC" ptcrate="30">장애인 1~3급
										동반 보호자 1인(30%)</option>

									<option value="CJ" ptccode="CJ" ptcrate="10">제주도민(제주관련
										노선만 적용)(10%)</option>

									<option value="ME" ptccode="ME" ptcrate="10">현역군인(휴가증소지의
										의무복무사병)(10%)</option>

									<option value="NA" ptccode="NA" ptcrate="10">고엽제 후유증
										환자(10%)</option>

									<option value="NC" ptccode="NC" ptcrate="30">국가유공상이 4급
										동반 보호자 1인(30%)</option>

									<option value="ND" ptccode="ND" ptcrate="30">5.18민주유공
										1~4급 동반보호자 1인(30%)</option>

									<option value="NE" ptccode="NE" ptcrate="30">국가유공상이
										1~3급 동반 보호자 1인(30%)</option>

									<option value="NG" ptccode="NG" ptcrate="30">독립유공자 동반
										보호자1인(30%)</option>

									<option value="NI" ptccode="NI" ptcrate="10">독립유공자
										유족증소지자(10%)</option>

									<option value="NI" ptccode="NI" ptcrate="30">독립유공자(30%)</option>

									<option value="NP" ptccode="NP" ptcrate="10">국가유공자/5.18민주유공자/월남전
										참전유공자 &amp; 유공자 유족증 소지자(10%)</option>

									<option value="NQ" ptccode="NQ" ptcrate="30">국가유공상이자
										&amp; 5.18민주유공부상자(30%)</option>

									<option value="PFA" ptccode="PFA" ptcrate="0">기초생활수급자
										공항세 할인</option>

									<option value="TEA" ptccode="TEA" ptcrate="0">기술기능분야
										우수자 공항세 할인</option>

							</select></td>
						</tr>

						<tr>
							<th scope="row"><label for="selPTCCode_Arr_1">개인할인<br>(두번째
									여정)
							</label></th>
							<td><select id="selPTCCode_Arr_1" name="selPTCCode_Arr"
								title="신분할인 선택" style="width: 554px;">
									<option value="CB" ptccode="CB" ptcrate="0">개인할인 선택 안함</option>

									<option value="PR" ptccode="PR" ptcrate="30">장애인
										1~3급(30%)</option>

									<option value="PR" ptccode="PR" ptcrate="10">장애인
										4~6급(10%)</option>

									<option value="PC" ptccode="PC" ptcrate="30">장애인 1~3급
										동반 보호자 1인(30%)</option>

									<option value="CJ" ptccode="CJ" ptcrate="10">제주도민(제주관련
										노선만 적용)(10%)</option>

									<option value="ME" ptccode="ME" ptcrate="10">현역군인(휴가증소지의
										의무복무사병)(10%)</option>

									<option value="NA" ptccode="NA" ptcrate="10">고엽제 후유증
										환자(10%)</option>

									<option value="NC" ptccode="NC" ptcrate="30">국가유공상이 4급
										동반 보호자 1인(30%)</option>

									<option value="ND" ptccode="ND" ptcrate="30">5.18민주유공
										1~4급 동반보호자 1인(30%)</option>

									<option value="NE" ptccode="NE" ptcrate="30">국가유공상이
										1~3급 동반 보호자 1인(30%)</option>

									<option value="NG" ptccode="NG" ptcrate="30">독립유공자 동반
										보호자1인(30%)</option>

									<option value="NI" ptccode="NI" ptcrate="10">독립유공자
										유족증소지자(10%)</option>

									<option value="NI" ptccode="NI" ptcrate="30">독립유공자(30%)</option>

									<option value="NP" ptccode="NP" ptcrate="10">국가유공자/5.18민주유공자/월남전
										참전유공자 &amp; 유공자 유족증 소지자(10%)</option>

									<option value="NQ" ptccode="NQ" ptcrate="30">국가유공상이자
										&amp; 5.18민주유공부상자(30%)</option>

									<option value="PFA" ptccode="PFA" ptcrate="0">기초생활수급자
										공항세 할인</option>

									<option value="TEA" ptccode="TEA" ptcrate="0">기술기능분야
										우수자 공항세 할인</option>

							</select></td>
						</tr>

					</tbody>
				</table>

				<div id="divSaveInfo1" name="divSaveInfo" class="chk_area hidden">
					<input type="checkbox" id="chkSaveInfo1" name="chkSaveInfo">
					<label for="chkSaveInfo1">예약완료 후, 입력한 정보를 탑승객 정보에 저장합니다.</label>

				</div>


			</div>


			<h3>예약자 연락처 정보</h3>
			<ul class="list_type3">
				<li>예약정보수신 연락처에 작성하신 이메일로 구매 결과와 여정안내서를 전송해드립니다.</li>
			</ul>

			<table cellpadding="0" cellspacing="0" class="table_form"
				id="table_contact">
				<caption>예약자 연락처 정보</caption>
				<colgroup>
					<col style="width: 180px;">
					<col style="width: auto;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">이메일 <span class="icon_require">필수항목</span></th>
						<td><input type="text" id="txtSendEmail" title="이메일"
							value="daze123@hanmail.net" class="mar_ri40"
							style="width: 528px; ime-mode: disabled;"> <input
							type="checkbox" id="chkAgreeSendEmail" checked=""> <label
							for="chkAgreeSendEmail">이메일 항공권 수신동의</label></td>
					</tr>
					<tr>
						<th scope="row">전화번호 <span class="icon_require">필수항목</span></th>
						<td>
							<div class="form_wrap_type2">

								<input type="text" id="txtSendSMS0" title="국번선택" countryno="82"
									value="82" style="width: 172px; cursor: text;">
								<button type="button" id="btn_stationNum" class="btn_M red">국번선택</button>
							</div> <input type="text" id="txtSendSMS1" maxlength="12" title="전화번호"
							value="01047352699" class="mar_ri40" style="width: 166px;"
							placeholder="휴대폰번호"> <input type="checkbox"
							id="chkAgreeSendSMS" checked=""> <label
							for="chkAgreeSendSMS">SMS 수신 동의</label>
						</td>
					</tr>


				</tbody>
			</table>

			<div class="btn_wrap_leriType1">
				<div class="left">
					<button type="button" id="btnPrevStep" class="btn_M white">이전
						단계</button>
				</div>
				<div class="right">
					<button type="button" id="btnNextStep" class="btn_L red">다음</button>
				</div>
			</div>

			<div class="gray_box">
				<h5>유의사항</h5>
				<ul class="list_type2">
					<li>예약 클래스에 따라 마일리지 적립이 불가하거나 적립률이 상이할 수 있으며, 실제 운항하는 항공사의 기준에
						따라 적립이 이루어집니다.</li>
					<li>해당 항공사 마일리지 적립 규정상 적립이 불가한 경우에는 회원번호를 입력하셔도 적립이 되지 않습니다.</li>
					<li>실제 운항항공사가 스타얼라이언스 및 마일리지 제휴항공사가 아닌 공동운항편은 아시아나클럽 계정으로 사후
						적립만 가능합니다. 현재 시스템 문제로, 숫자와 영문을 조합한 이메일 주소만 사용 가능합니다.</li>

				</ul>
			</div>

			<div class="layer_wrap" id="backNoti">
				<div class="dim_layer"></div>
				<div class="layer_pop" style="width: 500px; top: 1122px;">
					<div class="pop_cont">

						<p class="pop_tit st1">
							항공편 선택 화면으로 이동하며,<br>선택한 항목은 모두 초기화 됩니다.<br>이동하시겠습니까?
						</p>
					</div>
					<div class="btn_wrap_ceType2">
						<button type="button" name="cancel" class="btn_M white">취소</button>
						<button type="button" name="cancel" class="btn_M red"
							id="rev_btn_previous_confirm">확인</button>
					</div>
					<a href="javascript:sharpNothig();" class="dim_close"><span
						class="hidden">닫기</span></a>
				</div>
			</div>

			<div id="divSkipSelectSeat" class="layer_wrap">
				<div class="dim_layer"></div>
				<div class="layer_pop" style="width: 490px; top: 1122px;">
					<div class="pop_cont">

						<p class="pop_tit st1">
							유료석 구매 및 좌석배정을 통해 <br> 여행에 편안함을 더하세요.<br>(유료존 구매, 일반 좌석
							배정)
						</p>
						<p class="pop_tit st3">
							<font color="blue">*항공권과 유료석 동시 구매 중 오류가 발생할 경우 예약센터나 가까운
								지점으로 문의 부탁드립니다. <br>*좌석 선택은 예매 완료 후 체크인/예약조회 메뉴에서도 가능합니다.
							</font>
						</p>
						<p class="pop_tit st3 col_red">※ 항공기 출발 전 기종변경 등으로 예고 없이 지정하신
							좌석이 변경될 수 있음을 안내 드립니다.</p>
					</div>
					<div class="btn_wrap_ceType2">
						<button type="button" id="btnSelectSeatLayerCancel"
							class="btn_M white">건너뛰기</button>
						<button type="button" id="btnSelectSeatLayerConfirm"
							class="btn_M red">확인</button>
					</div>
					<a href="javascript:sharpNothig();" id="btnLayerClose"
						class="dim_close"><span class="hidden">닫기</span></a>
				</div>
			</div>


			<div id="divNameConfirm" class="layer_wrap">
				<div class="dim_layer"></div>
				<div class="layer_pop" style="width: 490px; top: 1122px;">
					<div class="pop_cont">
						<br>
						<p class="pop_tit st3">
							· 탑승객 성명이 동일한 승객이 있으므로 입력하신 내용을 확인하시기 바랍니다. <br>· 동명이인인 경우에는
							각각 예매하시거나 예약센터로 문의하여 주시기 바랍니다.
						</p>
					</div>
					<div class="btn_wrap_ceType2">
						<button type="button" id="btnNameModify" class="btn_M white">수정하기</button>
						<button type="button" id="btnNameConfirm" class="btn_M red">다음단계</button>
					</div>
					<a href="javascript:sharpNothig();" id="btnNameClose"
						class="dim_close"><span class="hidden">닫기</span></a>
				</div>
			</div>


			<div id="divBirthdayConfirm" class="layer_wrap"
				style="display: none;">
				<div class="dim_layer"></div>
				<div class="layer_pop" style="width: 490px; top: 1122px;"
					tabindex="0">
					<div class="pop_cont">
						<p class="pop_tit st3" id="txtConfirmBDate">
							임/윤희 1997.07.10<br>
						</p>
						<p class="pop_tit st3">입력하신 정보가 맞는지 확인해 주세요</p>
					</div>
					<div class="btn_wrap_ceType2">
						<button type="button" id="btnBirthdayModify" class="btn_M white">수정하기</button>
						<button type="button" id="btnBirthdayConfirm" class="btn_M red">다음단계</button>
					</div>
					<a href="javascript:sharpNothig();" id="btnBirthdayClose"
						class="dim_close"><span class="hidden">닫기</span></a>
				</div>
			</div>

		</div>

	</div>


	<script type="text/javascript" src="/C/pc/js/jquery-2.1.4.min.js"></script>

	<div id="_dummy-coupon" style="display: none;">JSESSIONID%3Df27b9ba015ce4de5974a592794eea1ea416e97b904cf86518a47%211773845291%3B+domain%3D.flyasiana.com%3B+path%3D%2F%3B+secure%3B+HttpOnly</div>
	<div id="_dummy-lang" style="display: none;">KO</div>
	<div id="_dummy-nation" style="display: none;">KR</div>


	<script src="/C/pc/js/header.js"></script>


	<meta name="PCCM201804030000731200_31" content="확인">
	<meta name="PCCM201804030000731200_32" content="취소">
	<meta name="PCCM201804030000731200_33" content="닫기">
	<meta name="PCCM201804030000731200_34" content="로그인 후 해당 페이지로 이동됩니다.">
	<meta name="PCCM201804030000731200_35" content="새창">
	<meta name="PCCM201804030000731200_36" content="로그인 하시겠습니까?">
	<meta name="PCCM201804030000731200_37" content="로그인 페이지로 이동하시겠습니까?">
	<meta name="PCCM201804030000731200_38" content="로그인이 필요한 페이지입니다.">
	<meta name="PCCM201804030000731200_39" content="외부 페이지로 이동됩니다.">
	<meta name="PCCM201804030000731200_40" content="팝업이 차단되어있습니다.">
	<meta name="PCCM201804030000731200_41"
		content="인터넷 브라우저에서 팝업차단 해제바랍니다.">
	<meta name="PCCM201804030000731200_42" content="처리 중 오류가 발생하였습니다.">
	<meta name="PCCM201804030000731200_43" content="다시 시도하거나 관리자에게 문의바랍니다.">


	<meta name="PCCM201804030000731200_44" content="아시아나 e-Card">
	<meta name="PCCM201804030000731200_45" content="보내시는 분">
	<meta name="PCCM201804030000731200_46" content="받는 분">
	<meta name="PCCM201804030000731200_47" content="이름">
	<meta name="PCCM201804030000731200_48" content="이메일주소">
	<meta name="PCCM201804030000731200_49" content="전하는 내용">
	<meta name="PCCM201804030000731200_50"
		content="* 아시아나항공은 고객님이 입력하신 정보(이름, 이메일, 전하는 내용)를 수집하지 않습니다.">
	<meta name="PCCM201804030000731200_51" content="미리보기 후 발송하기">
	<meta name="PCCM201804030000731200_52" content="%to%님께">
	<meta name="PCCM201804030000731200_53" content="%from% 드림">
	<meta name="PCCM201804030000731200_54" content="수정">
	<meta name="PCCM201804030000731200_55" content="발송하기">
	<meta name="PCCM201804030000731200_56" content="보내시는 분 이름">
	<meta name="PCCM201804030000731200_57" content="보내시는 분 이메일주소">
	<meta name="PCCM201804030000731200_58" content="받는 분 이름">
	<meta name="PCCM201804030000731200_59" content="받는 분 이메일주소">
	<meta name="PCCM201804030000731200_60" content="%title%를(을) 입력해주세요.">
	<meta name="PCCM201804030000731200_61" content="전하실 내용을 입력해주세요.">
	<meta name="PCCM201804030000731200_62" content="e-Card 발송이 완료되었습니다.">
	<meta name="PCCM201804030000731200_63" content="잠시 후 다시 시도해주시기 바랍니다.">
	<meta name="PCCM201804030000731200_63" content="e-Card 발송에 실패하였습니다.">


	<meta name="PCCM201802220000728520_00_09" content="지도보기">
	<meta name="PCCM201802220000728520_00_10" content="연락처">
	<meta name="PCCM201802220000728520_00_11" content="주소">
	<meta name="PCCM201802220000728520_00_12" content="전체">
	<meta name="PCCM201802220000728520_00_13" content="안내사항">
	<meta name="PCCM201802220000728520_00_14" content="선택하세요">
	<meta name="PCCM201802220000728520_00_15"
		content="처리 중 오류가 발생하였습니다. 다시 시도하거나 관리자에게 문의바랍니다.">
	<meta name="PCCM201802220000728520_00_16"
		content="조회하신 단어와 일치하는 게시물이 없습니다.">
	<meta name="PCCM201802220000728520_00_17" content="게시물이 없습니다.">
	<meta name="PCCM201802220000728520_00_18"
		content="서비스가 불안정합니다. 다시 시도해 주세요.">
	<meta name="PCCM201802220000728520_00_19" content="아시아나항공 지점을 선택하세요.">
	<meta name="PCCM201802220000728520_00_20" content="업무시간">


	<meta name="PCCM201804030000731200_65" content="이전">
	<meta name="PCCM201804030000731200_66" content="다음">
	<meta name="PCCM201804030000731200_67" content="처음">
	<meta name="PCCM201804030000731200_68" content="맨끝">
	<meta name="PCCM201804030000731200_69" content="선택됨">


	<script type="text/javascript">
	//alert($(".step_indi_wrap").html());

	$(document).ready(function () {
		/**
		 * Header 지역/언어 변경
		 */
		var selNation = $("#_dummy-nation").text().toUpperCase();
		var selLang = $("#_dummy-lang").text().toUpperCase();

		$("#nation").val(selNation);

		/* Header 국가, 언어 선택 */
		cms.setLang($("#nation"), true);

		$("#lang").val(selLang);

		/**
		 * Header MyAsiana 알림함, 보유 쿠폰 총 개수 조회
		 */
		//cms.getMyAsiana("123", "KO");
		
			var mySSOId = $("#_dummy-coupon").text();

			//알림함 조회
			cms.getMyAsiana();

			//보유 쿠폰 총 개수 조회
			cms.getHeaderCouponCnt(mySSOId);
		

		/**
		 * Main 항공원 예약, 예약 조회, 체크인, 출도착 조회, 이벤트 Background Image 국가별 차등 적용
		 * TODO : CDN 적용 필요
		 */
		

		/**
		 * Main 최저가 조회
		 */
		var lastSpcIdx = $('.special_slider').find('.swiper-slide').last().index();
		var spcSlideLeng = $('.special_slider').find('.swiper-slide').length;
		var qrw_mt = 230,
			qrw_reset = $('.main_slideWrap').height();
		
		$('.spc_card').off('click').on('click', function(){
			action_logging({pagecode:'01_Book_04'});
			

			//$(".info_detail").html("");
			var param = {
				iNatCd : $(this).data("natCd"),
				iDomIntType : $(this).data("domIntType"),
				iLangCd : $(this).data("langCd"),
				iMgtCd : $(this).data("mgtCd"),
				iDepAirport : $(this).data("depAirport"),
				iArrAirport : $(this).data("arrAirport"),
				iCabinClass : $(this).data("cabinClass"),
				iTripType : $(this).data("tripType")
			};
			//alert(data.iArrAirport);

			$.ajax({
				type: "POST", dataType: "text", async : false
				, url : '/C/KR/KO/main/lkgLpDetail'
				, data : param
				, success : function(rst) {
					var jsnRst = JSON.parse(rst);

					var strHtml = '';
					strHtml += '<div class="detail_inner">';
					strHtml += '	<p class="desc">';
					if (selLang == "KO" || selLang == "JA" || selLang == "CH" || selLang == "ZH") {
						strHtml += '		<span class="date">'+jsnRst.oBaseDtm+'</span>';
						strHtml += ' 기준';
					} else {
						strHtml += '기준 ';
						strHtml += '		<span class="date">'+jsnRst.oBaseDtm+'</span>';
					}
					strHtml += ' / '+jsnRst.oCabinClassNm+' / '+(param.iTripType == 'RT' ? '왕복총액' : '편도총액')+' / 단위 : '+jsnRst.oCurrency;
					strHtml += '	</p>';
					strHtml += '	<div class="route">';
					strHtml += '		<div class="loca">';
					strHtml += '			<span class="abbr">'+jsnRst.iDepAirport+'</span>';
					strHtml += '			<span class="cname">'+jsnRst.oDepAirportNm+'</span>';
					strHtml += '		</div>';
					strHtml += '		<div class="mid">';
					strHtml += '			<span class="hidden"></span>';
					strHtml += '			<span class="line left"></span>';
					strHtml += '			<span class="plane"></span>';
					strHtml += '			<span class="line right"></span>';
					strHtml += '		</div>';
					strHtml += '		<div class="loca">';
					strHtml += '			<span class="abbr">'+jsnRst.iArrAirport+'</span>';
					strHtml += '			<span class="cname">'+jsnRst.oArrAirportNm+'</span>';
					strHtml += '		</div>';
					strHtml += '	</div>';
					strHtml += '	<div class="graph_wrap">';
					strHtml += '		<ul class="graph_list">';

					var arrPrice = [];
					$.each(jsnRst.lkgLpDtlResult, function(index, item) {
						arrPrice[index] = parseInt(item.PRICE.replace(/,/gi, ""));
					});

					$.each(jsnRst.lkgLpDtlResult, function(index, item) {
						var maxVal = Math.max.apply(null, arrPrice),
							minVal = Math.min.apply(null, arrPrice);
						var curVal = arrPrice[index];
						var perVal = (curVal / maxVal) * 100;
						//console.log(curVal+"/"+maxVal+"="+perVal);
						strHtml += '			<li>';
						if (minVal == curVal) {
							strHtml += '				<a href="#none" onClick="javascript:cms.doSubmit(this);" class="prc_min" style="height:'+perVal+'%">';
						} else {
							strHtml += '				<a href="#none" onClick="javascript:cms.doSubmit(this);" style="height:'+perVal+'%">';
						}
						strHtml += '					<div class="txt">';
						strHtml += '						<p class="date">'+item.SPECIAL_MONTH+'</p>';
						strHtml += '						<p class="price"><span class="num">'+item.PRICE+'</span>~</p>';
						strHtml += '					</div>';
						strHtml += '				</a>';
						strHtml += '				<form name="frmLowestPrice_'+item.SPECIAL_MONTH+'" method="post" action="/I/KR/KO/LowerPriceSearchList.do?menuId=CM201802220000728256">';
						strHtml += '					<input type="hidden" name="callerType" value="ADC_DestinationInfo" />';
						strHtml += '					<input type="hidden" name="tripType" value="'+param.iTripType+'" />';
						strHtml += '					<input type="hidden" name="departureArea" value="'+jsnRst.oDepArea+'" />';
						strHtml += '					<input type="hidden" name="departureCity" value="'+jsnRst.oDepCity+'" />';
						strHtml += '					<input type="hidden" name="departureAirport" value="'+jsnRst.iDepAirport+'" />';
						strHtml += '					<input type="hidden" name="arrivalAirport" value="'+jsnRst.iArrAirport+'" />';
						strHtml += '					<input type="hidden" name="period" value="'+jsnRst.oStayDay+'" />';
						strHtml += '					<input type="hidden" name="cabinClass" value="'+param.iCabinClass+'" />';
						strHtml += '					<input type="hidden" name="depDt" value="'+item.SPECIAL_MONTH.replace(".", "")+'" />';
						strHtml += '					<input type="hidden" name="domIntType" value="'+param.iDomIntType+'" />';
						strHtml += '				</form>';
						strHtml += '			</li>';
					});

					strHtml += '		</ul>';
					strHtml += '	</div>';
					strHtml += '</div>';

					strHtml += '<a href="#none" class="spc_detail_close"><span class="hidden">닫기</span></a>';

					//alert($("#info_detail_"+jsnRst.iArrAirport).attr("id"));
					//alert($("#info_detail_"+jsnRst.iArrAirport).attr("class"));
					//alert($(this).find("info_detail").html("hahaha"));
					//var objDetail = $("#info_detail_"+jsnRst.iArrAirport);

					var idDetail = "info_detail_"+jsnRst.iArrAirport;
					//$("#"+idDetail).html(strHtml);
					//console.log($("#"+idDetail).attr("id"));
					//console.log("-------------------------------------");
					//console.log($("#"+idDetail).html());

					//alert($("#"+idDetail).attr("id"));
					//alert($("#"+idDetail).html());

					//$("#info_detail_"+jsnRst.iArrAirport).html(strHtml);
					//alert("hoho");
					$(".info_detail").html(strHtml);
					//alert($(".info_detail").html());
				}, error : function(e){
					alert(e);
				}
			});
			spcAllClose();
			//보이는 영역의 마지막 슬라이드
			if($(this).parent('.swiper-slide').next('div').hasClass('blind')){
				// console.log('last', specialSwiper.activeIndex);
				
				specialSwiper.slideTo(specialSwiper.activeIndex + 1);
			}
			if($(this).closest('.special_slider_wrap').hasClass('real_last')){
				$(this).closest('.special_slider_wrap').find('.swiper-wrapper').velocity('stop').velocity({translateX:'0px'});
				$(this).closest('.special_slider_wrap').removeClass('real_last');
			}
			//전체루프 슬라이드 중 마지막 슬라이드
			if($(this).parent('div').index() == lastSpcIdx){				
				//console.log('realLast');
				specialSwiper.slideNext();
				
				if($(this).closest('.special_slider_wrap').hasClass('no_wide')){					
					//3개 나올때 예외처리
					$(this).closest('.special_slider_wrap').addClass('real_last');
					$(this).closest('.swiper-wrapper').velocity('stop').velocity({translateX:-(527*0.5)+'px'});					
				}				
				amui.specialSliderLastFlg = true;
			}
			
			
			//열린 레이어 닫기, 선택한 특가슬라이드 오픈
			
			
			$(this).parent('.swiper-slide').velocity('stop').velocity({width:'527px',height:'340px'}).addClass('on');
			$('.special_slider_wrap').css('z-index', '1100');
			$(this).next('.info_detail').show().find('.graph_list').velocity('stop').velocity({height:'180px'});
			//maga start
			//$('.section01 .quick_reservation_wrap').velocity('stop').velocity({marginTop:qrw_mt+'px'});
			$('.spc_detail_close').off('click').on('click',function(){
				$(this).parents('.swiper-slide').velocity('stop').velocity({width:'280px',height:'180px'}).removeClass('on');
				$('.special_slider_wrap').css('z-index', '910');
				$(this).parent('.info_detail').hide().find('.graph_list').velocity('stop').velocity({height:'0'});
				
				
				if($(this).closest('.special_slider_wrap').hasClass('real_last')){
					$(this).closest('.special_slider_wrap').find('.swiper-wrapper').velocity('stop').velocity({translateX:'0px'});
					$(this).closest('.special_slider_wrap').removeClass('real_last');
				}
				//$('.section01 .special_slider_wrap').css('z-index','201');
				//$('.section01 .quick_reservation_wrap').velocity('stop').velocity({marginTop:qrw_reset+'px'});
			});
			//maga end
		});
		
		//maga start
		$('.evt_card').off('click').on('click', function(){
			
			spcAllClose();
			
			$(this).parent('.swiper-slide').velocity('stop').velocity({width:'527px',height:'340px'}).addClass('on');
			$('.special_slider_wrap').css('z-index', '1100');
			$(this).next('.info_detail').show().find('.graph_list').velocity('stop').velocity({height:'180px'});
			
			//$('.section01 .quick_reservation_wrap').velocity('stop').velocity({marginTop:qrw_mt+'px'});
			
			$('.spc_detail_close').off('click').on('click',function(){
				$(this).parents('.swiper-slide').velocity('stop').velocity({width:'280px',height:'180px'}).removeClass('on');
				$('.special_slider_wrap').css('z-index', '910');
				$(this).parent('.info_detail').hide().find('.graph_list').velocity('stop').velocity({height:'0'});
				
				//$('.section01 .special_slider_wrap').css('z-index','201');
				//$('.section01 .quick_reservation_wrap').velocity('stop').velocity({marginTop:qrw_reset+'px'});
				
			});
			
		});
		//maga end
		// 180903 웹 접근성 조치 (mr.kim)
        if($(".container").eq(0).attr("id") == undefined || $(".container").eq(0).attr("id") == "") {
        	$(".container").eq(0).attr("id", "container");
        }
		
		
	});

	var cms = {
		initGnbStep : function (param) {
			$(".step_indi_wrap").html(param);
		},

		dataNav : {
			"" : ""
		},

		initNav : function () {

		},

		/**
		 * param1 : url
		 * param2 : target
		 */
		goToLink : function () {
			/*
			for(var i=0; i<arguments.length; i++) {
				alert(arguments[i]);
			}
			*/
			if (arguments.length == 1 || (arguments.length == 2 && arguments[1] == "_self")) {
				location.href = arguments[0];
			} else if (arguments.length == 2 && arguments[1] == "_blank") {
				var openNewWindow = window.open("about:blank");
				openNewWindow.location.href = arguments[0];
			} else if (arguments.length == 2 && arguments[1] == "_post") {
				var $form = $('<form action="' + arguments[0] + '" method="POST"/>');

				$form
					.appendTo('body')
					.submit();
			} else {
				return false;
			}
		},

		/* Main 최저가 조회 */
		doSubmit : function (obj) {
			var objFrm = $(obj).next();
			objFrm.submit();
		},

		/* Header 지역, 언어 선택 시 이동 */
		setNatLng : function (nation, lang) {
			var objFrm = $("form#frmRegLan");
			var serverDiv = 'real';
			var pcDomainPrtc = 'https://flyasiana.com';
			var $nation = $("#nation");
			var $lang = $("#lang");

			nation = nation || $("#nation").val();
			lang = lang || $("#lang").val();

			$nation.val(nation);
			$lang.val(lang);

			if (this.getCookieCms("LANG") != $("#lang").val()) {
				objFrm.find("input").val("true");
			} else {
				objFrm.find("input").val("false");
			}

			objFrm.attr("method", "post");
			if(serverDiv == "local") {
				objFrm.attr("action", "/C/" + nation + "/" + lang + "/index");
			} else {
				objFrm.attr("action", pcDomainPrtc + "/C/" + nation + "/" + lang + "/index");
			}
			objFrm.submit();
		},

		/* Header 국가, 언어 선택 */
		setLang : function (obj, isFullReset) {
			var objNatLng = {
				  "KR" : {"KO":"한국어", "EN":"English"}
				, "US" : {"KO":"한국어", "EN":"English", "ES":"Español"} 
				, "JP" : {"KO":"한국어", "EN":"English", "JA":"日本語"}
				, "CN" : {"KO":"한국어", "EN":"English", "CH":"中文(简体)"}
				, "TW" : {"KO":"한국어", "EN":"English", "ZH":"中文(繁體)"}
				, "HK" : {"KO":"한국어", "EN":"English", "ZH":"中文(繁體)"}
				/* , "RU" : {"KO":"한국어", "EN":"English", "RU":"Русский"} */
				, "UZ" : {"KO":"한국어", "EN":"English", "RU":"Русский"}
				, "KZ" : {"KO":"한국어", "EN":"English", "RU":"Русский"}
				, "DE" : {"KO":"한국어", "EN":"English", "DE":"Deutsch"}
				, "FR" : {"KO":"한국어", "EN":"English", "FR":"Français"}
				, "VN" : {"KO":"한국어", "EN":"English"}
				, "SG" : {"KO":"한국어", "EN":"English"}
				/* , "IN" : {"KO":"한국어", "EN":"English"} */
				, "ID" : {"KO":"한국어", "EN":"English"}
				, "KH" : {"KO":"한국어", "EN":"English"}
				, "TH" : {"KO":"한국어", "EN":"English"}
				, "PH" : {"KO":"한국어", "EN":"English"}
				, "GB" : {"KO":"한국어", "EN":"English"}
				, "IT" : {"KO":"한국어", "EN":"English"}
				, "TR" : {"KO":"한국어", "EN":"English"}
				, "AU" : {"KO":"한국어", "EN":"English"}
				, "ES" : {"KO":"한국어", "EN":"English", "ES":"Español"} 
				, "MN" : {"KO":"한국어", "EN":"English"}
			};

			var objVal = $(obj).val(),
				objData = objNatLng[objVal],
				$lang = $("#lang").empty(),
				$frag = $(document.createDocumentFragment()),
				key = '',
				nation = $("#nation").val(),
				selLang = $("#_dummy-lang").text().toUpperCase();

			for (key in objData) {
				$frag.append("<option value='"+key+"'>" + objData[key] + "</option>");
			}
			$lang.append($frag);

			// 페이지 초기화 할 때 최초 한번만 호출
			if (isFullReset) {
				var $layerLanguage = $('#layerLanguage');
				$frag = $(document.createDocumentFragment());
				for (key in objData) {
					$frag.append('<a href="javascript:sharpNothig();" onclick="action_logging_common(\'TOP_07\');cms.setNatLng(\'' + nation + '\',\'' + key + '\');" title="언어 선택"><span class="lang01' + (selLang == key ? ' on' : '') + '">' + objData[key] + '</span></a>');
				}
				$layerLanguage.prevAll('a:has(.lang01)').remove().end().before($frag);
			}
		},

		/* Header MyAsiana 알림함 조회 */
		getMyAsiana : function () {
			var acNo = "776699818";
			var lang = "KO".toUpperCase();
			var param = {
				iAcNo : acNo,
				iLangCd : lang
			};
			$.ajax({
				type: "POST", dataType: "text", async : true
				, url : '/C/KR/KO/myAsiana/noticeBoard'
				, data : param
				, success : function(rst) {
					var jsnRst = JSON.parse(rst);
					//alert(jsnRst.oNotReadCnt);

					$(".newnum").html(jsnRst.oNotReadCnt);

					//알림함 데이터 목록 개수
					var isData = jsnRst.noticeBoardResult.length;

					var strHtml = '';
					strHtml += '<div class="head">';
					strHtml += '	<span class="tit">알림함</span>';

				if(isData > 0){
					strHtml += '	<span class="noread">';
					strHtml += '		안읽음<span class="num">('+jsnRst.oNotReadCnt+')</span>';
					strHtml += '	</span>';
				}
					strHtml += '	<a class="ico_more" href="#none" onClick=\'action_logging_common("GNB_06_04"); cms.goToLink("/I/KR/KO/ShowFeedList.do");\'><span class="hidden">알림함 전체보기</span></a>';
					strHtml += '</div>';
					strHtml += '<div class="alert_list">';

				if(isData > 0){

					strHtml += '	<ul>';
					$.each(jsnRst.noticeBoardResult, function(index, item) {
						if (item.MASS_YN == 'Y') {
							strHtml += '		<li class="mass'+(item.READ_YN == "Y" ? " read" : "")+'">';
							if(item.READ_YN == "Y"){
								strHtml += '			<a href="#none" class="noti_tit" onClick=\'action_logging({_n_m01:"'+item.TITLE+'"}); cms.goToLink("/I/KR/KO/'+item.PC_LINK_URL+'");\'>';
							}else{
								strHtml += '			<a href="#none" class="noti_tit" onClick=\'cms.getMyAsianaNoticeRead(\"'+item.REG_DT+'\",\"'+item.SEQ_NO+'\",\"'+item.TITLE+'\",\"'+item.PC_LINK_URL+'\");\'>';
							}
							strHtml += '				'+item.TITLE;
						} else {
							strHtml += '		<li class="'+(item.READ_YN == "Y" ? "read" : "")+'">';
							if(item.READ_YN == "Y"){
								strHtml += '			<a href="#none" class="noti_tit" onClick=\'action_logging({_n_m01:"'+item.TITLE+'"}); cms.goToLink("/I/KR/KO/'+item.PC_LINK_URL+'");\'>';
							}else{
								strHtml += '			<a href="#none" class="noti_tit" onClick=\'cms.getMyAsianaNoticeRead(\"'+item.REG_DT+'\",\"'+item.SEQ_NO+'\",\"'+item.TITLE+'\",\"'+item.PC_LINK_URL+'\");\'>';
							}
							strHtml += '				<span class="cate">'+item.TITLE;
						}
						strHtml += '			</a>';
						if (item.AGO) {
							strHtml += '			<p class="alt_time">'+item.AGO+'</p>';
						}
						if (item.READ_YN == "Y") {
							strHtml += '			<span class="status">읽음</span>';
						}
					});
					strHtml += '	</ul>';

				}else{
					var tit = "새로운 알림이 없습니다.";
					var msg = "중요한 알림을 한번에<br>확인할 수 있습니다.";

					strHtml += '<div class="nodata">';
					strHtml += '	<dl>';
					strHtml += '		<dt>';
					strHtml += '			<span class="ico_noalert"></span>';
					strHtml += '			<p class="tit">'+ tit +'</p>';
					strHtml += '		</dt>';
					strHtml += '		<dd>' + msg + '</dd>';
					strHtml += '	</dl>';
					strHtml += '</div>';

				}
					strHtml += '</div>';

					$(".alert_wrap").html(strHtml);
				}, error : function(e){
					//alert(e.message);
					console.log(e);
				}
			});

		},

		/* Header MyAsiana 알림함 읽기 */
		getMyAsianaNoticeRead : function (regDt, seqNo, title, pcLinkUrl) {
			var param = {
				iRegDt : regDt,
				iSeqNo : seqNo
			};
			$.ajax({
				type: "POST", dataType: "text", async : true
				, url : '/C/KR/KO/myAsiana/noticeBoardRead'
				, data : param
				, success : function(rst) {
					//var jsnRst = JSON.parse(rst);
					action_logging({_n_m01:title});
					cms.goToLink("/I/KR/KO/"+pcLinkUrl);
				}, error : function(e){
					console.log(e);
					action_logging({_n_m01:title});
					cms.goToLink("/I/KR/KO/"+pcLinkUrl);
				}
			});

		},

		/* Header MyAsiana 보유 쿠폰 조회 */
		getHeaderCouponCnt : function (mySSOId) {
			var param = {
				ssoId : mySSOId
			}
			$.ajax({
				type: "POST"
				, dataType: "text"
				, async : true
				, url : "/I/KR/KO/getAllCouponCount.do"
				, data : param
				, success : function(rst) {
					var jsnRst = JSON.parse(rst);
					if(jsnRst.result == "000"){
						couponCnt = jsnRst.count;
						$("#headerCouponCnt").html(couponCnt);
					}
				}, error : function(e){
					//console.log(e);
				}
			});
		},

		/* 통합 검색 */
		doSearch : function(obj) {
			if ($(obj).parents().find("input[name*='query']").val().trim() == '') {
				alert('검색어를 입력하세요');
			} else {
				$(obj).parents().submit();
			}
		},
		
		/* 통합 검색 */
		doSearchGet : function(obj) {
			if ($(obj).parents().find("input[name*='query']").val().trim() == '') {
				alert('검색어를 입력하세요');
			} else {
				//$(obj).parents().submit();
				var nationCd = "KR";
				var langCode = "KO";
				var query = $(obj).parents().find("input[name*='query']").val().trim();
				location.href = "/search/search.do?nationCode="+nationCd+"&langCode="+langCode+"&query="+query;
			}
		},

		getCookieCms: function (cName) {
			cName = cName + '=';
			var cookieData = document.cookie;
			var start = cookieData.indexOf(cName);
			var cValue = '';
			if(start != -1) {
				start += cName.length;
				var end = cookieData.indexOf(';', start);
				if(end == -1) {
					end = cookieData.length;
				}
				cValue = cookieData.substring(start, end);
			}
			return unescape(cValue);
		}
	}

	/*
	var bkStatus = {
			"currentNo":"3" ,
			"step":[
					{"number":"1" , "title":"여정선택"},
					{"number":"2" , "title":"항공편선택"},
					{"number":"3" , "title":"탑승정보입력"},
					{"number":"4" , "title":"좌석배정"},
					{"number":"5" , "title":"운임확인"},
					{"number":"6" , "title":"예약완료"}
				   ]
	};

	//alert(bkStatus.step.length);

	var crtNo = parseInt(bkStatus.currentNo);
	var stepBar = '<ul class="step_inner">';
	for (var i = 0, lm = bkStatus.step.length; i < lm; i++) {
		var ae = bkStatus.step[i], aeCss = '';
		if (crtNo == (i+1)) {
			aeCss = ' on';
		} else if (crtNo > (i+1)) {
			aeCss = ' check';
		}
		stepBar += '	<li class="step'+aeCss+'"><span class="num">'+ae.number+'</span><span class="txt">'+ae.title+'</span></li>';
	}
	stepBar += '</ul>';

	//cms.initGnbStep(stepBar);
	*/

	/**
	 * Main 항공원 예약, 예약 조회, 체크인, 출도착 조회, 이벤트 Background Image 국가별 차등 적용
	 * TODO : CDN 적용 필요
	 */
	
	/* Main 예약조회 Background Image 변경(iBiz에서 호출 함.) */
	function arrAirportRes (arrAirport) {
		//alert(arrAirport.length);
		if (arrAirport.length == 3) {
			$(".section.section02").attr("style", "background-image:url('https://ozimg.flyasiana.com/image_fixed/destination/des_L_"+arrAirport+".jpg');");
			$.fn.fullpage.reBuild();
		}
	}

	/* Main 체크인 Background Image 변경(iBiz에서 호출 함.) */
	function arrAirportChk (arrAirport) {
		//alert(arrAirport);
		if (arrAirport.length == 3) {
			$(".section.section03").attr("style", "background-image:url('https://ozimg.flyasiana.com/image_fixed/destination/des_L_"+arrAirport+".jpg');");
			$.fn.fullpage.reBuild();
		}
    }
    

    /**
	 * 네비 게이션 로깅 처리
	 * */
	function action_logging_common_nav(item) {
		var $item = $(item);
		try {
			action_logging_common('NAV_01');
		} catch (e) {
			// 로깅처리 중 오류 발생 하더라도 다른 처리는 정상 진행
		}

		// 아웃링크 분기 처리
		if ($item.data('metaId')) {
			fnWriteMetaAccessLog($item.data('metaId'));
		}

		cms.goToLink($item.attr('href'), $item.attr('target'));
	}
	/**
	 * GNB 로깅 처리
	 * */
	function action_logging_common_gnb(item) {
		var mapper = {
				'CM201802220000728253': 'GNB_02',		// 예약
				'CM201802220000728284': 'GNB_03',		// 여행 준비
				'CM201802220000728331': 'GNB_04',		// 여행
				'CM201802220000728394': 'GNB_05' 		// 아시아나클럽
			},
			key,
			param,
			$item = $(item),
			//$gnbFirstItem = $item.closest('div.nav_cont').prev();
			$gnbFirstItem = (function(){
				if($item.closest('div.nav_cont').length == 0){					
					return $item;
				} else{
					return $item.closest('div.nav_cont').prev();					
				}
			})();			

		key = $gnbFirstItem.data('id');
		param = mapper[key];		
		try {
			action_logging_common(param);
		} catch (e) {
			// 로깅처리 중 오류 발생 하더라도 다른 처리는 정상 진행
		}

		// 아웃링크 분기 처리
		if ($item.data('metaId')) {
			fnWriteMetaAccessLog($item.data('metaId'));
		}
		
		cms.goToLink($item.attr('href'), $item.attr('target'));
	}

	/**
	* WebLog main outlink 국가 분기
	*/
	function action_outLogging_common(linkUrl){
		var thisNation = "KR";
		var preCate = thisNation.toUpperCase();

		if(preCate!="KR" && preCate!="CN"){
			preCate="ETC";
		}

		//console.log(preCate+"_PC_MN ::: " + linkUrl);

		action_logging({catetype:preCate+"_PC_MN",outlink:linkUrl});
	}

	/**
	 * WebLog 공통 영역(TOP, GNB, NAVIGATOR, FOOTER)
	 */
    function action_logging_common (param, isForce) {
		isForce = isForce || false;
		
		if (isForce) {
			action_logging({pagecode:param});
		} else {
			var path = $(location).attr("pathname");
			var arrPath = path.split("/");

			if (arrPath.length > 4) {
				var objUrl = {
					"/index": "01"
					, "/RevenueDomesticFlightsSelect.do": "02"
					, "/RevenueInternationalFareDrivenFlightsSelect.do": "02"
					, "/RevenueRegistTravel.do": "02"
					, "/RedemptionRegistTravel.do": "02"
					, "/ViewReservationDetail.do": "03"
					, "/DreamFareList.do": "04"
					, "/club/earn-mileage-mall": "05"
					, "/club/use-mileage-mall": "06"
					, "/club/use-mileage-mall/global": "06"
					, "/booking/travel/main": "07"
					, "/booking/travel/sub": "08"
					, "/MyasianaDashboard.do": "09"
					, "/travel/mbp/main": "10"

					, "MB/index": "31"
					, "MB/RevenueDomesticFlightsSelect.do": "32"
					, "MB/RevenueInternationalFareDrivenFlightsSelect.do": "32"
					, "MB/RevenueRegistTravel.do": "32"
					, "MB/RedemptionRegistTravel.do": "32"
					, "MB/ViewReservationDetail.do": "33"
					, "MB/DreamFareList.do": "34"
					, "MB/club/earn-mileage-mall": "35"
					, "MB/booking/travel/main": "37"
					, "MB/booking/travel/sub": "38"
					, "MB/MyasianaDashboard.do": "39"
					, "MB/travel/mbp/main": "40"
				};

				var urlPattern = "";
				for (var i=4, len=arrPath.length; i<len; i++) {
					urlPattern += "/" + arrPath[i];
				}
				if (jQuery.type(objUrl[urlPattern]) != "undefined") {
					var device = ''.toUpperCase();
					urlPattern = device == "MB" ? device+""+urlPattern : urlPattern;

					var logParam = objUrl[urlPattern]+"_"+param;
					action_logging({pagecode:logParam});
				}
			}
		}
    }

	/*
	* 챗봇 오픈
	* */
	
	var fnOpenChatbot = function (cateType) {
		cateType = cateType || 'All_PC_CB';		
		var lang = $('meta').filter('[name="lang"]').attr('content'),
			device = 'web',
			name = 'chatbot',			
			url = "https://aaron.bot-flyasiana.com/webchat.html",
			width = 470,
			height = 758,
			top = (window.screen.height - height),
			left = (window.screen.width - width),
			new_window = null;

		lang = lang ? lang.toLowerCase() : 'ko';		
		if( lang.toLowerCase() == 'ch'){
			lang = 'cn';
		};
		url = url + '?lang=' + lang + '&device=' + device;

		optionString = 'width=' + width + ',height=' + height + ',top=' + top + ',left=' + left + ',screenX=' + left + ',screenY=' + top + ',resizable=1';
		new_window = window.open(url, name, optionString);
		if (new_window == null){
			flyasiana.alert("팝업이 차단되어있습니다.", "인터넷 브라우저에서 팝업차단 해제바랍니다.");
		}
		try {
			action_logging({catetype: cateType, outlink: url, _n_m03:"chatplay"});
			action_logging({_n_m03:"chatplay"});
		} catch(e) {
			// 로깅 처리 중 오류 발생 시 정상처리를 위함
		}
	};
	
	function commonLinkConvert(_val,_self){
		var path = location.pathname.substring(3).split('/')
		var _nation = path[0] || 'KR';
		var _lang = path[1] || 'KO';
		var _target = _self || '_blank';
		var _tempLink = _val.split('/');
	        _tempLink[2] = _nation;
			_tempLink[3] = _lang;
	        _tempLink = _tempLink.join('/');

	        if(_target =='_blank'){
	        	window.open(_tempLink , '_blank');
	    	}else{
	    		location.href = _tempLink;
	    	}
	}
</script>

	<script type="text/javascript" src="/C/pc/js/velocity.min.js"></script>
	<script type="text/javascript" src="/C/pc/js/swiper.jquery.min.js"></script>
	<script type="text/javascript" src="/C/pc/js/dateUtil.js"></script>
	<script type="text/javascript" src="/js/pc/IBECommon.js"></script>
	<script type="text/javascript" src="/js/common/IBEutil.js"></script>
	<script type="text/javascript" src="/js/common/jquery.countdown.js"></script>
	<script type="text/javascript" src="/js/common/IBESession.js"></script>
	<script type="text/javascript" src="/js/pc/corp/ACT_IBECommon.js"></script>
	<script type="text/javascript" src="/js/common/weblog.js"></script>
	<script type="text/javascript">
			var jsJSON						= JSON.parse('{"J0076":"KRW10000 이 <strong>USD 1000 </strong>으로 환산됩니다","J2013":"한글성 입력","J0075":"올바른 이메일 양식을 입력해주세요.","J2014":"한글이름 입력","J0078":"회원 번호를 입력해 주세요","J2011":"한글성 입력(예:홍)","J0077":"항공사를 선택해 주세요","J2012":"한글이름 입력(예:길동)","J2017":"임직원 신청 정보에 동일한 아시아나클럽 회원번호가 있습니다. 다시 확인해 주십시오.","J0079":"회원 번호가 올바르지 않습니다.","J2018":"임직원으로 등록된 아시아나클럽 회원번호가 존재합니다. 다시 확인해 주십시오.","J0511":"비즈니스,퍼스트","J2015":"숫자 9자리를 입력해 주십시오.","J0510":"이코노미 일반,퍼스트","J2016":"신청하신 임직원의 아시아나클럽 회원 정보상 이름 또는 회원번호가 맞지 않습니다.","J0070":"국제선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>소아</strong> 입니다.","J0072":"입력년도가 유효하지 않습니다.","J0071":"국내선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>성인</strong> 입니다.","J2010":"영문이름 입력","J0074":"입력일이 유효하지 않습니다.","J0073":"입력월이 유효하지 않습니다.","J0513":"이코노미 할인","J0512":"이코노미 특가,이코노미 일반","J2019":"다른 기업의 대표자로 등록된 임직원 정보입니다.","J0065":"생년월일을 입력해 주세요.","J2002":"파일을 첨부해주십시오.","J0064":"생년월일 8자리","J2003":"파일당 최대 5MB까지 첨부 가능합니다.","J0067":"국내선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>소아</strong> 입니다.","J0066":"국내선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>유아</strong> 입니다.","J2001":"필수 입력 항목입니다.","J0069":"국제선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>유아</strong> 입니다.","J2006":"한글만 입력할 수 있습니다.","J0068":"국내선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>성인</strong> 입니다.","J2007":"영어와 띄어쓰기만 입력할 수 있습니다.","J0500":"일반","J2004":"JPG, PDF, PNG 파일 형태로 첨부하시기 바랍니다.","J2005":"이메일 주소 형식이 맞지 않습니다.","J0061":"이미 로그인 상태 입니다.","J0060":"공항을 선택해 주십시오.","J0063":"생년월일 8자리 입력 (예시:19700131)","J0062":"계산하고자 하는 어린이의 생년월일을 선택하시면, 유아&#47;소아 유무를 확인하실 수  <br> 있습니다.","J0509":"이코노미 특가,퍼스트","J0502":"전체","J0501":"좌석등급","J0504":"이코노미 일반","J2008":"최소 알파벳 2자 이상 입력하셔야 합니다.","J0503":"이코노미 특가","J2009":"영문성 입력","J0506":"퍼스트","J0505":"비즈니스","J0508":"이코노미 일반,비즈니스","J0507":"이코노미 특가,비즈니스","J0098":"변환","J3003":"보안정책상 사용 불가","J0097":"이벤트 기간이 종료 되었습니다.","J3001":"보안정책상 다른 이메일주소를 입력하여 주시기 바랍니다.","J0099":"처리 중입니다.","J3002":"영문성과 이름에 사용할 수 없는 문자입니다","J0410":"출발지를 입력해주세요.","J0412":"탑승객 이름을 입력해주세요.","J0411":"도착지를 입력해주세요.","J0090":"성(영문)을 입력해 주십시오.","J0092":"공제불가","J0091":"좌석배치도를 지원하지 않는 항공편입니다.","J0094":"#0마일 부족","J2031":"찾아보기","J0093":"공제가능","J2032":"삭제","J0096":"마일리지로 적용","J0095":"#0님의 보유 마일리지는 <span class=\\\"col_red\\\">&#35;&#123;1&#125;M</span>입니다.</span>","J2030":"파일첨부","J0414":"자릿수를 확인하여 주십시오.","J0413":"탑승일자를 입력해주세요.","J0416":"단체 예약입니다.\\n단체 예약은 예약처를 통해 일정을 확인하여 주시기 바랍니다.","J0415":"항공권번호를 입력해주세요.","J0418":"탑승객에 유아가 있는 예약입니다. \\n예약은 예약처를 통해 일정을 확인하여 주시기 바랍니다. \\n","J0417":"예약 정보가 올바르지 않습니다. \\n 마일리지 예약일 경우 로그인해주세요.","J0419":"체크인 가능 기간 검색에 실패했습니다.","J0087":"닫기","J2024":"비밀번호는 8 ~ 20자리로 대/소문자, 숫자, 특수문자 중 세가지 이상을 조합하여 입력해주세요.","J0086":"확인","J2025":"반복된 숫자(예시.1111)는 사용이 불가합니다.","J0089":"나라를 선택해 주시기 바랍니다.","J2022":"공백은 입력할 수 없습니다.","J0088":"지역을 선택해 주시기 바랍니다.","J2023":"특수문자는 #0 만 사용 가능합니다.","J2028":"비밀번호 규칙에 맞지 않습니다. 비밀번호 도움말을 확인해주세요.","J2029":"입력하신 신규 비밀번호와 일치하지 않습니다.","J0401":"선택됨","J2026":"연속 번호(예시.1234 or 1112)는 사용이 불가합니다.","J2027":"연속 번호(예시.4321 or 1112)는 사용이 불가합니다.","J0081":"국번 선택","J0080":"회원 번호 입력에 성공하였습니다.","J0083":"선택 후, 확인 클릭 시 해당 국번이 자동으로 입력됩니다.","J2020":"임직원 등록 신청이 완료되었습니다.","J0082":"입력하고자 하는 국번의 지역 및 나라를 선택하시기 바랍니다.","J2021":"기존 비밀번호와 신규 비밀번호가 같을 수 없습니다.","J0085":"나라/지역선택","J0084":"지역선택","J0403":"이원구간","J0402":"쿠폰을 선택해 주십시오.","J0405":"관심노선을 설정하려면 마이아시아나로 이동하셔야 합니다. 관심노선을 설정하시겠습니까?","J0404":"다구간","J0407":"다구간 여정 선택을 위하여 항공권 예약 화면으로 이동하시겠습니까?","J0406":"도착지","J0409":"예약번호를 입력해주세요.","J0408":"좌석등급을 선택해주세요.","NOLOGIN_PW_6":"본인이 예약한 건만 수정할 수 있습니다. 예약한 ID로 로그인해 주세요.","J0430":"(만 2세 미만)","NOLOGIN_PW_7":"비밀번호가 일치하지 않습니다.","NOLOGIN_PW_8":"온라인상 사전좌석 변경/환불은 로그인 메뉴입니다.\\n로그인후 이용하시거나 아시아나 항공 예약센터로 문의 하여주시기 바랍니다.","J0432":"(만 2세 ~ 12세 미만)","J0431":"(만 12세 이상)","J0434":"(만 2세 ~ 13세 미만)","J0433":"(만 13세 이상)","NOLOGIN_PW_9":"로그인 메뉴입니다.\\n로그인 후 이용하여 주시기 바랍니다.","J0436":"유아가 동반 성인보다 많을 수 없습니다.","J0435":"최근 검색한 노선이 없습니다.","J0438":"마일리지 항공권 예약은 본인 및 가족 회원만 가능하므로 성인, 소아를 포함한 5명을 초과할 수 없습니다","J0437":"예약인원은 성인, 어린이, 유아를 포함한 \\n9명을 초과할 수 없습니다.","J0439":"탑승 인원을 선택해 주십시오.","J0421":"에어서울 항공기로 운항하는 공동운항편입니다.","J0420":"예약 정보가 올바르지 않습니다.","J0423":"편명을 입력하세요.","J0422":"체크인에 실패했습니다.","J0425":"날짜를 선택하세요.","J0424":"숫자만 입력하세요.","J0427":"취항지","J0426":"오류가 발생하였습니다.","J0429":"공항을 선택해 주십시오.","J0428":"그외","J0450":"국제선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>유아</strong> 입니다.","J0210":"오는편 [#0] 에 대해 동반자 1인만 할인 가능합니다.","J0452":"국제선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>성인</strong> 입니다.","J0451":"국제선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>소아</strong> 입니다.","J0212":"개인 할인을 다시 선택해주시기 바랍니다.","J0454":"도착지","J0211":"가는편 [#0] 는 독립유공자 동반 시에만 선택 가능합니다.","J0453":"출발지","J0214":"가는편 [#0] 에 대해 동반자 1인만 선택 가능합니다.","J0456":"가는 편","J0213":"오는편 [#0] 는 독립유공자 동반 시에만 선택 가능합니다.","J0455":"탑승일","J0216":"가는여정 동반 보호자 1인 할인은 할인 증빙을 소지한 승객 1인과 동일한 일정으로 동시에 항공권 구매 후 동반하여 탑승하실 경우에만 적용되며 탑승 당일 할인 증빙 서류를 제시하여 주시기 바랍니다. 미 소지 시 공항에서 정상 운임으로 항공권을 구매하신 후 탑승하실 수 있습니다.","J0458":"로그인하신 회원이 유아 일 경우에는 예약 진행이 불가합니다. \\b예약센터로 문의하시기 바랍니다.","J0215":"오는편 [#0] 에 대해 동반자 1인만 선택 가능합니다.","J0457":"출도착 편","J0218":"가는여정 동반 보호자 1인 할인은 할인 증빙을 소지한 승객 1인을 초과하여 선택하실 수 없습니다. 할인 대상자를 확인해주시기 바랍니다.","J0217":"가는 여정 유아 장애인과 함께 탑승하시는 동반 보호자 1인은 인터넷으로 항공권 구매가 불가하오니 예약센터(1588-8000)를 통해 구매하시기 바랍니다.","J0459":"유아/소아를 동반하는 보호자는 항공편 탑승 시 부모 또는 만 18세 이상의 성인만 가능합니다.만 18세 미만의 성인과 동반하는 소아는 예약센터에 문의하시기 바랍니다.일부 인터넷 특가 운임의 경우 소아할인 적용이 불가할 수 있으므로 선택하신 운임규정을 확인하시기 바랍니다.","J0219":"가는여정 동반 보호자 1인 할인은 할인 증빙을 소지한 승객과 동일한 일정으로 동시에 항공권 구매 후 동반하여 탑승하실 경우에만 적용됩니다. 할인 증빙을 소지한 승객과 분리하여 항공권을 구매하신 경우에는 인터넷으로 동반 보호자 1인 항공권만 단독으로 구매가 불가하오니 예약센터(1588-8000)를 통해 구매하시기 바랍니다.","J0441":"계산하고자 하는 어린이의 생년월일을 선택하시면, 유아&#47;소아 유무를 확인하실 수  <br> 있습니다.","J0440":"나이 계산기","J0201":"언어를 선택해주세요.","J0443":"생년월일 8자리","J0200":"메일 형식이 맞지 않습니다. 다시 입력해 주십시오.","J0442":"생년월일 8자리 입력 (예시:19700131)","J0203":"회원 번호 입력에 실패하였습니다.","J0445":"닫기","J0202":"#0가 <strong>#1</strong>로 환산됩니다.","J0444":"계산하기","J0205":"가는편 할인코드 오류!","J0447":"국내선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>유아</strong> 입니다.","J0204":"탑승 당일 할인 증빙 서류를 제시하여 주시기 바랍니다. 미 소지 시 공항에서 정상 운임으로 항공권을 구매하신 후 탑승하실 수 있습니다.","J0446":"생년월일을 입력해 주세요.","J0207":"오는편 할인코드 오류!","J0449":"국내선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>성인</strong> 입니다.","J0206":"[#0] 을 확인하세요.","J0448":"국내선 탑승일 (#0) 기준으로 입력한 생년월일은 <strong>소아</strong> 입니다.","J0209":"[#0] 을 확인하세요.","J0208":"가는편 [#0] 에 대해 동반자 1인만 할인 가능합니다.","J0230":"오는여정 동반 보호자 1인 공항세 할인은 할인 증빙을 소지한 승객 1인을 초과하여 선택하실 수 없습니다. 할인 대상자를 확인해주시기 바랍니다.","J0472":"#0님의 보유 마일리지는 <span class=\\\"col_red\\\">#1M</span>입니다.","J0471":"적용불가","J0232":"펼치기","J0474":"이벤트 기간이 종료 되었습니다.","J0110":"마일","J0231":"오는여정 동반 보호자 1인 공항세 할인은 할인 증빙을 소지한 승객과 동일한 일정으로 동시에 항공권 구매 후 동반하여 탑승하실 경우에만 적용됩니다. 할인 증빙을 소지한 승객과 분리하여 항공권을 구매하신 경우에는 인터넷으로 동반 보호자 1인 항공권만 단독으로 구매가 불가하오니 예약센터(1588-8000)를 통해 구매하시기 바랍니다.","J0473":"마일리지로 적용","J0234":"오늘보다 이전 날짜는 선택할 수 없습니다.","J0476":"8자리 숫자 또는 6자리 영문/숫자","J0233":"1년 이상 차이나는 날짜는 조회할 수 없습니다.","J0475":"변환","J0236":"돌아오는일이 출발일보다 이전입니다.\\n돌아오는일을 확인하십시오.","J0478":"페이지를 새로 고치지 마시고,<br>잠시만 기다려주세요.","J0235":"출발일이 돌아오는일보다 이후입니다.\\n출발일을 확인하십시오.","J0477":"숫자 13자리","J0470":"더보기","J0238":"최저","J0237":"도착일이 출발일보다 이전입니다.","J0479":"8자리 숫자 또는 6자리 영문/숫자","J0239":"세션 연장에 실패하였습니다.","J0461":"인터넷 국내선 항공권 구입시에는 예약과 동시에 구매를 하셔야 합니다.\\n구매하지 않으시면 예약이 완료되지 않습니다.\\n\\n고객님의 예약 시간은 정기 스케쥴 변경과 함께 정기 정비 작업으로\\n인하여 전 노선에 시간 변동 및 운항/비운항이 예고없이\\n발생할 수 있음을 양지하여 주시기 바랍니다.\\n\\n※ 국내선 이용 시, 사진이 부착된 신분증 미소지 승객 및 탑승권 성명과 신분증 성명의 언어가 다른 경우, 체크인 및 보안검색장 입장이 불가합니다.","J0460":"소아/유아 탑승시 여행 당일 공항에서 나이를 확인 할 수 있는 서류(의료보험증, 주민등록등본, 여권 중 택일)를 지참하시기 바랍니다","J0100":"페이지를 새로 고치지 마시고,<br>잠시만 기다려주세요.","J0221":"오는 여정 유아 장애인과 함께 탑승하시는 동반 보호자 1인은 인터넷으로 항공권 구매가 불가하오니 예약센터(1588-8000)를 통해 구매하시기 바랍니다.","J0463":"가는 날짜를 선택하여 주십시오.","J0220":"오는여정 동반 보호자 1인 할인은 할인 증빙을 소지한 승객 1인과 동일한 일정으로 동시에 항공권 구매 후 동반하여 탑승하실 경우에만 적용되며 탑승 당일 할인 증빙 서류를 제시하여 주시기 바랍니다. 미 소지 시 공항에서 정상 운임으로 항공권을 구매하신 후 탑승하실 수 있습니다.","J0462":"여정 변경의 가능성이 있을 경우, 편도별로 발급하시면 편리합니다. \\n(왕복 티켓은 출발 후 돌아오는 편의 여정 변경이나 환불 시 제한이 있을 수 있습니다.)","J0223":"오는여정 동반 보호자 1인 할인은 할인 증빙을 소지한 승객과 동일한 일정으로 동시에 항공권 구매 후 동반하여 탑승하실 경우에만 적용됩니다. 할인 증빙을 소지한 승객과 분리하여 항공권을 구매하신 경우에는 인터넷으로 동반 보호자 1인 항공권만 단독으로 구매가 불가하오니 예약센터(1588-8000)를 통해 구매하시기 바랍니다.","J0465":"일치하는 예약번호가 없습니다.","J0101":"삭제","J0222":"오는여정 동반 보호자 1인 할인은 할인 증빙을 소지한 승객 1인을 초과하여 선택하실 수 없습니다. 할인 대상자를 확인해주시기 바랍니다.","J0464":"오는 날짜를 선택하여 주십시오.","J0225":"가는 여정 유아 장애인과 함께 탑승하시는 동반 보호자 1인 공항세 할인은 인터넷으로 항공권 구매가 불가하오니 예약센터(1588-8000)를 통해 구매하시기 바랍니다.","J0467":"성(영문)을 입력해 주십시오.","J0224":"가는여정 동반 보호자 1인 공항세 할인은 할인 증빙을 소지한 승객 1인과 동일한 일정으로 동시에 항공권 구매 후 동반하여 탑승하실 경우에만 적용되며 탑승 당일 할인 증빙 서류를 제시하여 주시기 바랍니다. 미 소지 시 공항에서 정상 운임으로 항공권을 구매하신 후 탑승하실 수 있습니다.","J0466":"예약번호를 입력해 주십시오.","J0036_1":"보안을 위해 아래 캡차 인증을 진행 해 주시기 바랍니다.","J0227":"가는여정 동반 보호자 1인 공항세 할인은 할인 증빙을 소지한 승객과 동일한 일정으로 동시에 항공권 구매 후 동반하여 탑승하실 경우에만 적용됩니다. 할인 증빙을 소지한 승객과 분리하여 항공권을 구매하신 경우에는 인터넷으로 동반 보호자 1인 항공권만 단독으로 구매가 불가하오니 예약센터(1588-8000)를 통해 구매하시기 바랍니다.","J0469":"선택","J0226":"가는여정 동반 보호자 1인 공항세 할인은 할인 증빙을 소지한 승객 1인을 초과하여 선택하실 수 없습니다. 할인 대상자를 확인해주시기 바랍니다.","J0468":"다운로드","J0229":"오는 여정 유아 장애인과 함께 탑승하시는 동반 보호자 1인 공항세 할인은 인터넷으로 항공권 구매가 불가하오니 예약센터(1588-8000)를 통해 구매하시기 바랍니다.","J0228":"오는여정 동반 보호자 1인 공항세 할인은 할인 증빙을 소지한 승객 1인과 동일한 일정으로 동시에 항공권 구매 후 동반하여 탑승하실 경우에만 적용되며 탑승 당일 할인 증빙 서류를 제시하여 주시기 바랍니다. 미 소지 시 공항에서 정상 운임으로 항공권을 구매하신 후 탑승하실 수 있습니다.","J0010":"예약인원은 성인, 어린이, 유아를 포함한 \\n9명을 초과할 수 없습니다.","J0252":"접기","J0494":"오토체크인 신청 가능","J0251":"로그인하신 회원이 유아 일 경우에는 예약 진행이 불가합니다. \\n예약센터로 문의하시기 바랍니다.","J0493":"오토체크인 신청 완료","J0012":"마일리지 항공권 예약은 본인 및 가족 회원만 가능하므로 성인, 어린이, 유아를 포함한 8명을 초과할 수 없습니다","J0254":"출발 공항을 선택하여 주십시오.","J0496":"도움말","J0011":"마일리지 항공권 예약은 본인 및 가족 회원만 가능하므로 성인, 소아를 포함한 8명을 초과할 수 없습니다","J0253":"#1 로 구성된 표입니다.","J0495":"간단한 정보 입력 후 출발 24시간 전에 미리 탑승권을 받고 공항에서의 대기시간을 줄여보세요.","J0014":"일치하는 예약번호가 없습니다.","J0135":"#0 구간이 #1 으로 변경되었습니다.","J0498":"좌석배정/오토체크인 신청내역 표","J0013":"탑승 인원을 선택해 주십시오.","J0497":"단, 모바일 탑승권이 허용되지 않는 일부 해외공항에서는 탑승권 전송이 제한될 수 있습니다.","J0016":"변경 후 출발지에 대한 도착지가 존재하지 않습니다.","J0015":"출발지 및 도착지를 선택해 주십시오.","J0136":"#0년 설 연휴 임시편 예약으로 인하여 국내선 전 편 최대 6명까지만 예약 가능합니다.\\n탑승인원을 다시 한번 선택하여 주시기 바랍니다.","J0499":"아시아나항공","J0490":"중국 출발의 경우 오늘 +2일부터 출발일 예약 가능합니다.","J0250":"로그인하신 회원이 소아 일 경우에는 예약 진행이 불가합니다. \\n예약센터로 문의하시기 바랍니다.","J0492":"내용 접기","J0491":"내용 펼치기","J0018":"편도","J0017":"왕복","J0019":"설정한 관심노선이 없습니다. 마이아시아나에서 관심노선을 설정하실 수 있습니다.","J0241":"자동초기화 <em id=\\\"topCountTime\\\" class=\\\"fo_bol\\\"></em> 남았습니다.","J0483":"이코노미","J0240":"#0분 #1초","J0482":"항공권번호 13자리 숫자","J0001":"다음","J0243":"자동초기화","J0485":"아시아나항공 비직항 구간 (#0) 의 여정은 출발(가는 날) 3일 전까지만 예약하실 수 있습니다.","J0242":"세션 연장하기","J0484":"이미 다운로드 후 사용 또는 선물한 쿠폰입니다.","J0003":"처음","J0245":"남은 시간 <span id=\\\"startCountTime\\\" class=\\\"fo_bol\\\"></span>","J0487":"예약인원은 성인,소아,유아를 포함하여 총 9명까지 선택 가능합니다.","J0002":"맨끝","J0123":"예상총액 운임 목록","J0244":"보안상의 이유와 개인 데이터 보호를 위하여 세션이 종료되며, 아시아나항공 첫 화면으로 이동합니다.","J0486":"예약인원은 성인, 소아를 포함하여 총 5명까지 선택 가능합니다.","J0005":"출발지","J0247":"세션 연장","J0489":"예약인원은 성인, 소아, 유아를 포함하여 총 5명까지 선택 가능합니다.","J0004":"이전","J0246":"세션 종료","J0488":"좌석배정/체크인은 티켓 결제 후 이용 가능합니다.","J0481":"숫자 13자리","J0480":"예약번호 8자리 숫자 또는 6자리 영문/숫자","J0007":"가는날&#47;오는날","J0249":"남은 시간 <span id=\\\"ssoStartCountTime\\\" class=\\\"fo_bol\\\"></span>","J0006":"도착지","J0248":"자동초기화 <em id=\\\"ssoTopCountTime\\\" class=\\\"fo_bol\\\"></em> 남았습니다.","J0009":"유아가 동반 성인보다 많을 수 없습니다.","J0008":"가는날","J0032":"탑승객 이름을 입력해 주십시오.","J1000":"탑승일","J0031":"도착지를 입력해 주십시오.","J0034":"항공권번호를 입력해 주십시오.","J1002":"성인","J0033":"탑승일자를 입력해 주십시오.","J1001":"접기","J0036":"예약 정보가 올바르지 않습니다. \\n 마일리지 예약일 경우 로그인해주세요.","J1004":"검색 정보가 없습니다","J0035":"단체 예약입니다.\\n단체 예약은 예약처를 통해 일정을 확인하여 주시기 바랍니다.","J1003":"본인","J0038":"탑승객에 유아가 있는 예약입니다. \\n예약은 예약처를 통해 일정을 확인하여 주시기 바랍니다.","J1006":"임직원 회원 승인 동의에 체크하십시오.","J0037":"예약 정보가 올바르지 않습니다. \\n 마일리지 예약일 경우 로그인해주세요.","J1005":"탑승객","J0030":"출발지를 입력해 주십시오.","J1008":"해당 노선은 선택이 불가합니다.","J0039":"체크인 가능 기간 검색에 실패했습니다.","J1007":"개인 정보 활용 동의에 실패하였습니다.","J1009":"예약인원은 9명을 초과할 수 없습니다.","J0021":"가는 편","J0020":"관심노선을 설정하려면 마이아시아나로 이동하셔야 합니다. 관심노선을 설정하시겠습니까?","J0023":"최근 검색한 노선이 없습니다.","J0022":"선택됨","J0025":"여정의 도착 공항을 선택하여 주십시오.","J9998":"항공편을 열심히 찾고 있습니다.","J0024":"여정의 출발 공항을 선택하여 주십시오.","J9997":"고객님을 위한<br>최저가 항공권을 찾고 있습니다.","J0027":"다구간","J0026":"이원구간","J9999":"<p class=\\\"tit\\\">처리 중입니다.</p>페이지를 새로 고치지 마시고,<br>잠시만 기다려주세요.","J0261":"국내선 할인종류가 여섯개 이상입니다. 할인코드를 다시확인 하세요.","J0260":"회원님의 개인정보를 확인하신 후 예매를 진행하여 주십시오.","J0029":"예약번호를 입력해 주십시오.","J0028":"다구간 여정 선택을 위하여 항공권 예약 화면으로 이동하시겠습니까?","J0054":"온라인 운임규정 조회가 어렵습니다. 예약센터 혹은 지점으로 문의하여 주시기바랍니다.","J3201":"무료","J0053":"#0번 여정의 도착 공항을 선택하여 주십시오.","J3202":"예약변경 불가능","J0056":"언어를 선택해 주십시오.","J0055":"메일 형식이 맞지 않습니다. 다시 입력해 주십시오.","J0058":"실패","J0057":"성공","J0610":"이코노미 일반, 퍼스트","J3203":"가는 편만 가능","J0059":"검색","J3204":"오는 편만 가능","J0050":"(만 13세 이상)","J0052":"#0번 여정의 출발 공항을 선택하여 주십시오.","J0051":"(만 2세 ~ 13세 미만)","J0612":"비즈니스, 이코노미 일반","J0611":"비즈니스, 이코노미 특가","J0614":"퍼스트, 이코노미 특가","J0613":"비즈니스, 퍼스트","J0616":"퍼스트, 비즈니스","J0615":"퍼스트, 이코노미 일반","J0043":"숫자만 입력하세요.","J0042":"편명을 입력하세요.","J1010":"선택삭제","J0045":"취항지","J0044":"날짜를 선택하세요.","J0047":"(만 2세 미만)","J0046":"그외","J0049":"(만 2세 ~ 12세 미만)","J0048":"(만 12세 이상)","J0041":"체크인에 실패했습니다.","J0040":"예약 정보가 올바르지 않습니다.","J0609":"이코노미 일반, 비즈니스","J0608":"이코노미 일반, 특가","J0601":"이코노미 특가","J0603":"비즈니스","J0602":"이코노미 일반","J0605":"이코노미 특가, 일반","J0604":"퍼스트","J0607":"이코노미 특가, 퍼스트","J0606":"이코노미 특가, 비즈니스"}');
			var jsInitBookConditionDatas	= JSON.parse('{"officeId":"SELOZ08DA","tripType":"RT","domIntType":"D","deductionType":"","userData":{"acno":"776699818","birthDate":"19970710","cardExpireDate":"","email":"daze123@hanmail.net","encryptPassword":"","enrollDate":"20200117","enrollStatus":"1","firstName":"YOONHEE","homePhone":"","initPasswdIND":"N","koreanFirstName":"윤희","koreanLastName":"임","koreanName":"임윤희","englishName":"YOONHEE/IM","lastName":"IM","memberGrade":"S","mobile":"82-010-4735-2699","nationality":"KR","residentCountry":"KR","sso":"","sex":"F","siteList":"FNN","title":"MS","userId":"daze123","totalRestMileage":"0","campaignIdList":null,"contactChangeDate":"20200117","lastPasswordChangeDate":"20200117","masterLogin":false,"ssoSessionId":"","customerClientIp":"211.238.142.26","errorCode":"0000","errorMessage":"","token":"","uuid":"","onlineCouponCount":0,"familyNumber":0},"segmentConditionDatas":[{"flightId":"4","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"SEL","departureCityName":"서울","departureAirport":"GMP","departureAirportName":"서울 / 김포","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"CJU","arrivalCityName":"제주","arrivalAirport":"CJU","arrivalAirportName":"제주","direct":"","departureDateTime":"202001171810","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"4","flightSegmentId":"4","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8015","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"GMP","arrivalAirport":"CJU","departureDate":"20200117181000","arrivalDate":"20200117192000","departureCity":"SEL","arrivalCity":"CJU","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]},{"flightId":"29","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"CJU","departureCityName":"제주","departureAirport":"CJU","departureAirportName":"제주","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"SEL","arrivalCityName":"서울","arrivalAirport":"GMP","arrivalAirportName":"서울 / 김포","direct":"","departureDateTime":"202001180930","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"18","flightSegmentId":"29","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8026","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"CJU","arrivalAirport":"GMP","departureDate":"20200118093000","arrivalDate":"20200118104500","departureCity":"CJU","arrivalCity":"SEL","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]}],"passengerConditionDatas":[{"passengerNo":"","passengerType":"ADT","passengerTypeDesc":"성인","title":"","gender":"","lastName":"","firstName":"","koreanFirstName":"","koreanLastName":"","birthDate":"","carrierCode":"","ffpNo":"","departurePTCCode":"","departurePTCRate":"","departurePTCDesc":"","arrivalPTCCode":"","arrivalPTCRate":"","arrivalPTCDesc":"","infantPassengerNo":"","hasInfant":false,"primaryPassenger":false,"savePassenger":false,"staffSKElement_Auth":"","staffSKElement_DJ":"","staffSKElement_SN":"","authNo":"","acno":"","staffNum":"","dayOfBirth":"","passengerName":"","discountCode":"","departureAirport":"","departureAirportName":"","arrivalAirport":"","arrivalAirportName":"","seqNumber":"","staffPTCCode":"","staffCoporateCode":"","staffPricingCode":"","staffResume":""}],"contactDatas":null,"onlineCouponData":null,"bizType":"REV","airlineSearchType":"","ptcCode":"","pointOfSale":"SEL","searchCurrency":"KRW","mixedCabinCode":"","paymentType":"","mobileFlag":false,"starAlliance":false,"atc":false,"childOnly":false,"parentPnrAlpha":"","bookForAnother":false,"pageTicket":"0","jsessionId":"3d-yj9FtUcBasd4BWsiXnP52FB1guKgMvJtE2k0WtTLG69V-ykau!-221295701!-800309583","eventCFF":"","salesType":"","deepLinkId":"","bigEventSeqNo":"","bigEventDetailSeqNo":"","deepLinkDate":"20200117","onlyUpgradeSearch":false,"travellerPTCInfoWithJson":"","mixedBoadingLevel":false,"actNo":"","actMNo":"","actGrade":"","amount":"","mileage":"","currency":"","cffList":[],"staffSKElement_STFS":"","staffSKElement_STFD":"","staffSKElement_limitHour":"","staff_systemId":"","staff_arnkYn":"","sublo":false,"offlineOnhold":false}');
			var jsTmpBookConditionDatas		= JSON.parse('{"officeId":"SELOZ08DA","tripType":"RT","domIntType":"D","deductionType":"","userData":{"acno":"776699818","birthDate":"19970710","cardExpireDate":"","email":"daze123@hanmail.net","encryptPassword":"","enrollDate":"20200117","enrollStatus":"1","firstName":"YOONHEE","homePhone":"","initPasswdIND":"N","koreanFirstName":"윤희","koreanLastName":"임","koreanName":"임윤희","englishName":"YOONHEE/IM","lastName":"IM","memberGrade":"S","mobile":"82-010-4735-2699","nationality":"KR","residentCountry":"KR","sso":"","sex":"F","siteList":"FNN","title":"MS","userId":"daze123","totalRestMileage":"0","campaignIdList":null,"contactChangeDate":"20200117","lastPasswordChangeDate":"20200117","masterLogin":false,"ssoSessionId":"","customerClientIp":"211.238.142.26","errorCode":"0000","errorMessage":"","token":"","uuid":"","onlineCouponCount":0,"familyNumber":0},"segmentConditionDatas":[{"flightId":"4","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"SEL","departureCityName":"서울","departureAirport":"GMP","departureAirportName":"서울 / 김포","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"CJU","arrivalCityName":"제주","arrivalAirport":"CJU","arrivalAirportName":"제주","direct":"","departureDateTime":"202001171810","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"4","flightSegmentId":"4","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8015","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"GMP","arrivalAirport":"CJU","departureDate":"20200117181000","arrivalDate":"20200117192000","departureCity":"SEL","arrivalCity":"CJU","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]},{"flightId":"29","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"CJU","departureCityName":"제주","departureAirport":"CJU","departureAirportName":"제주","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"SEL","arrivalCityName":"서울","arrivalAirport":"GMP","arrivalAirportName":"서울 / 김포","direct":"","departureDateTime":"202001180930","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"18","flightSegmentId":"29","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8026","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"CJU","arrivalAirport":"GMP","departureDate":"20200118093000","arrivalDate":"20200118104500","departureCity":"CJU","arrivalCity":"SEL","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]}],"passengerConditionDatas":[{"passengerNo":"","passengerType":"ADT","passengerTypeDesc":"성인","title":"","gender":"","lastName":"","firstName":"","koreanFirstName":"","koreanLastName":"","birthDate":"","carrierCode":"","ffpNo":"","departurePTCCode":"","departurePTCRate":"","departurePTCDesc":"","arrivalPTCCode":"","arrivalPTCRate":"","arrivalPTCDesc":"","infantPassengerNo":"","hasInfant":false,"primaryPassenger":false,"savePassenger":false,"staffSKElement_Auth":"","staffSKElement_DJ":"","staffSKElement_SN":"","authNo":"","acno":"","staffNum":"","dayOfBirth":"","passengerName":"","discountCode":"","departureAirport":"","departureAirportName":"","arrivalAirport":"","arrivalAirportName":"","seqNumber":"","staffPTCCode":"","staffCoporateCode":"","staffPricingCode":"","staffResume":""}],"contactDatas":null,"onlineCouponData":null,"bizType":"REV","airlineSearchType":"","ptcCode":"","pointOfSale":"SEL","searchCurrency":"KRW","mixedCabinCode":"","paymentType":"","mobileFlag":false,"starAlliance":false,"atc":false,"childOnly":false,"parentPnrAlpha":"","bookForAnother":false,"pageTicket":"0","jsessionId":"3d-yj9FtUcBasd4BWsiXnP52FB1guKgMvJtE2k0WtTLG69V-ykau!-221295701!-800309583","eventCFF":"","salesType":"","deepLinkId":"","bigEventSeqNo":"","bigEventDetailSeqNo":"","deepLinkDate":"20200117","onlyUpgradeSearch":false,"travellerPTCInfoWithJson":"","mixedBoadingLevel":false,"actNo":"","actMNo":"","actGrade":"","amount":"","mileage":"","currency":"","cffList":[],"staffSKElement_STFS":"","staffSKElement_STFD":"","staffSKElement_limitHour":"","staff_systemId":"","staff_arnkYn":"","sublo":false,"offlineOnhold":false}');
			var jsPassengerConditionDatas	= jsTmpBookConditionDatas.passengerConditionDatas;
			var jsContactDatas				= jsTmpBookConditionDatas.contactDatas;
			var jsPassengerConditionDatas_0	= jsPassengerConditionDatas[0];
			var jsPaxTypeFareDatas			= JSON.parse('[{"paxType":"ADT","paxCount":1,"currency":"KRW","amount":214600,"amountWithoutTax":200000,"fuelCharge":6600,"taxWithOutFuleCharge":8000}]');
			var domIntType					= jsInitBookConditionDatas.domIntType;
			var adultCnt					= Number('1');
			var childCnt					= Number('0');
			var infantCnt					= Number('0');
			var totalPaxCnt					= adultCnt + childCnt + infantCnt;
			var currencyCipher				= "#,###";
			var isLogin						= false;
			var isAllowAge 					= true;
			var isSkipBirthDay				= false;
			var isCompareName				= false;
			var isPTCalert 					= false;
			
			
			$(document).ready(function() {
				
				
				var userBirthDate = "19970710";
				if("com.flyasiana.databean.UserDataBean@6e0e33dc" != null && "com.flyasiana.databean.UserDataBean@6e0e33dc" != ""){
					if(/[^0-9]/gi.test(userBirthDate)){
						$("#txtBirthDate1").val("");
						userBirthDate = "";
					}
					if(userBirthDate.length != 8){
						$("#txtBirthDate1").val("");
						userBirthDate = "";
					}
					
					if(userBirthDate != ""){
						isLogin = true;
					}
				}
				
				
				var userLoginAge = getCalcAge(userBirthDate);
				
				if(isLogin){
					if(userLoginAge != "" && userLoginAge < 14){
						isAllowAge = false;				
						alert("정보통신망법 제17조의 2(법정대리인 동의의 확인방법)강화 시행령에 따라 만14세 미만미성년자 예매 시 법정대리인의 동의 및 인증이 불가피하므로 14세 이상의 성인께서 로그인 후 예매진행을 해 주시기 바랍니다. [확인]을 누르시면 로그인 새창으로 연결됩니다.");
						
						goToLogout();
						
						$('.container').append('<form id="movePageForm" method="post" target="_self" />');
						$('#movePageForm').attr('action', 'viewLogin.do?callType=IBE').submit().remove();
						
					}
				}
				
				jsPassengerConditionDatas_0.gender			= 'F';
				jsPassengerConditionDatas_0.lastName		= 'IM';
				jsPassengerConditionDatas_0.firstName		= 'YOONHEE';
				jsPassengerConditionDatas_0.koreanLastName	= '임';
				jsPassengerConditionDatas_0.koreanFirstName	= '윤희';
				jsPassengerConditionDatas_0.birthDate		= userBirthDate;
				jsPassengerConditionDatas_0.carrierCode		= '';

				checkAmadeusSessionExtension("REV", jsInitBookConditionDatas.jsessionId);

				
				$("#txtSendSMS0").on("blur", function() {
				    $(this).val($(this).val().replace(/[^0-9]/g,""));
				    $(this).attr("countryno",$(this).val());
				});

				
				if(jsPaxTypeFareDatas.length > 0) {
					drawPaxTypeFareData();
				}

				
				$("#chkExcludePersonal").off("change").on("change", function(event) {
					event.stopPropagation();

					var $this						= $(this);

					var $divSavePassengerInfo1_id	= $("#divSavePassengerInfo1");												

					var $radGender1					= $("#radMale1, #radFemale1");												
					var $radMale1_id				= $("#radMale1");															
					var $radFemale1_id				= $("#radFemale1");															
					var $hidGender1_id				= $("#hidGender1");															
					var $txtLastName1_id			= $("#txtLastName1");														
					var $txtFirstName1_id			= $("#txtFirstName1");														
					var $selAirline1_id				= $("#selAirline1");														
					var $txtFfpNumber1_id			= $("#txtFfpNumber1");														
					var $txtBirthDate1_id			= $("#txtBirthDate1");														
					var $inputGroup_ADT1			= $("#txtLastName1, #txtFirstName1, #txtFfpNumber1, #txtBirthDate1");		

					var $divSaveInfo1_id			= $("#divSaveInfo1");														
					var $chkSaveInfo1_id			= $("#chkSaveInfo1");														
					$radGender1.prop("checked",		false);
					$hidGender1_id.val("");

					
					$chkSaveInfo1_id.prop("checked",	false);

					
					if($this.prop("checked")) {			
						$radGender1.prop("disabled",	false);
						$txtFfpNumber1_id.prop("disabled", false);
						$inputGroup_ADT1.val("");
						
						if(jsInitBookConditionDatas.actNo != '' && jsInitBookConditionDatas.salesType =='ACT'){
							for(var i=0; i<jsInitBookConditionDatas.passengerConditionDatas.length; i++){
								$("#txtFfpNumber"+(+1+i)).val(jsInitBookConditionDatas.passengerConditionDatas[i].acno);
							}
						}

						$divSavePassengerInfo1_id.removeClass("hidden");
						$divSaveInfo1_id.removeClass("hidden");
						$txtLastName1_id.prop("disabled", false);
						$txtFirstName1_id.prop("disabled", false);
						$("#selectBirthDateYear_1").prop("disabled", false);
						$("#selectBirthDateMonth_1").prop("disabled", false);
						$("#selectBirthDateDay_1").prop("disabled", false);
						$("#selectBirthDateYear_1 option:eq(0)").prop("selected", true);													
						$("#selectBirthDateMonth_1 option:eq(0)").prop("selected", true);														
						$("#selectBirthDateDay_1 option:eq(0)").prop("selected", true);				
						
					} else {							
						if(jsPassengerConditionDatas_0.gender == "M") {
							$radMale1_id.prop("checked",	true);
							$hidGender1_id.val("M");
						}
						if(jsPassengerConditionDatas_0.gender == "F") {
							$radFemale1_id.prop("checked",	true);
							$hidGender1_id.val("F");
						}

						if(jsInitBookConditionDatas.actNo != '' && jsInitBookConditionDatas.salesType =='ACT'){
							for(var i=0; i<jsInitBookConditionDatas.passengerConditionDatas.length; i++){
								$("#txtFfpNumber"+(+1+i)).val(jsInitBookConditionDatas.passengerConditionDatas[i].acno);
							}
						}

						if(domIntType == 'D') {
							if(jsPassengerConditionDatas_0.koreanLastName) {
								$txtLastName1_id.val(jsPassengerConditionDatas_0.koreanLastName);
							} else {
								$txtLastName1_id.val(jsPassengerConditionDatas_0.lastName);
							}
							if(jsPassengerConditionDatas_0.koreanFirstName) {
								$txtFirstName1_id.val(jsPassengerConditionDatas_0.koreanFirstName);
							} else {
								$txtFirstName1_id.val(jsPassengerConditionDatas_0.firstName);
							}
						}else {
							$txtLastName1_id.val(jsPassengerConditionDatas_0.lastName);
							$txtFirstName1_id.val(jsPassengerConditionDatas_0.firstName);
						}

						$selAirline1_id.val("OZ");

						var jsUserData = jsTmpBookConditionDatas.userData;
						$txtFfpNumber1_id.val(jsUserData.acno);
						$txtBirthDate1_id.val(jsUserData.birthDate);
						
						$radGender1.prop("disabled",	true);
						$txtFfpNumber1_id.prop("disabled", true);
						$chkSaveInfo1_id.prop("checked",	false);
						$divSavePassengerInfo1_id.addClass("hidden");
						$divSaveInfo1_id.addClass("hidden");
						$txtLastName1_id.prop("disabled", true);
						$txtFirstName1_id.prop("disabled", true);
						$("#selectBirthDateYear_1").prop("disabled", true);
						$("#selectBirthDateMonth_1").prop("disabled", true);
						$("#selectBirthDateDay_1").prop("disabled", true);
						
						$("#selectBirthDateYear_1").val(jsUserData.birthDate.substring(0,4)).prop("selected", true);
						$("#selectBirthDateMonth_1").val(jsUserData.birthDate.substring(4,6)).prop("selected", true);
						$("#selectBirthDateDay_1").val(jsUserData.birthDate.substring(6,8)).prop("selected", true);
					
					}
				});

				
				$(document).off("change", "[name=selSavePassengerInfo]").on("change", "[name=selSavePassengerInfo]", function(event) {
					event.stopPropagation();

					var $this				= $(this);
					var $thisSelectedOption	= $this.find("option:selected");
					var jsThisValue			= $this.val();

					var jsThisAttr_paxType		= $thisSelectedOption.attr("passengerType");
					var jsThisAttr_gender		= $thisSelectedOption.attr("gender");

					var jsThisAttr_lastName,
						jsThisAttr_firstName;

					if(domIntType == 'D') {
						jsThisAttr_lastName		= $thisSelectedOption.attr("lastName");
						jsThisAttr_firstName	= $thisSelectedOption.attr("firstName");
						
						if($thisSelectedOption.attr("lastName") == null || $thisSelectedOption.attr("lastName") == ''){
							jsThisAttr_lastName  = $thisSelectedOption.attr("enLastName");
							jsThisAttr_firstName = $thisSelectedOption.attr("enFirstName");
						}
					}else {
						jsThisAttr_lastName		= $thisSelectedOption.attr("enLastName");
						jsThisAttr_firstName	= $thisSelectedOption.attr("enFirstName");
					}

					var jsThisAttr_paxAcNo		= $thisSelectedOption.attr("paxAcNo");
					var jsThisAttr_birth		= $thisSelectedOption.attr("birth");

					var $thisParentPassengerData			= $this.parents("[name=divPassengerData]")
					var $thisPassengerDataTable				= $thisParentPassengerData.find("table");
					var $thisPassengerDataTable_gender		= $thisPassengerDataTable.find("[name^=radGender]");
					var $thisPassengerDataTable_hidGender	= $thisPassengerDataTable.find("[name=hidGender]");
					
			        if(jsThisAttr_gender != null && jsThisAttr_gender != ''){
						var $thisPassengerDataTable_selGender	= $thisPassengerDataTable.find("[name^=radGender][value=" + jsThisAttr_gender + "]");
					}
			        
					var $thisPassengerDataTable_lastName	= $thisPassengerDataTable.find("[name=txtLastName]");
					var $thisPassengerDataTable_firstName	= $thisPassengerDataTable.find("[name=txtFirstName]");
					var $thisPassengerDataTable_airline		= $thisPassengerDataTable.find("[name=selAirline]").eq(3);
					var $thisPassengerDataTable_ffpNumber	= $thisPassengerDataTable.find("[name=txtFfpNumber]");
					var $thisPassengerDataTable_birthDate	= $thisPassengerDataTable.find("[name=txtBirthDate]");
					
					var $thisPassengerDataTable_birthDateY	= $thisPassengerDataTable.find("[name=selAirline]").eq(0);
					var $thisPassengerDataTable_birthDateM	= $thisPassengerDataTable.find("[name=selAirline]").eq(1);
					var $thisPassengerDataTable_birthDateD	= $thisPassengerDataTable.find("[name=selAirline]").eq(2);
					

					if(!jsThisValue) {
						$thisPassengerDataTable_gender.prop({
							"disabled"	: false,
							"checked"	: false
						});
						$thisPassengerDataTable_hidGender.val("");
						$thisPassengerDataTable_lastName.val("")
														.prop("readonly", false);
						$thisPassengerDataTable_firstName.val("")
														 .prop("readonly", false);
						$thisPassengerDataTable_airline.prop("disabled", false);
						$thisPassengerDataTable_ffpNumber.val("")
														 .prop("readonly", false);
						$thisPassengerDataTable_birthDate.val("");
						$thisPassengerDataTable_birthDateY.prop("disabled", false);
						$thisPassengerDataTable_birthDateM.prop("disabled", false);
						$thisPassengerDataTable_birthDateD.prop("disabled", false);
						
						$("#"+$thisPassengerDataTable_birthDateY.attr('id') + " option:eq(0)").prop("selected", true);
						$("#"+$thisPassengerDataTable_birthDateM.attr('id') + " option:eq(0)").prop("selected", true);
						$("#"+$thisPassengerDataTable_birthDateD.attr('id') + " option:eq(0)").prop("selected", true);
						
					} else {
						
						if(jsThisAttr_gender != null && jsThisAttr_gender != ''){
							$thisPassengerDataTable_selGender.prop("checked", true);
							$thisPassengerDataTable_hidGender.val(jsThisAttr_gender);
							$thisPassengerDataTable_gender.prop("disabled", true);
						}
						
						$thisPassengerDataTable_lastName.val(jsThisAttr_lastName)
														.prop("readonly", true);
						$thisPassengerDataTable_firstName.val(jsThisAttr_firstName)
														 .prop("readonly", true);
						$thisPassengerDataTable_airline.val("OZ")
													   .prop("disabled", true);
						$thisPassengerDataTable_ffpNumber.val(jsThisAttr_paxAcNo)
														 .prop("readonly", false);
						$thisPassengerDataTable_birthDate.val(jsThisAttr_birth);
						$thisPassengerDataTable_birthDateY.prop("disabled", true);
						$thisPassengerDataTable_birthDateM.prop("disabled", true);
						$thisPassengerDataTable_birthDateD.prop("disabled", true);
						
						if(jsThisAttr_birth.length>=8){
							$thisPassengerDataTable_birthDateY.val(jsThisAttr_birth.substring(0,4)).prop("selected", true);
							$thisPassengerDataTable_birthDateM.val(jsThisAttr_birth.substring(4,6)).prop("selected", true);
							$thisPassengerDataTable_birthDateD.val(jsThisAttr_birth.substring(6,8)).prop("selected", true);
						}
					}

				});

				
				$("[name^=radGender]").off("change").on("change", function(event) {
					event.stopPropagation();

					var $this		= $(this);
					var $thisParent	= $this.parent();
					var jsThisValue	= $this.val();

					$thisParent.find("[name=hidGender]").val(jsThisValue);
				});

				
				$("[name^=selAirline]").off("change").on("change", function(event) {
					event.stopPropagation();

					var $this		= $(this);
					var $thisParent	= $this.parent();
					var jsThisValue	= $this.val();
					
					$thisParent.find("[name=txtFfpNumber]").val("");	
					$thisParent.find("[name=txtFfpNumber]").attr("maxlength", "9");
					if (jsThisValue != "OZ") {
						$thisParent.find("[name=txtFfpNumber]").attr("maxlength", "20");
					}


					if ($this.attr("id") == "selAirline1" && !$("#chkExcludePersonal").is(":checked") && jsThisValue == "OZ") {
						$thisParent.find("[name=txtFfpNumber]").prop("disabled", true);
						$("#txtFfpNumber1").val("776699818");
					} else { 
						$thisParent.find("[name=txtFfpNumber]").prop("disabled", false);
					}

				});

				
				keyupOnlyNum($("#txtSendSMS1"));
				
				
				if($("#txtNoLoginPassword").length > 0) {
					keyupOnlyNum($("#txtNoLoginPassword"));
				}
				if($("#txtNoLoginPassword2").length > 0) {
					keyupOnlyNum($("#txtNoLoginPassword2"));
				}

				
				$("#txtSendEmail").off("blur").on("blur", function(event) {
					event.stopPropagation();

					var $this				= $(this);
					var jsThisValue			= $this.val();
					var jsThisValue_length	= jsThisValue.length;

					if(jsThisValue_length > 0 && !checkEmailFormat($this)) {

						return false;
					}
				});

				
				$("[name=txtBirthDate]").off("blur").on("blur", function(event) {
					event.stopPropagation();

					var $this				= $(this);
					var jsThisValue			= $this.val();
					var jsThisValue_length	= jsThisValue.length;

					if(jsThisValue_length > 0 && !checkValidDate($this)) {

						return false;
					}
				});
				
				
				$("[name=txtBirthDateParent]").off("blur").on("blur", function(event) {
					event.stopPropagation();

					var $this				= $(this);
					var jsThisValue			= $this.val();
					var jsThisValue_length	= jsThisValue.length;

					if(jsThisValue_length > 0 && !checkValidDate($this)) {

						return false;
					}
				});

				
				searchCountryNumber($('#btn_stationNum'), $("#txtSendSMS0"));

				
				/* $("#txtSendSMS0").off("focus").on("focus", function(event) {
					event.stopPropagation();

					$('#btnCountryNum').click();
				}); */

				
				$('#btnPrevStep').off("click").on('click', function(event) {
					event.stopPropagation();

					openLayerPopup('backNoti');
				});
				
				
				$('#rev_btn_previous_confirm').off("click").on('click', function(event) {
					jsInitBookConditionDatas.pageTicket = "";

					var jsTargetPage;

					if(domIntType == 'D') {
						jsTargetPage	= './RevenueDomesticFlightsSelect.do';
					}else {
						if("RT" == "MT"){
							
							if("" == "ACT"){
								jsTargetPage	= './ACTRegistTravel.do';
							}else{
								jsTargetPage	= './RevenueRegistTravel.do';
							}
						}else{
							jsTargetPage	= './RevenueInternationalFareDrivenFlightsSelect.do';
						}
					}

					loadingOpen('entire', 'booking');
					$("#inputPassengerForm").attr('action', jsTargetPage)
											.submit();
				});
				
				
				$('#btnNextStep').off("click").on('click', function(event) {
					event.stopPropagation();

					
					if(!checkValid()) {
						return false;
					}
					
					
					var isblocked = false;
					$("div[id^=divPassengerData_]").each(function(){
						var options = {//전달할 데이터
								BLOCK_TYPE : "02",
								PHONE : $("#txtSendSMS1").val(),
								EMAIL : $("#txtSendEmail").val(),
								FIRST_NM : $(this).find('input[name=txtFirstName]').val(),
								LAST_NM : $(this).find('input[name=txtLastName]').val(),
								PAX_DOB :   $(this).find("[name=txtBirthDate]").val()
						}
						if(userAccessControl(options)){
							isblocked = true;
							return false;
						}
					})
					if(isblocked){
						return false;
					}

					
					if(!checkFFPNoValid()){
						return false;
					}
					
					
					if(jsInitBookConditionDatas.salesType =='ACT' && jsInitBookConditionDatas.actNo != ''){
						if(!checkACTNoValid()){
							return false;
						}
					}
					
					if("true" == "true") {
						if($('#txtSendSMS0').attr('countryNo').length >= 4) {
							alert("국가번호를 확인하세요");
							$('#txtSendSMS0').focus();
							return false;
						}
					}

					
					if(!isSkipBirthDay) {						
						var noticeBirth = "";
						
						$("[name=divPassengerData]").each(function(idx, val) {
							var $this				= $(this);
							var txtLastName		= $this.find("[name=txtLastName]").val();				// 성
							var txtFirstName	= $this.find("[name=txtFirstName]").val();				// 이름
							var txtBirthDateY	= $this.find("[id^=selectBirthDateYear_]").val();		// 성년월일
							var txtBirthDateM	= $this.find("[id^=selectBirthDateMonth_]").val();		// 성년월일
							var txtBirthDateD	= $this.find("[id^=selectBirthDateDay_]").val();		// 성년월일
							var txtPsnType		= $this.attr("passengerType");							// 탑승자타입
							
							noticeBirth += (txtLastName+'/'+ txtFirstName + ' '+ txtBirthDateY +'.' + txtBirthDateM +'.' + txtBirthDateD + '<br>');
						});
						
						$('#txtConfirmBDate').html(noticeBirth);
						openLayerPopup("divBirthdayConfirm", this.id);
						return false;
					}

					
					if("false" == "true"){
						if(checkBotCaptcha()){
							return false;
						}
					}

					if(!ptcValidation('selPTCCode_Dep_', 'selPTCCode_Arr_')) {
						return;
					}
					
					fncPersonalPtcMsg('selPTCCode_Dep_', 'selPTCCode_Arr_'); // 개인할인 안내 메시지
					
					
					if(domIntType == 'D'){
						if(!isCompareName){
							var nameList = [];
							var isName = true;
							var i=0;
							  
							 $("[name=divPassengerData]").each(function(idx, val) {
								var $this				= $(this);
								var txtLastName		= $this.find("[name=txtLastName]").val();				// 성
								var txtFirstName	= $this.find("[name=txtFirstName]").val();				// 이름
								nameList[i] = txtLastName+txtFirstName;
								i++;
							});  
							
							 for(var j=0 ; j < nameList.length-1 ; j++){
								 for(var k=j+1; k<nameList.length ;k++){
									 if(nameList[j] == nameList[k]){
										 isName = false;
									 }
								 }
							 }
							 
							if(!isName){
								openLayerPopup("divNameConfirm", this.id);
								return false;
							}
						}
					}

					if ('false' == 'true') {
					       openLayerPopup("divSkipSelectSeat", this.id);
					} else {
					       getRevenueInputPassenger("RevenueFarePayment.do");
					}
				});

				
				$("#btnSelectSeatLayerCancel").off("click").on('click', function(event) {
					event.stopPropagation();
					
					getRevenueInputPassenger("RevenueFarePayment.do");
					
					
					$(".dim_close").click();
				});

				
				$("#btnSelectSeatLayerConfirm").off("click").on('click', function(event) {
					event.stopPropagation();

					getRevenueInputPassenger("ViewPreferredSeats.do");

					
					$(".dim_close").click();
				});

				$("#chkExcludePersonal").change();
				
				$("[id^=selectBirthDate]").on("change", function(e) {
					isSkipBirthDay = false;
					
					idx = Number($(this).attr("id").replace(/[^0-9]/g, ""));
					
					var sYear = $('#selectBirthDateYear_'+idx).val();
					var sMonth = $('#selectBirthDateMonth_'+idx).val();
					var sDay = $('#selectBirthDateDay_'+idx).val();
					
					$('#txtBirthDate' +idx).val(sYear+sMonth+sDay);
					
				});
				
				$("[name=txtLastName]").on("change", function(e) {
					isCompareName = false;
				});
				$("[name=txtFirstName]").on("change", function(e) {
					isCompareName = false;
				});

				
				$("#btnBirthdayConfirm").on('click', function(event) {
					isSkipBirthDay = true;
					
					$(".dim_close").click();
					$("#btnNextStep").click();
				});
				
				$("#btnBirthdayModify").on('click', function(event) {
					isSkipBirthDay = false;
					$(".dim_close").click();
				});
				
				
				$("#btnNameConfirm").on('click', function(event) {
					event.stopPropagation();
					isCompareName = true;
					
					$(".dim_close").click();
					$("#btnNextStep").click();
				});
				
				$("#btnNameModify").on('click', function(event) {
					event.stopPropagation();
					isCompareName = false;
					$(".dim_close").click();
				});
			});
			

			function goToLogout(){
				
				$.ajax({
					async: false,
					url: "LogoutLessThanFourteen.do?callType=IBE",
					type: "get",
					dataType: 'json',
					data : {
						
					},
					success: function(data) {
						
					},
					error :  function(data){
						alert("Logout error!");
						
					}
				});
				
			}
			
			
			var drawPaxTypeFareData = function drawPaxTypeFareData() {
				var fareData_html	= '';
				fareData_html	+= '<p class="title">총 운임금액</p>\
									<ul class="detail">'; 

				var jsTotalPaxAmount	= 0;
				var jsPaxCurrency		= jsPaxTypeFareDatas[0].currency;
				
				jsPaxTypeFareDatas.sort(function(a, b) {
					return a['paxType'] < b['paxType'] ? -1 : a['paxType'] > b['paxType'] ? 1 : 0;
				});
				
				$.each(jsPaxTypeFareDatas, function(idx, val) {
					var jsPaxType		= getNullToDefault(val.paxType, "");
					var jsPaxCount		= Number(getNullToDefault(val.paxCount,	""));
					var jsPaxAmount		= getNullToDefault(val.amount,	"");

					var jsPaxTypeName	= '';
					if(jsPaxType == 'ADT') {
						jsPaxTypeName	= "성인"; 
					} else if(jsPaxType == 'CHD') {
						jsPaxTypeName	= "소아"; 
					} else if(jsPaxType == 'INF') {
						jsPaxTypeName	= "유아"; 
					}

					fareData_html += '	<li>\
											<span class="person">' + jsPaxTypeName + ' ' + jsPaxCount + '</span>\
											<span class="price">' + jsPaxCurrency + ' ' + jsPaxAmount.setComma() + '</span>\
										</li>';

					jsTotalPaxAmount += jsPaxAmount;
				});
				fareData_html += '	</ul>';

				$("#divFareData").html(fareData_html);

			}

			
			var checkValid = function checkValid() {
				var isCheck	= true;
				var isIssueAgeCheck = false;
				var isCheckPTC = false;
				
				
				$("[name=divPassengerData]").each(function(idx, val) {
					var $this				= $(this);
					var $thisPassengerType	= $this.attr("passengerType");					// Passenger Type
					var $this_h4_text		= $this.find("h4:eq(0)").text().trim();			// 탑승자 유형
					//var $this_hidGender		= $this.find("[name=hidGender]");			// 성별
					var $this_txtLastName	= $this.find("[name=txtLastName]");				// 성
					var $this_txtFirstName	= $this.find("[name=txtFirstName]");			// 이름
					var $this_txtBirthDate	= $this.find("[name=txtBirthDate]");			// 성년월일
					var $this_selBirthDateY	= $this.find("[id^=selectBirthDateYear_]");		// 성년월일
					var $this_selBirthDateM	= $this.find("[id^=selectBirthDateMonth_]");	// 성년월일
					var $this_selBirthDateD	= $this.find("[id^=selectBirthDateDay_]");		// 성년월일
					var $this_selAirline	= $this.find("[name=selAirline]").eq(3);		// 회원번호 - 항공사
					var $this_txtFfpNumber	= $this.find("[name=txtFfpNumber]");			// 회원번호
					var $this_txtCheckAge =  getCalcAge($this_txtBirthDate.val());			// 14세 미만 체크 
					
					var $this_selPTCCode_Dep	= $this.find("[name=selPTCCode_Dep]").val();	// 가는편 PTC
					var $this_selPTCCode_Arr	= $this.find("[name=selPTCCode_Arr]").val();	// 오는편 PTC
					
					
						
					if(domIntType == 'D' && "RT" != "OW" ){
						if(typeof($this_selPTCCode_Dep) != 'undefined' && $this_selPTCCode_Dep == 'DIS') {
							$this_selPTCCode_Dep = 'PR';
						}
						if(typeof($this_selPTCCode_Arr) != 'undefined' && $this_selPTCCode_Arr == 'DIS') {
							$this_selPTCCode_Arr = 'PR';
						}
						if(typeof($this_selPTCCode_Dep) != 'undefined' && typeof($this_selPTCCode_Arr) != 'undefined') {
							if($this_selPTCCode_Dep != $this_selPTCCode_Arr) {
								isCheckPTC = true;
								alert("개인할인은 왕복 여정에 모두 적용하셔야 공항세 할인이 가능합니다.");
								return false;
							}
						}
					}
					
					//청주공항 alert
					if(!isPTCalert){
							if(("GMP" == "CJJ" && "CJU" == "CJU")
									|| ("GMP" == "CJU" && "CJU" == "CJJ")
										|| ("CJU" == "CJJ" && "GMP" == "CJU")
											 || ("CJU" == "CJU" && "GMP" == "CJJ")){
								
								if($this_selPTCCode_Dep == 'PR'){
									alert("OZ8231/OZ8230 편 항공기는 청주공항의 시설물 사정으로 탑승교 사용이 불가합니다. 이점 널리 양해하여 주시기 바랍니다.");
									isPTCalert = true;
									return false;
								}
						}
					}
					
					if($this.find("input[name^=radGender]:checked").val() == undefined || $this.find("input[name^=radGender]:checked").val() == "") {
						alert($this_h4_text + "의 성별을 선택해주세요."); 
						$this.find("[name=hidGender]").parent().find('input').eq(0).focus();
						isCheck	= false;

						return false;
					}

					if(!$this_txtLastName.val()) {
						if(domIntType == 'D') {
							alert($this_h4_text + "의 성(한글)을 입력해주세요."); 
						}else {
							alert($this_h4_text + "의 성(영문)을 입력해주세요."); 
						}
						$this_txtLastName.focus();
						isCheck	= false;

						return false;
					}

					if(!(/^[\sA-Za-z가-힣+]*$/).test($this_txtLastName.val())) {
						alert("특수기호/숫자를 빼고 입력해주십시오.");
						$this_txtLastName.focus();
						isCheck	= false;
						return false;
					}else{
						if(domIntType == 'I') {
							if(/[가-힣]/.test($this_txtLastName.val())) {
								alert("영문을 입력해주십시오."); 
								$this_txtLastName.focus();
								isCheck	= false;
								return false;
							}
						}
					}

					if(!$this_txtFirstName.val()) {
						if(domIntType == 'D') {
							alert($this_h4_text + "의 이름(한글)을 입력해주세요.") 
						}else {
							alert($this_h4_text + "의 이름(영문)을 입력해주세요."); 
						}
						$this_txtFirstName.focus();
						isCheck	= false;

						return false;
					}

					if(!(/^[\sA-Za-z가-힣+]*$/).test($this_txtFirstName.val())) {
						alert("특수기호/숫자를 빼고 입력해주십시오.");
						$this_txtFirstName.focus();
						isCheck	= false;
						return false;
					}else{
						if(domIntType == 'I') {
							if(/[가-힣]/.test($this_txtFirstName.val())) {
								alert("영문을 입력해주십시오."); 
								$this_txtFirstName.focus();
								isCheck	= false;
								return false;
							}
						}
					}

					if($this_txtBirthDate.length) {
						if(!$this_txtBirthDate.val()) {
							alert($this_h4_text + "의 생년월일을 입력해주세요."); 
							if(!$this_selBirthDateY.val()) {
								$this_selBirthDateY.focus();								
							}else if(!$this_selBirthDateM.val()) {
								$this_selBirthDateM.focus();
							} else if(!$this_selBirthDateD.val()) {
								$this_selBirthDateD.focus();
							}
							isCheck	= false;

							return false;
						}

						if($this_txtBirthDate.val().length != 8) {
							alert($this_h4_text + "의 생년월일을 8자리로 입력해주세요."); 
							$this_selBirthDate.focus();
							isCheck	= false;

							return false;
						}

						
						if($thisPassengerType == "ADT"){
							var segmentDatasJSON = '[{"flightId":"4","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"SEL","departureCityName":"서울","departureAirport":"GMP","departureAirportName":"서울 / 김포","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"CJU","arrivalCityName":"제주","arrivalAirport":"CJU","arrivalAirportName":"제주","direct":"","departureDateTime":"202001171810","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"4","flightSegmentId":"4","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8015","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"GMP","arrivalAirport":"CJU","departureDate":"20200117181000","arrivalDate":"20200117192000","departureCity":"SEL","arrivalCity":"CJU","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]},{"flightId":"29","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"CJU","departureCityName":"제주","departureAirport":"CJU","departureAirportName":"제주","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"SEL","arrivalCityName":"서울","arrivalAirport":"GMP","arrivalAirportName":"서울 / 김포","direct":"","departureDateTime":"202001180930","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"18","flightSegmentId":"29","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8026","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"CJU","arrivalAirport":"GMP","departureDate":"20200118093000","arrivalDate":"20200118104500","departureCity":"CJU","arrivalCity":"SEL","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]}]';
							var segmentDatas = JSON.parse(segmentDatasJSON);

							var age = getAge($this_txtBirthDate.val(), segmentDatas[0].departureDateTime.substring(0,8));

							if(domIntType == "D"){
								if(age < 13){
									alert($this_h4_text + "의 생년월일을 확인해주세요."); 
									$this_txtBirthDate.focus();
									isCheck	= false;

									return false;
								}
							}else{
								if(age < 12){
									alert($this_h4_text + "의 생년월일을 확인해주세요."); 
									$this_txtBirthDate.focus();
									isCheck	= false;

									return false;
								}
							}
						}
						if($thisPassengerType == "CHD" || $thisPassengerType == "INF"){
							var segmentDatasJSON = '[{"flightId":"4","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"SEL","departureCityName":"서울","departureAirport":"GMP","departureAirportName":"서울 / 김포","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"CJU","arrivalCityName":"제주","arrivalAirport":"CJU","arrivalAirportName":"제주","direct":"","departureDateTime":"202001171810","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"4","flightSegmentId":"4","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8015","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"GMP","arrivalAirport":"CJU","departureDate":"20200117181000","arrivalDate":"20200117192000","departureCity":"SEL","arrivalCity":"CJU","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]},{"flightId":"29","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"CJU","departureCityName":"제주","departureAirport":"CJU","departureAirportName":"제주","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"SEL","arrivalCityName":"서울","arrivalAirport":"GMP","arrivalAirportName":"서울 / 김포","direct":"","departureDateTime":"202001180930","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"18","flightSegmentId":"29","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8026","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"CJU","arrivalAirport":"GMP","departureDate":"20200118093000","arrivalDate":"20200118104500","departureCity":"CJU","arrivalCity":"SEL","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]}]';
							var segmentDatas = JSON.parse(segmentDatasJSON);

							var adtMatchCnt = 0;
							var chdMatchCnt = 0;
							var infMatchCnt = 0;

							var isADTPartNotMatch = false;
							var isCHDPartNotMatch = false;

							for(var j=0; j<segmentDatas.length; j++){
								var age = getAge($this_txtBirthDate.val(), segmentDatas[j].departureDateTime.substring(0,8));

								
								if($thisPassengerType == "CHD") {
									if(domIntType == "D"){
										if(13 <= age){
											adtMatchCnt++;
										}
									}else{
										if(12 <= age){
											adtMatchCnt++;
										}
									}

									if(2 > age){
										infMatchCnt++;
									}
								}

								
								if($thisPassengerType == "INF") {
									if(2 <= age){
										chdMatchCnt++;
									}
								}
							}

							if(adtMatchCnt > 0){
								if(adtMatchCnt == segmentDatas.length){
									alert($this_h4_text + "의 생년월일을 확인해주세요."); 
									$this_txtBirthDate.focus();
									isCheck	= false;

									return false;
								}else{
									if(domIntType == "D"){
										alert($this_h4_text + "의 나이가 탑승 당일 소아가 아닙니다."); 
										$this_txtBirthDate.focus();
										isCheck	= false;

										return false;
									}
								}
							}
							if(chdMatchCnt > 0){
								if(chdMatchCnt == segmentDatas.length){
									alert($this_h4_text + "의 생년월일을 확인해주세요."); 
									$this_txtBirthDate.focus();
									isCheck	= false;

									return false;
								}else{
									alert($this_h4_text + "의 나이가 탑승 당일 유아가 아닙니다."); 
									$this_txtBirthDate.focus();
									isCheck	= false;

									return false;
								}
							}
							if(infMatchCnt > 0){
								var confirmMsg = "입력하신 #0 소아 고객님의 생년월일이 출발일 기준 유아에 적용됩니다.\n\n좌석 점유 유아 항공권을 구매하기 원하실 경우, 예약센터 및 지점으로 문의하시기 바랍니다"; 
								confirmMsg = confirmMsg.replace('#0', $this_txtLastName.val().toUpperCase()+" "+$this_txtFirstName.val().toUpperCase());
								
								alert(confirmMsg);
								
								var url = "";
								if("REV" == "REV"){										
									url = "RevenueRegistTravel.do";
								}else{
									url = "RedemptionRegistTravel.do";
								}
								loadingOpen('entire', 'booking');
								$("#form_goTo").attr('action', url).submit();
								isCheck	= false;
								return false;
							}
						}
					}

					
					if($this_txtCheckAge >= 14){
						isIssueAgeCheck = true;
					}
					
					if($thisPassengerType != "INF") {
						if(!$this_selAirline.val()) {
							alert($this_h4_text + "의 항공사를 선택해주세요."); 
							$this_selAirline.focus();
							isCheck	= false;

							return false;
						}
					}
				});
				
				if(isCheckPTC) {
					return false;
				}
				
				if((isLogin == false && isIssueAgeCheck == false) || (isLogin == true && isAllowAge == false )){
					
					alert("정보통신망법 제17조의2(법정대리인 동의의 확인방법) 강화 시행령에 따라 만 14세 미만 미성년자 예매 시 법정대리인의 동의 및 인증이 불가피하므로 14세 이상의 성인께서 로그인 후 예매진행을 해 주시기 바랍니다. ");
					return false;					
				}

				
				/* var hasUSA
				var usArea    = 'US|CA|RU|MX|BZ|CR|SV|GT|HN|NI|BS|BM|GF|GY|SR|AR|BO|CL|CO|EC|GF|PA|PY|PE|YU|VE';
				var usAirport = 'GUM|SPN|HAV|LIM';
				
				for(var i=0; i<jsInitBookConditionDatas.segmentConditionDatas.length; i++){
					var depArea    = jsInitBookConditionDatas.segmentConditionDatas[i].departureArea;
					var arrArea    = jsInitBookConditionDatas.segmentConditionDatas[i].arrivalArea;
					var depAirport = jsInitBookConditionDatas.segmentConditionDatas[i].departureAirport;
					var arrAirport = jsInitBookConditionDatas.segmentConditionDatas[i].arrivalAirport;
					
					if(usArea.indexOf(depArea) > -1 || usArea.indexOf(arrArea) > -1 
							|| usAirport.indexOf(depAirport) > -1 || usAirport.indexOf(arrAirport) > -1){
						hasUSA = true;
						break;
					}
				} */
				
				var maxInfLength = 0;
				var maxAdtLength = 0;
				
				$("div[id^=divPassengerData_]").each(function(){
					var fullName = $(this).find('input[name=txtLastName]').val() + $(this).find('input[name=txtFirstName]').val();
					
					if($(this).attr('passengertype') == "INF"){
						if(maxInfLength < fullName.length){
							maxInfLength = fullName.length
						}
					}
					
					if($(this).attr('passengertype') == "ADT"){
						if(maxAdtLength < fullName.length){
							maxAdtLength = fullName.length
						}
					}
				});

				$("div[id^=divPassengerData_]").each(function(){
					var paxType = $(this).attr('passengertype');
					var fullName = $(this).find('input[name=txtLastName]').val() + $(this).find('input[name=txtFirstName]').val();

					if(infantCnt > 0){

						if(paxType == "ADT"){
							if(fullName.length > 42) {
								alert("성/이름은 최대 42자까지 입력 가능합니다.\n 안내가 필요하신 분은 예약센터(1588-8000) 또는 홈페이지를 통해 문의 하여 주시기 바랍니다."); 
								isCheck	= false;
								return false;
							}
							
							var infpax = $(this).attr('id').replace('ADT', 'INF');
							var infName = '';
							var infLastName = $('#'+infpax).find('input[name=txtLastName]').val();
							var infFirstName = $('#'+infpax).find('input[name=txtFirstName]').val();
								
							if(typeof(infLastName) != 'undefined' && infLastName != "" && typeof(infFirstName) != 'undefined' && infFirstName != "") {
								infName = infLastName + infFirstName;

								if( fullName.length + infName.length > 28){
									alert("동반하는 성인과 합하여 성/이름 총 28자까지 입력 가능합니다. \n 안내가 필요하신 분은 예약센터(1588-8000) 또는 홈페이지를 통해 문의 하여 주시기 바랍니다."); 
									isCheck	= false;
									return false;
								}
							}
						}

						if(paxType == "CHD"){
							if(fullName.length > 41) {
								alert("성/이름은 최대 41자까지 입력 가능합니다.\n 안내가 필요하신 분은 예약센터(1588-8000) 또는 홈페이지를 통해 문의 하여 주시기 바랍니다."); 
								isCheck	= false;
								return false;
							}
						}
					}else{
						if(paxType == "ADT"){
							if(fullName.length > 42) {
								alert("성/이름은 최대 42자까지 입력 가능합니다.\n 안내가 필요하신 분은 예약센터(1588-8000) 또는 홈페이지를 통해 문의 하여 주시기 바랍니다."); 
								isCheck	= false;
								return false;
							}
						}

						if(paxType == "CHD"){
							if(fullName.length > 41) {
								alert("성/이름은 최대 41자까지 입력 가능합니다.\n 안내가 필요하신 분은 예약센터(1588-8000) 또는 홈페이지를 통해 문의 하여 주시기 바랍니다."); 
								isCheck	= false;
								return false;
							}
						}
					}

					
				});

				if(!isCheck) {
					return false;
				}

				
				var	$txtSendSMS0_id	= $("#txtSendSMS0");

				if(!$txtSendSMS0_id.val()) {
					alert("국번을 선택해주세요."); 
					$txtSendSMS0_id.focus();

					return false;
				}

				var $txtSendEmail_id	= $("#txtSendEmail");

				if(!$txtSendEmail_id.val()) {
					alert("이메일을 입력해주세요."); 
					$txtSendEmail_id.focus();

					return false;
				}
				if(!checkEmailFormat($txtSendEmail_id)){
					return false;
				}

				var $txtSendSMS1_id		= $("#txtSendSMS1");

				if(!$txtSendSMS1_id.val()) {
					alert("전화번호를 입력해 주시기 바랍니다."); 
					$txtSendSMS1_id.focus();

					return false;
				}

				
				if($("#txtNoLoginPassword").length > 0 && !checkPasswordValidation($("#txtNoLoginPassword"), $("#txtNoLoginPassword2"))) {
					return false;
				}

				return true;
			};
			
			
			var checkFFPNoValid = function() {
				var checkFFPNo = true;
				var paxTypeDesc = "";
				
				
				$("[name=divPassengerData]").each(function(idx, val) {
					if(checkFFPNo){
						paxTypeDesc = $(this).find("h4:eq(0)").text().trim();
						var lastName	= $(this).find("[name=txtLastName]").val();
						var firstName	= $(this).find("[name=txtFirstName]").val();
						var birthDate	= $(this).find("[name=txtBirthDate]").val();
						var airline	    = $(this).find("[name=selAirline]").eq(3).val();
						var ffpNumber	= $(this).find("[name=txtFfpNumber]").val();
						
						if(airline == "OZ" && ffpNumber != ""){
							$.ajax({
								async: false,
								url: "CheckFFPNoValidation.do",
								type: "post",
								dataType: 'json',
								data : {
									domIntType : domIntType,
									lastName   : lastName,
									firstName  : firstName,
									birthDate  : birthDate,
									acno       : ffpNumber
								},
								success: function(data) {
									var ffpValidate = data.ffpValidate;
									
									if(!ffpValidate){
										checkFFPNo	= false;
									}
								},
								error :  function(data){
									alert("CheckFFPNoValidation error");
									checkFFPNo	= false;
								},
								complete : function() {
									checkSSOSessionExtension();
								}
							});
						}
					}
				});
				
				if(!checkFFPNo){
					alert("#0 입력정보와 회원정보가 일치하지 않습니다. 확인 후 다시 입력하여 주시기 바랍니다.".replace("#0", paxTypeDesc)); 
				}
				
				return checkFFPNo;
			};
			
						
			var checkACTNoValid = function() {
				var checkACTNo = true;
				var paxTypeDesc = "";

				
				$("[name=divPassengerData]").each(function(idx, val) {
					if(checkACTNo){
						paxTypeDesc = $(this).find("h4:eq(0)").text().trim();
						var ffpNumber	= $(this).find("[name=txtFfpNumber]").val();

						
							$.ajax({
								async: false,
								url: "CheckACTValidation.do",
								type: "post",
								dataType: 'json',
								data : {
									acno       : ffpNumber
								},
								success: function(data) {
									var actValidate = data.actValidate;

									if(!actValidate){
										checkACTNo	= false;
									}else{
										jsTmpBookConditionDatas.actNo = jsInitBookConditionDatas.actNo;										
									}
								},
								error :  function(data){
									alert("CheckACTValidation error");
									checkACTNo	= false;
								},
								complete : function() {
									checkSSOSessionExtension();
								}
							});
						
					}
				});

				if(!checkACTNo){
					alert("#0 입력정보와 회원정보가 일치하지 않습니다. 확인 후 다시 입력하여 주시기 바랍니다.".replace("#0", paxTypeDesc)); 
				}

				return checkACTNo;
			};
			

			
			var euTypeCheckValid = function() {
				var euTypeCheck			= true;
				var segmentDatasJSON	= '[{"flightId":"4","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"SEL","departureCityName":"서울","departureAirport":"GMP","departureAirportName":"서울 / 김포","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"CJU","arrivalCityName":"제주","arrivalAirport":"CJU","arrivalAirportName":"제주","direct":"","departureDateTime":"202001171810","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"4","flightSegmentId":"4","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8015","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"GMP","arrivalAirport":"CJU","departureDate":"20200117181000","arrivalDate":"20200117192000","departureCity":"SEL","arrivalCity":"CJU","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]},{"flightId":"29","segmentNo":"","departureArea":"KR","departureCountry":"","departureCity":"CJU","departureCityName":"제주","departureAirport":"CJU","departureAirportName":"제주","arrivalArea":"KR","arrivalCountry":"","arrivalCity":"SEL","arrivalCityName":"서울","arrivalAirport":"GMP","arrivalAirportName":"서울 / 김포","direct":"","departureDateTime":"202001180930","arrivalDateTime":"","cabinClassList":["E"],"cabinClassNameList":[],"exchangeSegment":false,"flownSegment":false,"recommendId":"18","flightSegmentId":"29","beforeArrivalDate":"","bookingClass":"Y","codeShare":"Y","preAssignSeat":false,"operationCarrierCode":"BX","fareFamilyDiscountRate":"0","flightConditionDatas":[{"carrierCode":"OZ","flightNo":"8026","operationCarrierCode":"BX","operationFlightNo":"","departureCountry":"KR","arrivalCountry":"KR","departureAirport":"CJU","arrivalAirport":"GMP","departureDate":"20200118093000","arrivalDate":"20200118104500","departureCity":"CJU","arrivalCity":"SEL","fareFamily":"BASIC","fareFamilyDesc":"정상운임"}]}]';
				var segmentDatas		= JSON.parse(segmentDatasJSON);
				
				
				$("[name=divPassengerData]").each(function(idx, val) {
					var thisBirthDate	= $(this).find("[name=txtBirthDate]").val();
					var thisFirstName	= $(this).find("[name=txtFirstName]").val();
					var thisLastName	= $(this).find("[name=txtLastName]").val();
					var thisAge			= getAge(thisBirthDate, segmentDatas[0].departureDateTime.substring(0,8));
					
					
					if(thisAge < 16) {
						if($(this).find(".parentInfoClass").css("display") == "none") {
							$(this).find(".parentInfoClass .tb_top_name").text(thisLastName.toUpperCase() + " " + thisFirstName.toUpperCase());
							$(this).find(".parentInfoClass").css("display","block");
							euTypeCheck = false;
						}
					} else {
						$(this).find(".parentInfoClass").css("display","none");
					}
				});
				
				if(!euTypeCheck) {
					alert('만 16세 미만의 아동은 개인정보와 관련하여 친권자의 동의가 필요합니다.'); 
					$("table.parentInfoClass:visible:eq(0) input[name=txtBirthDateParent]").focus();
					return false;
				}
				
				
				var parentData = new Array();
				var parentDataEach;
				$("table.parentInfoClass:visible").each(function(idx) {
					var $this_txtBirthDateParent	= $(this).find("[name=txtBirthDateParent]");
					var $this_txtLastNameParent		= $(this).find("[name=txtLastNameParent]");
					var $this_txtFirstNameParent	= $(this).find("[name=txtFirstNameParent]");
					var $this_confirmCheck			= $(this).parent().find("[name=confirmParentInfo]");
					var $this_h4_text				= $(this).attr("typeCode").trim();	
					
					if(!$this_txtBirthDateParent.val()) {
						alert("친권자의 생년월일을 입력해 주세요");	
						$this_txtBirthDateParent.focus();
						euTypeCheck	= false;
						return false;
					}
					
					if($this_txtBirthDateParent.val().length != 8) {
						alert("친권자의 생년월일을 8자로 입력해주세요");	
						$this_txtBirthDateParent.focus();
						euTypeCheck	= false;
						return false;
					}
					
					var thisAge				= getAge($this_txtBirthDateParent.val(), segmentDatas[0].departureDateTime.substring(0,8));
					if(thisAge < 19) {
						alert("친권자는 만 19세 이상일 경우에만 가능합니다. ");	
						$this_txtBirthDateParent.focus();
						euTypeCheck	= false;
						return false;
					}
					
					if(!$this_txtLastNameParent.val()) {
						alert("친권자의 성(영문)을 입력해주세요");	
						$this_txtLastNameParent.focus();
						euTypeCheck	= false;
						return false;
					}
					
					if(!(/^[\sA-Za-z가-힣+]*$/).test($this_txtLastNameParent.val())) {
						alert("특수기호/숫자를 빼고 입력해주십시오.");		
						$this_txtLastNameParent.focus();
						euTypeCheck	= false;
						return false;
					}
					
					if(/[가-힣]/.test($this_txtLastNameParent.val())) {
						alert("영문을 입력해주십시오.");		
						$this_txtLastNameParent.focus();
						euTypeCheck	= false;
						return false;
					}
					
					if(!$this_txtFirstNameParent.val()) {
						alert("친권자의 이름을 입력해주세요");	
						$this_txtFirstNameParent.focus();
						euTypeCheck	= false;
						return false;
					}
					
					if(!(/^[\sA-Za-z가-힣+]*$/).test($this_txtFirstNameParent.val())) {
						alert("특수기호/숫자를 빼고 입력해주십시오.");		
						$this_txtFirstNameParent.focus();
						euTypeCheck	= false;
						return false;
					}
					
					if(/[가-힣]/.test($this_txtFirstNameParent.val())) {
						alert("영문을 입력해주십시오.");		
						$this_txtFirstNameParent.focus();
						euTypeCheck	= false;
						return false;
					}
					
					if(!$this_confirmCheck.prop("checked")) {
						alert("만 16세미만 아동의 친권자 및 정보제공에 동의해주세요.");	
						$this_confirmCheck.focus();
						euTypeCheck	= false;
						return false;
					}
					
					
					parentDataEach = new Object();
					parentDataEach.TypeName		= $this_h4_text;
					parentDataEach.BirthDate	= $this_txtBirthDateParent.val();
					parentDataEach.LastName		= $this_txtLastNameParent.val();
					parentDataEach.FirstName	= $this_txtFirstNameParent.val();
					parentData.push(parentDataEach);
				});
				
				if(euTypeCheck) {
					$("#parentData").val(JSON.stringify(parentData));
				}
				return euTypeCheck;
			}
			
			
			var checkBotCaptcha = function checkBotCaptcha(){
				var isCnCaptcha = true;
				if($("#div_cnCaptcha").css("display") == "block"){
					var botdetectValue	= $("#cnCaptchaCode").val();
					if(typeof(botdetectValue) == 'undefined' || botdetectValue == "") {
						alert("보안을 위해 아래 캡차 인증을 진행 해 주시기 바랍니다."); 
						return true;
					}else{
						$.ajax({
							url			: 'CheckBotDetectCaptcha.do',
							type		: 'POST',
							dataType	: 'json',
							data		: {
								checkType                    : "CONFIRM",
								captchaCode					 : botdetectValue,
								BDC_BackWorkaround_cnCaptcha : $("#BDC_BackWorkaround_cnCaptcha").val(),
								BDC_VCID_cnCaptcha			 : $("#BDC_VCID_cnCaptcha").val(),
								sessionUniqueKey	         : "fed5a168-d901-4d82-f626-a75346f7ce44"
							},
							async : false,
				 			beforeSend	: function() { loadingOpen('entire', 'booking'); },
							success		: function(data) {
								loadingClose('entire');
								var isSuccess = data.isSuccess;

								if(isSuccess){
									isCnCaptcha = false;
								}else{
									$("#cnCaptchaCode").get(0).Captcha.ReloadImage();
									$("#cnCaptchaCode").val("");
									isCnCaptcha = true;
								}
							},
							error : function(data){
								alert(JSON.parse(data.responseText).exceptionInfo.message);
								loadingClose('entire');
								isCnCaptcha = true;
							}
						});
					}
				}else{

					$.ajax({
						url			: 'CheckBotDetectCaptcha.do',
						type		: 'POST',
						dataType	: 'json',
						data		: {
							checkType        : "SHOW",
							contact_email    : $("#txtSendEmail").val(),
							passenger_name	 : $("#txtLastName1").val()+$("#txtFirstName1").val(),
							passenger_count	 : "1",
							sessionUniqueKey : "fed5a168-d901-4d82-f626-a75346f7ce44"
						},
						async : false,
			 			beforeSend	: function() { loadingOpen('entire', 'booking'); },
						success		: function(data) {
							loadingClose('entire');
							var isShow = data.isShow;
							var isBlock = data.isBlock;

							if(isBlock){
								isCnCaptcha = true;
								alert("이용에 불편을 드려 죄송합니다."); 
							}else{
								if(isShow){
									$("#cnCaptchaCode").get(0).Captcha.ReloadImage();
									$("#div_cnCaptcha").show();
									isCnCaptcha = true;	
								}else{
									isCnCaptcha = false;
								}
							}
							
						},
						error : function(data){
							alert(JSON.parse(data.responseText).exceptionInfo.message);
							loadingClose('entire');
							isCnCaptcha = true;
						}
					});
				}

				return isCnCaptcha;
			}

			
			var getCalcAge = function getCalcAge(birth) {
				var date	= new Date();
				var year	= date.getFullYear();
				var month	= (date.getMonth() + 1);
				var day		= date.getDate();
				if (month < 10)	{
					month	= '0' + month;
				}
				if (day < 10) {
					day		= '0' + day;
				}
				var monthDay = month + day;

				birth = birth.replace('-', '').replace('-', '');
				var birth_year	= birth.substr(0, 4);
				var birth_md	= birth.substr(4, 4);

				var age = monthDay < birth_md ? year - birth_year - 1 : year - birth_year;

				return age;
			};

			
			var getRevenueInputPassenger = function getRevenueInputPassenger(actionPage) {
				jsPassengerConditionDatas[0].primaryPassenger = true;

				var liINFCnt = 0;
				$("[name=divPassengerData]").each(function(idx, val) {
					var $this								= $(this);
					var $this_passengerType					= $this.attr("passengerType");
					var $this_hidGender						= $this.find("[name=hidGender]");
					var $this_txtLastName					= $this.find("[name=txtLastName]");
					var $this_txtFirstName					= $this.find("[name=txtFirstName]");
					var $this_txtBirthDate					= $this.find("[name=txtBirthDate]");
					var $this_selAirline					= $this.find("[name=selAirline]").eq(3);
					var $this_txtFfpNumber					= $this.find("[name=txtFfpNumber]");
					var $this_selPTCCode_Dep_selected;
					var $this_selPTCCode_Arr_selected;
					var $this_selPTCCode_Dep_selected_text;
					var $this_selPTCCode_Arr_selected_text;

					if(domIntType == 'D') {
						$this_selPTCCode_Dep_selected		= $this.find("[name=selPTCCode_Dep] option:selected");
						$this_selPTCCode_Arr_selected		= $this.find("[name=selPTCCode_Arr] option:selected");
						$this_selPTCCode_Dep_selected_text	= "";
						$this_selPTCCode_Arr_selected_text	= "";
						if($this_selPTCCode_Dep_selected.val()) {
							$this_selPTCCode_Dep_selected_text	= $this_selPTCCode_Dep_selected.text().trim();
						}
						if($this_selPTCCode_Arr_selected.val()) {
							$this_selPTCCode_Arr_selected_text	= $this_selPTCCode_Arr_selected.text().trim();
						}
					}

					var $this_chkSaveInfo					= $this.find("[name=chkSaveInfo]");

					jsPassengerConditionDatas[idx].passengerNo		= (idx + 1);
					jsPassengerConditionDatas[idx].gender			= getNullToDefault($this_hidGender.val(),							"").toUpperCase();

					jsPassengerConditionDatas[idx].koreanLastName	= "";
					jsPassengerConditionDatas[idx].koreanFirstName	= "";
					jsPassengerConditionDatas[idx].lastName			= "";
					jsPassengerConditionDatas[idx].firstName		= "";

					if(domIntType == 'D') {
						var _depRate = Number($this_selPTCCode_Dep_selected.attr("ptcRate")),
							_arrRate = Number($this_selPTCCode_Arr_selected.attr("ptcRate"));

						if(_depRate < 10) {
							_depRate = '0'+String(_depRate);
						}

						if(_arrRate < 10) {
							_arrRate = '0'+String(_arrRate);
						}
						
						var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;  
		
						var krLastName = $this_txtLastName.val();
						var krFirstName = $this_txtFirstName.val();
						
						if(pattern_kor.test(krLastName) && pattern_kor.test(krFirstName)) {
							krLastName	= getNullToDefault(krLastName.replace(/ /gi, ''),	"");
							krFirstName	= getNullToDefault(krFirstName.replace(/ /gi, ''),	"");
						}

						jsPassengerConditionDatas[idx].koreanLastName	= getNullToDefault(krLastName.replace(/  +/g, ' '),				"");
						jsPassengerConditionDatas[idx].koreanFirstName	= getNullToDefault(krFirstName.replace(/  +/g, ' '),			"");
						jsPassengerConditionDatas[idx].departurePTCCode	= getNullToDefault($this_selPTCCode_Dep_selected.attr("ptcCode") + _depRate,	"");
						jsPassengerConditionDatas[idx].arrivalPTCCode	= getNullToDefault($this_selPTCCode_Arr_selected.attr("ptcCode") + _arrRate,	"");
						jsPassengerConditionDatas[idx].departurePTCDesc	= getNullToDefault($this_selPTCCode_Dep_selected_text,				"");
						jsPassengerConditionDatas[idx].departurePTCRate	= getNullToDefault(_depRate,	"");
						jsPassengerConditionDatas[idx].arrivalPTCDesc	= getNullToDefault($this_selPTCCode_Arr_selected_text,				"");
						jsPassengerConditionDatas[idx].arrivalPTCRate	= getNullToDefault(_arrRate,	"");
					}else {
						jsPassengerConditionDatas[idx].lastName			= getNullToDefault($this_txtLastName.val().replace(/  +/g, ' '),     "").toUpperCase();
						jsPassengerConditionDatas[idx].firstName		= getNullToDefault($this_txtFirstName.val().replace(/  +/g, ' '),	  "").toUpperCase();
					}

					jsPassengerConditionDatas[idx].birthDate		= getNullToDefault($this_txtBirthDate.val(),						"");

					var $this_txtFfpNumber_value					= getNullToDefault($this_txtFfpNumber.val(),						"");
					if($this_txtFfpNumber_value != "") {
						jsPassengerConditionDatas[idx].carrierCode	= getNullToDefault($this_selAirline.val(),							"").toUpperCase();
						jsPassengerConditionDatas[idx].ffpNo		= $this_txtFfpNumber_value;
					}

					jsPassengerConditionDatas[idx].savePassenger	= getNullToDefault($this_chkSaveInfo.prop("checked"),				false);

					jsPassengerConditionDatas[idx].hasInfant		= false;

					if($this_passengerType.toUpperCase() == "INF") {
						liINFCnt++;
					}
				});

				
				var copyDatas	= [];
				copyDatas		= jsPassengerConditionDatas;
				$.each(jsPassengerConditionDatas, function(jdx, j_val) {
					var $this	= $(this);
					if(j_val.passengerType == "ADT" && !j_val.hasInfant) {
						for(var j = 0; j < copyDatas.length; j++) {
							if(copyDatas[j].passengerType == "INF" && liINFCnt > 0 && !copyDatas[j].hasInfant) {
								j_val.hasInfant			= true;
								j_val.infantPassengerNo	= (j + 1);
								copyDatas[j].hasInfant	= true;

								liINFCnt--;

								break;
							}
						}
					}
				});

				var email				= document.getElementById("txtSendEmail").value;
				var phoneNo				= document.getElementById("txtSendSMS0").getAttribute("countryNo") + "-" + document.getElementById("txtSendSMS1").value;
				var isEmailPushAgree	= document.getElementById("chkAgreeSendEmail").checked;
				var isSmsPushAgree 		= false;
				
				isSmsPushAgree			= document.getElementById("chkAgreeSendSMS").checked;
				
				var jsArrContactDatas	= [];
				var jsObjContactData	= {};

				jsObjContactData.phoneType				= 'M1';					
				jsObjContactData.phoneNo				= phoneNo;
				jsObjContactData.smsPushAgree			= isSmsPushAgree;
				jsArrContactDatas.push(jsObjContactData);

				jsObjContactData						= {};
				jsObjContactData.phoneType				= 'H1';					
				jsObjContactData.phoneNo				= phoneNo;
				jsObjContactData.smsPushAgree			= isSmsPushAgree;
				jsArrContactDatas.push(jsObjContactData);

				jsObjContactData						= {};
				jsObjContactData.phoneType				= 'E1';					
				jsObjContactData.email					= email;
				jsObjContactData.emailPushAgree			= isEmailPushAgree;
				jsArrContactDatas.push(jsObjContactData);

				jsTmpBookConditionDatas.contactDatas	= jsArrContactDatas;

				$("#bookConditionData").val(JSON.stringify(jsTmpBookConditionDatas));

				if(!notifyXSSMessage({
					email : jsTmpBookConditionDatas.contactDatas[2].email
					})){
					alert(jsJSON.J3001); //보안 정책상 다른 이메일 주소를 입력하여 예약 진행 하여 주시기 바랍니다
					return false
				}
				
		
				for(var i=0; i<jsTmpBookConditionDatas.passengerConditionDatas.length; i++){
					if(!notifyXSSMessage({
						firstName : jsTmpBookConditionDatas.passengerConditionDatas[i].firstName,
						lastName : jsTmpBookConditionDatas.passengerConditionDatas[i].lastName
						})){
						alert(jsJSON.J3002); //입력한 이름을 확인 해 주십시오
						return false
					}
				}

				makePNR(actionPage);
			};

			
			var makePNR = function makePNR(actionPage) {
				$.ajax({
					url			: './RevenuePrepareBooking.do',
					type		: 'POST',
					dataType	: 'json',
					data		: {
						bookConditionData	: JSON.stringify(jsTmpBookConditionDatas),
						sessionUniqueKey	: $("#sessionUniqueKey").val(),
						parentData			: $("#parentData").val(),
						noLoginPassword		: $("#txtNoLoginPassword").val(),
						noLoginPassword2	: $("#txtNoLoginPassword2").val()
					},
		 			beforeSend	: function() { loadingOpen('entire', 'booking'); },
					success		: function(data) {
						if(typeof data.errorCode != "undefined") {
							alert(data.errorMessage);
							if(bookConditionData.salesType == 'ACT'){
								$('#inputPassengerForm').attr({
									'onsubmit'	: 'return true',
									'action'	: 'ACTRegistTravel.do'
								}).submit();
							}else{
								$('#inputPassengerForm').attr({
									'onsubmit'	: 'return true',
									'action'	: 'RevenueRegistTravel.do'
								}).submit();
							}
						} else {
							$('#inputPassengerForm').attr({
								'onsubmit'	: 'return true',
								'action'	: actionPage
							}).submit();
						}
					},
					error : function(data){
						alert(JSON.parse(data.responseText).exceptionInfo.message);
						
						
						if(bookConditionData.salesType == 'ACT'){
							$('#inputPassengerForm').attr({
								'onsubmit'	: 'return true',
								'action'	: 'ACTRegistTravel.do'
							}).submit();
						}else{
							$('#inputPassengerForm').attr({
								'onsubmit'	: 'return true',
								'action'	: 'RevenueRegistTravel.do'
							}).submit();
						}
					}
				});
			};

			// 탑승자정보 테이블 토글
			$('.title_wrap_type1').each(function(){
				var btn_arrow_toggle = $(this).find('.btn_arrow_toggle');
				btn_arrow_toggle.on('click', function(){
					var tblBox = $(this).parent('.right').parent('.title_wrap_type1').next('table');
					if (tblBox.length == 0) {
						tblBox = $(this).parent('.right').parent('.title_wrap_type1').next('.table_form_wrap');
					}//171121 추가 lyr
					if (tblBox.css("display") == "none"){
						tblBox.show();
						btn_arrow_toggle.addClass('on');
						$(this).text("내용 접기"); 
					} else {
						tblBox.hide();
						btn_arrow_toggle.removeClass('on');
						$(this).text("내용 펼치기"); 

					}
				});
			});

			
			function checkPasswordValidation(password1, password2) {
				var textMobileNumber		= $("#txtSendSMS1").val().substr(-4,4);
				var textBirthdayEachStat	= false;
				
				$(".txt_error_Msg.txt1").text("");
				$(".txt_error_Msg.txt2").text("");

				$("input[name^=txtBirthDate]").each(function() {
					var textBirthday	= $(this).val().substr(-4,4);
					if(textBirthday && textBirthday == password1.val()) {
						textBirthdayEachStat	= true;
						return false;
					}
				});

				if(!password1.val()) {
					alert('비밀번호를 입력하세요.');	
					$(".txt_error_Msg.txt1").text("비밀번호를 입력하세요.");
					password1.focus();
					return false;
				}
				if(password1.val().length < 4) {
					alert('숫자 4자리를 입력해 주십시오.');	
					$(".txt_error_Msg.txt1").text("숫자 4자리를 입력해 주십시오.");
					password1.focus();
					return false;
				}
				if(isEqualNum(password1.val())) {
					alert('반복된 숫자(예시.1111)는 사용이 불가합니다.');	
					$(".txt_error_Msg.txt1").text("반복된 숫자(예시.1111)는 사용이 불가합니다.");
					password1.focus();
					return false;
				}
				if(isContinueNum(password1.val())) {
					alert('연속 번호(예시.1234 or 1112 ) 는 사용이 불가합니다.');	
					$(".txt_error_Msg.txt1").text("연속 번호(예시.1234 or 1112 ) 는 사용이 불가합니다.");
					password1.focus();
					return false;
				}
				if(isBackContinueNum(password1.val())) {
					alert('연속 번호(예시.4321 or 1112) 는 사용이 불가합니다.');	
					$(".txt_error_Msg.txt1").text("연속 번호(예시.4321 or 1112) 는 사용이 불가합니다.");
					password1.focus();
					return false;
				}
				if(textBirthdayEachStat) {
					alert('생년월일은 사용이 불가합니다.');	
					$(".txt_error_Msg.txt1").text("생년월일은 사용이 불가합니다.");
					password1.focus();
					return false;
				}
				if(textMobileNumber && textMobileNumber == password1.val()) {
					alert('휴대 전화번호 (마지막 4자리)는  사용이 불가합니다.');	
					$(".txt_error_Msg.txt1").text("휴대 전화번호 (마지막 4자리)는  사용이 불가합니다.");
					password1.focus();
					return false;
				}
				if(!password2.val()) {
					alert('비밀번호 확인을 입력하세요.');	
					$(".txt_error_Msg.txt2").text("비밀번호 확인을 입력하세요.");
					password2.focus();
					return false;
				}
				if(password2.val() !== password1.val()) {
					alert('입력하신 비밀번호와 일치하지 않습니다.');	
					$(".txt_error_Msg.txt2").text("입력하신 비밀번호와 일치하지 않습니다.");
					password2.focus();
					return false;
				}

				return true;
			}
		</script>

	<script type="text/javascript">var _cf = _cf || []; _cf.push(['_setFsp', true]); _cf.push(['_setBm', true]); _cf.push(['_setAu', '/public/f67fc9d121576a410e665f8135125']);</script>
	<script type="text/javascript"
		src="/public/f67fc9d121576a410e665f8135125"></script>
	<script type="text/javascript" src="/wlo/wl6.js"></script>
	<script type="text/javascript" id="">(function(){var n=18E5,f="_dataLayerHistory",k=!0,l=window[f].push,m=function(){for(var a=[],b=0,c=window[f].length-1;b<c;b++)a.push(window[f][b]);return a},g=function(a){if(!a||"object"!==typeof a||a.nodeType||a===a.window)return!1;try{if(a.constructor&&!a.hasOwnProperty("constructor")&&!a.constructor.prototype.hasOwnProperty("isPrototypeOf"))return!1}catch(c){return!1}for(var b in a);return void 0===b||a.hasOwnProperty(b)},h=function(a,b){for(var c in a)if(a.hasOwnProperty(c)){var e=a[c];Array.isArray(e)?
(Array.isArray(b[c])||(b[c]=[]),h(e,b[c])):g(e)?(g(b[c])||(b[c]={}),h(e,b[c])):b[c]=e}};window[f].push=function(){try{window._dataLayerHistory=JSON.parse(window.localStorage.getItem("_dataLayerHistory")||'{"timeout": null, "history": [], "model": {}}');var a=(new Date).getTime(),b=[].slice.call(arguments,0),c=l.apply(window[f],b),e=window[f],d=window._dataLayerHistory,g=window.google_tag_manager[google_tag_manager["GTM-57TCD7W"].macro(3)].dataLayer.get({split:function(){return[]}});d.reset=function(){d.timeout=null;d.history=
m();d.model={};h(g,d.model);window.localStorage.setItem("_dataLayerHistory",JSON.stringify(d))};d.model.get=function(a){var b=d.model;a=a.split(".");for(var c=0;c<a.length;c++){if(void 0===b[a[c]])return;b=b[a[c]]}return b};k&&(d.history=d.history.concat(m()),k=!1);d.hasOwnProperty("timeout")&&d.timeout<a&&d.reset();d.history.push(e[e.length-1]);h(g,d.model);d.timeout=a+n;window.localStorage.setItem("_dataLayerHistory",JSON.stringify(d));return c}catch(p){return console.log("Problem interacting with dataLayer history: "+
p),b=[].slice.call(arguments,0),c=l.apply(window[f],b)}}})();</script>
	<img src="//code.nytive.com/track/85976.gif" width="1" height="1">
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","382397459053382");fbq("set","agent","tmgoogletagmanager","382397459053382");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=382397459053382&amp;ev=PageView&amp;noscript=1">
	</noscript>
</body>
</html>