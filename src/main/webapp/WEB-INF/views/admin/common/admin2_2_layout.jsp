<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        
          <!-- Page level custom scripts -->
  <script src="${pageContext.request.contextPath}/resources/vendor/js/demo/datatables-demo.js"></script>

                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>출발공항</th>
                      <th>도착공항</th>
                      <th>편명</th>
                      <th>항공사명</th>
                      <th>출발시간</th>
                      <th>도착시간</th>
                    </tr>
                  </thead>
                  <tbody>
                   <c:forEach items="${flist}" var="f"> 
                    <tr>
                      <td>${f.depAirportNm}</td>
                      <td>${f.arrAirportNm}</td>
                      <td>${f.vihicleId}</td>
                      <td>${f.airlineNm}</td>
                      <td>${f.depPlandTime}</td>
                      <td>${f.arrPlandTime}</td>
                    </tr>
                 </c:forEach> 

                  </tbody>
                </table>
