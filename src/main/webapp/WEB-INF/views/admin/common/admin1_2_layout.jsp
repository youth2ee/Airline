<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="card-header py-3">
	<h6 class="m-0 font-weight-bold text-primary"><span style="color: #d60815; font-weight: bolder; font-size: 22px;">${smlist.airlineNm} (${smlist.vihicleId}/${smlist.depPlandTime})</span> 매출 현황 </h6>
</div>


<div class="card-body">

	<div class="row">
	         <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-danger text-uppercase mb-1">월간 매출 (2020년 2월 기준)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${smlist.arrPlandTime}" currencySymbol="￦" />
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
           <div class="col-xl-3 col-md-6 mb-4" style="visibility: hidden;" >
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-primary text-uppercase mb-1">주간매출 (2020년 2월 기준) </div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${smlist.arrPlandTime}" currencySymbol="￦"/>
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-xl-3 col-md-6 mb-4" style="visibility: hidden;" >
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-primary text-uppercase mb-1">주간매출 (2020년 2월 기준) </div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${smlist.arrPlandTime}" currencySymbol="￦"/>
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
	         <div class="col-xl-3 col-md-6 mb-4" style="visibility: hidden;">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-primary text-uppercase mb-1">주간매출 (2020년 2월 기준) </div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${smlist.arrPlandTime}" currencySymbol="￦"/>
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            
            
            <!-- 월간 -->
<%-- 	         <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-primary text-uppercase mb-1">주간매출 (20.01.26. ~ 20.02.01.)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${sw1list.arrPlandTime}" />
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>  --%>
            
            	         <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-info text-uppercase mb-1">주간매출 (20.02.02. ~ 20.02.08.)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${sw2list.arrPlandTime}" currencySymbol="￦"/>
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>    
            
            	         <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-info text-uppercase mb-1">주간매출 (20.02.09. ~ 20.02.15.)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${sw3list.arrPlandTime}" currencySymbol="￦" />
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>  
            
            	         <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-info text-uppercase mb-1">주간매출 (20.02.16. ~ 20.02.22.)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${sw4list.arrPlandTime}" currencySymbol="￦" />
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>     
            
            	         <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-info text-uppercase mb-1">주간 매출 (20.02.23. ~ 20.02.29.)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${sw5list.arrPlandTime}" currencySymbol="￦"/>
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>  
            
            <!-- 오늘 -->
                        	         <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-m font-weight-bold text-warning text-uppercase mb-1">오늘의 매출 (2020년 2월 17일 기준)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                      <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${sdlist.arrPlandTime}" currencySymbol="￦"/>
                      </div>
                    </div>
                    <div class="col-auto">
                       <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>  
	
	
	</div>

</div>
<!-- card-body -->



