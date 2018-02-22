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
 <%@include file="./left.jsp" %>
  <div style="width:69%; float:right;">
                <div class="panel panel-primary">
                	<div class="panel-heading">
                        <h3 class="panel-title">
                        	企业文化
                        </h3>
                    </div>
                	<div class="panel-body">
                        <div class="row">
                          <div class="col-sm-12">
                            <div class="thumbnail">
                              <img src="<%=request.getContextPath() %>/images/30.gif" alt="...">
                              <div class="caption">
                              <!-- 企业文化简述 -->
		                        <p>...</p>
                                
                              </div>
                            </div>
                          </div>
                        </div>
                    </div>
                </div>
             </div>
      <div class="col-md-1"></div>
</body>
</html>