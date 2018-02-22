<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=path %>/bootstrap-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet" href="<%=path %>/bootstrap-3.3.7/css/bootstrap.css" />
<script type="text/javascript" src="<%=path %>/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=path %>/bootstrap-3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
	<!-- 列表 -->
	<div style="width:25%;height:500px; float:left;">
		<div class = "row">
		<div class="panel-body" style="float: none; color: #3a66b1;">
			<div class="panel panel-primary"  style = "clear: both;">	
			<div class="panel-heading">
					<h3 class="panel-title">产品介绍</h3>
			</div>
		 <c:forEach items="${list }" var="p">
       		<a href="#" class="list-group-item">
          	<span class="glyphicon glyphicon-asterisk"></span>
          	${p.pname }
          	</a>
         </c:forEach>
         </div>
        </div>
	</div>
	<div class="panel panel-primary" style = "clear: both;">
			<div class="panel-heading">
				<h3 class="panel-title">联系我们</h3>
			</div>
			<div class="panel-body" style="float: none; color: #3a66b1;">
				<h5>
					<b>青岛金龙峰通讯设备有限公司</b>
				</h5>
				<p>联系人：刘经理 0532-856968698</p>
				<p>刘经理 1329638521</p>
				<p>邮&nbsp;&nbsp;箱：asdsa@163.com</p>
				<p>地&nbsp;&nbsp;址：青岛市市南区江西路7号</p>
			</div>
		</div>
	</div>
</body>
</html>