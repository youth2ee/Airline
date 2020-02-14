<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

 <title>AIRLINE ADMIN</title>
  <c:import url="../template/boot.jsp"></c:import>
  <link href="../resources/css/reset.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/css/sb-admin-2.min.css" rel="stylesheet">
  
     <link href="../resources/css/admin/admin1_1.css" rel="stylesheet">
</head>


<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}">
        <div class="sidebar-brand-icon rotate-n-15">
        </div>
        <div class="sidebar-brand-text mx-3">Every Air</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/adminmain">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span class="active">ADMIN PAGE</span></a>
      </li>
      
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      SALES
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          <i class="fas fa-fw fa-cog"></i>
          <span>매출 관리</span>
        </a>
        <div id="collapseThree" class="collapse show" aria-labelledby="headingThree" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">SALES MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin1_1">항공사별 매출 관리</a>
            <a class="collapse-item active" href="${pageContext.request.contextPath}/admin/admin1_2">공항별 매출 관리</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin1_3">회원별 매출 관리</a>
          </div>
        </div>
      </li>
      
      

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      FLIGHT
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>항공편 관리</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">FLIGHT MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin2_1">항공사별 항공편 관리</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin2_2">공항별 항공편 관리</a>
          </div>
        </div>
      </li>
      
      
            <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      RESERVATION
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseseven" aria-expanded="true" aria-controls="collapseseven">
          <i class="fas fa-fw fa-cog"></i>
          <span>항공 예약 관리</span>
        </a>
        <div id="collapseseven" class="collapse" aria-labelledby="headingseven" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">RESERVATION MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin3_1">예약 관리</a>
            <%-- <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_cinemaList"></a> --%>
          </div>
        </div>
      </li>



      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      SERVICE CENTER
      </div>
      
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsefour" aria-expanded="true" aria-controls="collapsefour">
         <i class="fas fa-fw fa-cog"></i>
          <span>고객센터 관리</span>
        </a>
        
        <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">SC MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin4_1">고객센터 관리</a>
          </div>
        </div>
      </li>

      
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      PARKING
      </div>
      
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsefive" aria-expanded="true" aria-controls="collapsefive">
          <i class="fas fa-fw fa-cog"></i>
          <span>주차장 관리</span>
        </a>
        
        <div id="collapsefive" class="collapse" aria-labelledby="headingfive" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">PARKING MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin5_1">공항별 주차 현황</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin5_2">예약 주차장 현황</a>
          </div>
        </div>
      </li>
      
            <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      LIMOUSINE
      </div>
      
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseone" aria-expanded="true" aria-controls="collapseone">
          <i class="fas fa-fw fa-cog"></i>
          <span>리무진 관리</span>
        </a>
        
        <div id="collapseone" class="collapse" aria-labelledby="headingone" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">LIMOUSINE MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin6_1">공항별 예약 현황</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin6_2">회원별 리무진 예약 현황</a>
          </div>
        </div>
      </li>
      
            <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      MEMBER
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-cog"></i>
          <span>회원 관리</span>
        </a>
        
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">MEMBER MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin7_1">회원 관리</a>
          </div>
        </div>
      </li>
      
      
      <!-- 메뉴끝 -->

      
      
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>



          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>



            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${member.id}님 환영합니다.</span>
               <img alt="" src="${pageContext.request.contextPath}/resources/images/home/CGV_BI.png" style="width: 80px;">
                <!-- <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60"> -->
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">매출 관리</h1>
          <p class="mb-4">항공사별 매출 관리</p>
          
          <c:forEach items="${alist}" var="an">
 		   <div class="abtn">${an.apName}</div>
          </c:forEach> 
     
     <div style="clear: both;"></div>
          
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4 dbt">
            
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">항공사별 매출 현황</h6>
            </div>
            
            
            <div class="card-body">
					
			<div class="row">		
			<div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4" style="width: 1596px;">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" style="width: 1594px;">
                  <h6 class="m-0 font-weight-bold text-primary">항공사별 2월 매출 (2020년 2월 기준)</h6>
          
                </div>
                <!-- Card Body -->
                <div class="card-body" style="width: 1583px;">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                </div>
              </div>
            </div>
            
            
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4" style="width: 1596px;">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" style="width: 1594px;">
                  <h6 class="m-0 font-weight-bold text-primary">항공사별 이번주 매출 (2020월 02월 11일 ~ 2020년 02월 17일 기준)</h6>
          
                </div>
                <!-- Card Body -->
                <div class="card-body" style="width: 1583px;">
                  <div class="chart-area">
                    <canvas id="myAreaChart2"></canvas>
                  </div>
                </div>
              </div>
            </div>
            
            
            
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4" style="width: 1596px;">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" style="width: 1594px;">
                  <h6 class="m-0 font-weight-bold text-primary">항공사별 오늘 매출 (2020년 02월 17일 기준)</h6>
          
                </div>
                <!-- Card Body -->
                <div class="card-body" style="width: 1583px;">
                  <div class="chart-area">
                    <canvas id="myAreaChart3"></canvas>
                  </div>
                </div>
              </div>
            </div>
            
            
            
            
		</div>	

            </div> <!-- card-body -->
            
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>2020 EVERYAIR</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/resources/vendor/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="${pageContext.request.contextPath}/resources/vendor/js/demo/datatables-demo.js"></script>


	  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>


