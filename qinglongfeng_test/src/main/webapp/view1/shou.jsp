<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" />
<script src="<%=request.getContextPath() %>/bootstrap/js/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js" ></script>
</head>
<body>

            	<%@include file="./top.jsp" %>
				<jsp:include page="left.jsp"/>
                  <!-- 公司简介 -->
                  <div class="container">
					<div class="col-lg-8" >
                    	<div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">公司简介</h3>
                            </div>
                            <div class="panel-body">
                                <!-- 内容简述 -->
                                面板内容
                                
                            </div>
                        </div>
                    </div>
                    
                    <!-- 荣誉资质 -->
                    <div class="col-lg-4" >
                    	<div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">荣誉资质</h3>
                            </div>
                            <div class="panel-body">
                                <!-- 内容简述 -->
                                面板内容
                                
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                	<div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    产品展示
                                </h3>
                            </div>
                            <div class="panel-body">
                                面板内容
                            </div>
                        </div>
                	</div>
                </div>
                
                <div class="row">
                	<div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    工程案例
                                </h3>
                            </div>
                            <div class="panel-body">
                                面板内容
                            </div>
                        </div>
                	</div>
                </div>
                </div>
               
</body>
</html>