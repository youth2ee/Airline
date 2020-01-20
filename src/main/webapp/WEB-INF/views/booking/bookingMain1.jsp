<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colrolib Templates">
    <meta name="author" content="Colrolib">
    <meta name="keywords" content="Colrolib Templates">

	<c:import url="../template/boot.jsp"></c:import>
    <!-- Title Page-->
    <title>Au Form Wizard</title>
	
    <!-- Icons font CSS-->
    <link href="../resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- .../resources/vendor CSS-->
    <link href="../resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../resources/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="../resources/vendor/booking.css">

    <!-- Main CSS-->
    <link href="../resources/vendor/css/main.css" rel="stylesheet" media="all">
    
</head>

<body>
     <div class="page-wrapper bg-img-1 p-t-200 p-b-120"> 
        <div class="wrapper wrapper--w900">
            <div class="card card-4">
                <div class="card-body" id = "body">
                    <ul class="tab-list">
                        <li class="tab-list__item active">
                            <a class="tab-list__link" href="#tab1" data-toggle="tab">flight</a>
                        </li>
                        <li class="tab-list__item"><a class="tab-list__link" href="#tab2" data-toggle="tab">car</a>
                        </li>
                        <li class="tab-list__item">
                            <a class="tab-list__link" href="#tab3" data-toggle="tab">flight</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab1">
                            <form method="POST" action="bookingMain1">
                            	
                            	<div class="radio-row" style="margin-bottom: 20px;">
                                    <label class="radio-container m-r-45">편도
                                        <input type="radio" name="kind" value="1" checked="checked" id=eachWay>
                                        <span class="radio-checkmark"></span>
                                    </label> 
                                    <label class="radio-container m-r-45">왕복
                                        <input type="radio" name="kind" value ="2">
                                        <span class="radio-checkmark"></span>
                                    </label>                                
                                </div>
                            	
                            
                                <div class="input-group mid">
                                    <label class="label">출발지:</label>
                                    <input class="input--style-1" type="text" name="depLoc" placeholder="City, region or airport" required="required">
                                   <a href="#"><i class="zmdi zmdi-search input-group-symbol"></i></a>
                                </div>
                                
                                  <div class="input-group mid">
                                    <label class="label">도착지:</label>
                                    <input class="input--style-1" type="text" name="arrLoc" placeholder="City, region or airport" required="required">
                                   <a href="#"><i class="zmdi zmdi-search input-group-symbol"></i></a> 
                                </div>
                                                      
                                
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                            <label class="label">Departing:</label>
                                            <input class="input--style-1" type="text" name="depDate" placeholder="mm/dd/yyyy" id="input-start">
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group arrDate">
                                            <label class="label">Returning:</label>
                                            <input class="input--style-1" type="text" name="arrDate" placeholder="mm/dd/yyyy" id="input-end">
                                        </div>
                                    </div>
                                </div>
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                            <label class="label">travellers:</label>
                                            <div class="input-group-icon" id="js-select-special">
                                                <input class="input--style-1 input--style-1-small" type="text" name="traveller" value="1 Adult, 0 Children" disabled="disabled" id="info">
                                                <i class="zmdi zmdi-chevron-down input-icon"></i>
                                            </div>
                                            <div class="dropdown-select">
                                                <ul class="list-room">
                                                    <li class="list-room__item">
                                                     
                                                        <ul class="list-person">
                                                            <li class="list-person__item">
                                                                <span class="name">Adults</span>
                                                                <div class="quantity quantity1">
                                                                    <span class="minus">-</span>
                                                                    <input class="inputQty" type="number" min="0" value="1" name = "aldults">
                                                                    <span class="plus">+</span>
                                                                </div>
                                                            </li>
                                                            <li class="list-person__item">
                                                                <span class="name">Children</span>
                                                                <div class="quantity quantity2">
                                                                    <span class="minus">-</span>
                                                                    <input class="inputQty" type="number" min="0" value="0" name = "children">
                                                                    <span class="plus">+</span>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                                <div class="list-room__footer">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <button class="btn-submit" type="submit">search</button>
                                    </div>
                                </div>
                            </form>
                        </div>             
                    </div>
                </div>
            </div>
        </div>
 </div> 

    <!-- Jquery JS-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<!-- .../resources/vendor JS-->
    <script src="../resources/vendor/select2/select2.min.js"></script>
    <script src="../resources/vendor/jquery-validate/jquery.validate.min.js"></script>
    <script src="../resources/vendor/bootstrap-wizard/bootstrap.min.js"></script>
    <script src="../resources/vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
    <script src="../resources/vendor/datepicker/moment.min.js"></script>
    <script src="../resources/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="../resources/vendor/js/global.js"></script>

<script type="text/javascript">

	var depLoc = $("#depLoc option:selected").val();

	$('#b').click(function(){
			alert(depLoc);
	});


	
	document.getElementById('eachWay').readOnly= true;

$('input:radio[name=class]').click(function(){
	if($('input:radio[id=round]').is(":checked")){
		document.getElementById('eachWay').readOnly = false;

		}else{
			document.getElementById('eachWay').readOnly = true;			

		}
});

</script>


</body>

</html>
<!-- end document-->