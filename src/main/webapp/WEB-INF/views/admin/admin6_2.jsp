<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.nav-tabs>li{
	width: 159px;
	text-align: center;
}
</style>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

 <title>AIRLINE ADMIN</title>
  <c:import url="../template/boot.jsp"></c:import>
  <link href="../resources/css/reset.css" rel="stylesheet">
  <link href="../resources/css/admin/admin6_2.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/css/sb-admin-2.min.css" rel="stylesheet">
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
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          <i class="fas fa-fw fa-cog"></i>
          <span>매출 관리</span>
        </a>
        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">SALES MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin1_1">항공사별 매출 관리</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin1_2">공항별 매출 관리</a>
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
        <a class="nav-link  collapsed" href="#" data-toggle="collapse" data-target="#collapsefour" aria-expanded="true" aria-controls="collapsefour">
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
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseone" aria-expanded="true" aria-controls="collapseone">
          <i class="fas fa-fw fa-cog"></i>
          <span>리무진 관리</span>
        </a>
        
        <div id="collapseone" class="collapse show" aria-labelledby="headingone" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">LIMOUSINE MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin6_1">회원별 리무진 예약 현황</a>
            <a class="collapse-item active" href="${pageContext.request.contextPath}/admin/admin6_2">공항별 예약 현황</a>
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
          <h1 class="h3 mb-2 text-gray-800">공항별 리무진버스 관리</h1>
          <p class="mb-4">공항별 리무진버스의 상세정보를 보여줍니다.</p>

          <!-- 전체 리무진 버스 내역 확인 -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">리무진버스 매출내역</h6>
            </div>
            <div class="card-body">

	          <div class="row">
	
	            <!-- Earnings (Monthly) Card Example -->
	            <div class="col-xl-3 col-md-6 mb-4">
	              <div class="card border-left-primary shadow h-100 py-2">
	                <div class="card-body">
	                  <div class="row no-gutters align-items-center">
	                    <div class="col mr-2">
	                      <div class="text-m font-weight-bold text-primary text-uppercase mb-1">티켓 판매액(2020년 2월 기준)</div>
	                      <div class="h5 mb-0 font-weight-bold text-gray-800">
	                      	<fmt:formatNumber type="currency" value="${SumTotal}"/>
	                      </div>
	                    </div>
	                    <div class="col-auto">
	                       <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	
	            <!-- Earnings (Monthly) Card Example -->
	            <div class="col-xl-3 col-md-6 mb-4">
	              <div class="card border-left-success shadow h-100 py-2">
	                <div class="card-body">
	                  <div class="row no-gutters align-items-center">
	                    <div class="col mr-2">
	                      <div class="text-m font-weight-bold text-success text-uppercase mb-1">리무진 버스 수</div>
	                      <div class="h5 mb-0 font-weight-bold text-gray-800">
	                      140개
	                      </div>
	                    </div>
	                    <div class="col-auto">
	                   	 <i class="fas fa-comments fa-2x text-gray-300"></i>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	
	            <!-- Earnings (Monthly) Card Example -->
	            <div class="col-xl-3 col-md-6 mb-4">
	              <div class="card border-left-info shadow h-100 py-2">
	                <div class="card-body">
	                  <div class="row no-gutters align-items-center">
	                    <div class="col mr-2">
	                      <div class="text-m font-weight-bold text-info text-uppercase mb-1">티켓 판매액(금일기준)</div>
	                      <div class="h5 mb-0 font-weight-bold text-gray-800">
	                      	<fmt:formatNumber type="currency" value="${limoTodaySum}" />
	                      </div>
	                    </div>
	                    <div class="col-auto">
	                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	
		            <!-- Pending Requests Card Example -->
		            <div class="col-xl-3 col-md-6 mb-4">
		              <div class="card border-left-warning shadow h-100 py-2">
		                <div class="card-body">
		                  <div class="row no-gutters align-items-center">
		                    <div class="col mr-2">
		                      <div class="text-m font-weight-bold text-warning text-uppercase mb-1">예매 인원(금일기준)</div>
		                      <div class="h5 mb-0 font-weight-bold text-gray-800">
		                      ${PersonSum}명
		                      </div>
		                    </div>
		                    <div class="col-auto">
		                      <i class="fas fa-comments fa-2x text-gray-300"></i>
		                    </div>
		                  </div>
		                </div>
		              </div>
		            </div>
	          </div>
              
            </div>
          </div>
          
          <!-- 공항별 리무진 버스 내역 확인 -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">공항별 리무진 버스 정보</h6>
            </div>
            <div class="card-header py-3">
            <div class="contain">
				<h4>공항별 리무진 매출내역</h4>
				<p>EVERYAIR의 국내 10개 공항에 대한 매출정보를 확인하실 수 있습니다.</p>
			
				<ul class="nav nav-tabs" style="margin-bottom: 20px;">
					<li class="active"><a data-toggle="tab" href="#menu0">인천공항</a></li>
			   		<li><a data-toggle="tab" href="#menu1">김포공항</a></li>
			   		<li><a data-toggle="tab" href="#menu2">양양공항</a></li>
			   		<li><a data-toggle="tab" href="#menu3">청주공항</a></li>
			   		<li><a data-toggle="tab" href="#menu4">대구공항</a></li>
			   		<li><a data-toggle="tab" href="#menu5">무안공항</a></li>
			   		<li><a data-toggle="tab" href="#menu6">여수공항</a></li>
			   		<li><a data-toggle="tab" href="#menu7">김해공항</a></li>
			   		<li><a data-toggle="tab" href="#menu8">울산공항</a></li>
			   		<li><a data-toggle="tab" href="#menu9">제주공항</a></li>
			  	</ul>
				
			  	<div class="tab-content">
				<c:forEach items="${limo}" var="limos" varStatus="li">
			    	<div id="menu${li.index}" class="tab-pane fade in active">
      					<div class="row">
				            <!-- Earnings (Monthly) Card Example -->
				            <div class="col-xl-3 col-md-6 mb-4">
				              <div class="card border-left-primary shadow h-100 py-2">
				                <div class="card-body">
				                  <div class="row no-gutters align-items-center">
				                    <div class="col mr-2">
				                      <div class="text-m font-weight-bold text-primary text-uppercase mb-1">티켓 판매액(2020년 2월 기준)</div>
				                      <div class="h5 mb-0 font-weight-bold text-gray-800">
				                      		<fmt:formatNumber type="currency" value="${limos}"/>
				                      </div>
				                    </div>
				                    <div class="col-auto">
				                       <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
				                    </div>
				                  </div>
				                </div>
				              </div>
				            </div>
				
				            <!-- Earnings (Monthly) Card Example -->
				            <div class="col-xl-3 col-md-6 mb-4">
				              <div class="card border-left-success shadow h-100 py-2">
				                <div class="card-body">
				                  <div class="row no-gutters align-items-center">
				                    <div class="col mr-2">
				                      <div class="text-m font-weight-bold text-success text-uppercase mb-1">리무진 버스 수</div>
				                      <div class="h5 mb-0 font-weight-bold text-gray-800">
				                      	14개
				                      </div>
				                    </div>
				                    <div class="col-auto">
				                   	 <i class="fas fa-comments fa-2x text-gray-300"></i>
				                    </div>
				                  </div>
				                </div>
				              </div>
				            </div>
				
				            <!-- Earnings (Monthly) Card Example -->
				            <div class="col-xl-3 col-md-6 mb-4">
				              <div class="card border-left-info shadow h-100 py-2">
				                <div class="card-body">
				                  <div class="row no-gutters align-items-center">
				                    <div class="col mr-2">
				                      <div class="text-m font-weight-bold text-info text-uppercase mb-1">티켓 판매액(금일기준)</div>
				                      <div class="h5 mb-0 font-weight-bold text-gray-800">
				                      	<fmt:formatNumber type="currency" value="${todaySum[li.index]}" />
				                      </div>
				                    </div>
				                    <div class="col-auto">
				                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
				                    </div>
				                  </div>
				                </div>
				              </div>
				            </div>
				
				            <!-- Pending Requests Card Example -->
				            <div class="col-xl-3 col-md-6 mb-4">
				              <div class="card border-left-warning shadow h-100 py-2">
				                <div class="card-body">
				                  <div class="row no-gutters align-items-center">
				                    <div class="col mr-2">
				                      <div class="text-m font-weight-bold text-warning text-uppercase mb-1">예매 인원(금일기준)</div>
				                      <div class="h5 mb-0 font-weight-bold text-gray-800">
				                      	${SumPerson[li.index]}명
				                      </div>
				                    </div>
				                    <div class="col-auto">
				                      <i class="fas fa-comments fa-2x text-gray-300"></i>
				                    </div>
				                  </div>
				                </div>
				              </div>
				            </div>
	         		 </div>
  				  </div>
				</c:forEach>
				    
  				</div>
			</div>
		</div>
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
<script type="text/javascript">
$("#content > div > div:nth-child(4) > div:nth-child(2) > div > ul > li:nth-child(1) > a").click();

</script>
</body>

</html>