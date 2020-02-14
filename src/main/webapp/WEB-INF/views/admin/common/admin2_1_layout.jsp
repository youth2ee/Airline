<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
        <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">항공편 관리</h1>
          <p class="mb-4">항공사별 항공편 관리</p>
          
         <c:forEach items="${alist}" var="an">
 		   <div class="abtn">${an.getAName()}</div>
          </c:forEach> 
     
     <div style="clear: both;"></div>

          
		<div> 
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">항공사별 항공편 현황</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
        
   <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
 <thead>
                    <tr>
                      <th>편명</th>
                      <th>항공사명</th>
                      <th>출발지</th>
                      <th>도착지</th>
                      <th>출발시간</th>
                      <th>도착시간</th>
                    </tr>
                  </thead>
                  <tbody> 
                   <c:forEach items="${flist}" var="f"> 
                    <tr>
                      <td>${f.vihicleId}</td>
                      <td>${f.airlineNm}</td>
                      <td>${f.depAirportNm}</td>
                      <td>${f.arrAirportNm}</td>
                      <td>${f.depPlandTime}</td>
                      <td>${f.arrPlandTime}</td>
                    </tr>
                 </c:forEach> 
</tbody>
</table>

              </div>
            </div>
          </div>
          </div>