<script type="text/javascript">

$('body').on ('click','.abtn',function(){

	$.ajax({
		data : {
			airlineNm : $(this).text()
		},
		type : "GET",
		url : "./admin/admin1_2_layout",
		success : function(data) {

			$('.dbt').html(data);

		}
	});
	
});


//Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function number_format(number, decimals, dec_point, thousands_sep) {
  // *     example: number_format(1234.56, 2, ',', ' ');
  // *     return: '1 234,56'
  number = (number + '').replace(',', '').replace(' ', '');
  var n = !isFinite(+number) ? 0 : +number,
    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
    s = '',
    toFixedFix = function(n, prec) {
      var k = Math.pow(10, prec);
      return '' + Math.round(n * k) / k;
    };
  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
  if (s[0].length > 3) {
    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
  }
  if ((s[1] || '').length < prec) {
    s[1] = s[1] || '';
    s[1] += new Array(prec - s[1].length + 1).join('0');
  }
  return s.join(dec);
}

//Area Chart Example
var ctx = document.getElementById("myAreaChart");

var an1 ='';
var an2 ='';
var an3 ='';
var an4 ='';
var an5 ='';
var an6 ='';
var an7 ='';
var an8 ='';
var an9 ='';
var an10 ='';
var an11 ='';
var an12 ='';
var an13 ='';
var an14 ='';
var an15 ='';

var pn1 ='';
var pn2 ='';
var pn3 ='';
var pn4 ='';
var pn5 ='';
var pn6 ='';
var pn7 ='';
var pn8 ='';
var pn9 ='';
var pn10 ='';
var pn11 ='';
var pn12 ='';
var pn13 ='';
var pn14 ='';
var pn15 ='';


<c:forEach items="${smlist}" var="m" varStatus="status">
an${status.index +1} = '${m.airlineNm}';
pn${status.index +1} = '${m.arrPlandTime}';
</c:forEach> 



var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: [an1, an2, an3, an4, an5, an6, an7, an8, an9, an10, an11, an12, an13, an14, an15],
    datasets: [{
      label: "판매량",
      lineTension: 0.3,
      backgroundColor: "rgba(214, 8, 21, 0.05)",
      borderColor: "rgba(214, 8, 21, 1)",
      pointRadius: 3,
      pointBackgroundColor: "rgba(214, 8, 21, 1)",
      pointBorderColor: "rgba(214, 8, 21, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(214, 8, 21, 1)",
      pointHoverBorderColor: "rgba(214, 8, 21, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: [pn1, pn2, pn3, pn4, pn5, pn6, pn7, pn8, pn9, pn10, pn11, pn12, pn13, pn14, pn15],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 15
        }
      }],
      yAxes: [{
        ticks: {
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return number_format(value)+'원';
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': ' + number_format(tooltipItem.yLabel) + '원';
        }
      }
    }
  }
});


