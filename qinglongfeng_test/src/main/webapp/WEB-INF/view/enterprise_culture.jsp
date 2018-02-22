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
	<jsp:include page="../pages/header.jsp"></jsp:include>
	<jsp:include page="../pages/left.jsp"></jsp:include>

	<div style="width: 69%; float: right;">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">企业文化</h3>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-12">
						<div class="thumbnail">
							<img src="<%=path %>/images/30.gif" alt="...">
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

</body>
</html>