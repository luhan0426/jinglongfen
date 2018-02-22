<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<link rel="stylesheet" href="<%=path %>/bootstrap-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet" href="<%=path %>/bootstrap-3.3.7/css/bootstrap.css" />
<script type="text/javascript" src="<%=path %>/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=path %>/bootstrap-3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<h2>数字分页</h2>
	<ul class="pagination">
		<c:forEach items="${pages}" var="pg">
			<li ${page==pg?'class=active':''}><a href="<%=path%>/student/list/${pg}">${pg}</a></li>
		</c:forEach>
	</ul>
</div>
</body>
</html>