//Area Chart Example
var ctx2 = document.getElementById("myAreaChart2");

var an1 ='';
var an2 ='';
var an3 ='';
var an4 ='';
var an5 ='';
var an6 ='';
var an7 ='';
var an8 ='';
var an9 ='';
var an10 ='';
var an11 ='';
var an12 ='';
var an13 ='';
var an14 ='';
var an15 ='';


var pn1 ='';
var pn2 ='';
var pn3 ='';
var pn4 ='';
var pn5 ='';
var pn6 ='';
var pn7 ='';
var pn8 ='';
var pn9 ='';
var pn10 ='';
var pn11 ='';
var pn12 ='';
var pn13 ='';
var pn14 ='';
var pn15 ='';


<c:forEach items="${swlist}" var="m" varStatus="status">
an${status.index +1} = '${m.airlineNm}';
pn${status.index +1} = '${m.arrPlandTime}';
</c:forEach> 



var myLineChart = new Chart(ctx2, {
  type: 'line',
  data: {
	    labels: [an1, an2, an3, an4, an5, an6, an7, an8, an9, an10, an11, an12, an13, an14, an15],
	    datasets: [{
	      label: "판매량",
	      lineTension: 0.3,
	      backgroundColor: "rgba(214, 8, 21, 0.05)",
	      borderColor: "rgba(214, 8, 21, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(214, 8, 21, 1)",
	      pointBorderColor: "rgba(214, 8, 21, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(214, 8, 21, 1)",
	      pointHoverBorderColor: "rgba(214, 8, 21, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: [pn1, pn2, pn3, pn4, pn5, pn6, pn7, pn8, pn9, pn10, pn11, pn12, pn13, pn14, pn15],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 15
        }
      }],
      yAxes: [{
        ticks: {
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return number_format(value)+'원';
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': ' + number_format(tooltipItem.yLabel) + '원';
        }
      }
    }
  }
});


//
//Area Chart Example
var ctx3 = document.getElementById("myAreaChart3");

var an1 ='';
var an2 ='';
var an3 ='';
var an4 ='';
var an5 ='';
var an6 ='';
var an7 ='';
var an8 ='';
var an9 ='';
var an10 ='';
var an11 ='';
var an12 ='';
var an13 ='';
var an14 ='';
var an15 ='';


var pn1 ='';
var pn2 ='';
var pn3 ='';
var pn4 ='';
var pn5 ='';
var pn6 ='';
var pn7 ='';
var pn8 ='';
var pn9 ='';
var pn10 ='';
var pn11 ='';
var pn12 ='';
var pn13 ='';
var pn14 ='';
var pn15 ='';


<c:forEach items="${sdlist}" var="m" varStatus="status">
an${status.index +1} = '${m.airlineNm}';
pn${status.index +1} = '${m.arrPlandTime}';
</c:forEach> 



var myLineChart = new Chart(ctx3, {
  type: 'line',
  data: {
	    labels: [an1, an2, an3, an4, an5, an6, an7, an8, an9, an10, an11, an12, an13, an14, an15],
	    datasets: [{
	      label: "판매량",
	      lineTension: 0.3,
	      backgroundColor: "rgba(214, 8, 21, 0.05)",
	      borderColor: "rgba(214, 8, 21, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(214, 8, 21, 1)",
	      pointBorderColor: "rgba(214, 8, 21, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(214, 8, 21, 1)",
	      pointHoverBorderColor: "rgba(214, 8, 21, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: [pn1, pn2, pn3, pn4, pn5, pn6, pn7, pn8, pn9, pn10, pn11, pn12, pn13, pn14, pn15],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 15
        }
      }],
      yAxes: [{
        ticks: {
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return number_format(value)+'원';
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': ' + number_format(tooltipItem.yLabel) + '원';
        }
      }
    }
  }
});

</script>


</body>

</html>
