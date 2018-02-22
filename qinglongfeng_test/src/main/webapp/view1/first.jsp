<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-3.3.7/css/bootstrap.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	
		<%@include file="top.jsp" %>
		<jsp:include page="left.jsp"/>
	<div class="container">
		<div style="width:69%; float:right;">
            	<div class="row">
                  <div class="col-sm-12">
                  	<a href="#" class="list-group-item active">
                 		   产品展示
                    </a>
                    <div class="thumbnail">
                      <img src="<%=request.getContextPath()%>/images/10.gif" alt="...">
                      <div class="caption">
                        <h3 class="text-center">120米光纤</h3>
                        <!-- 详情介绍 -->
                        <p>...</p>
                        <div class="text-center">
                        	<ul class="pagination">
                                <li><a href="#">&laquo; 上一页</a></li>
                                <li><a href="#">下一页 &raquo;</a></li>
                            </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
	</div>
</body>
</html>