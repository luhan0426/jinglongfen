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

	<div style="width: 69%;height:500px; float: right;">


		<div class="panel panel-primary">
			<div class="panel-heading text-right">
				<h3 class="panel-title">
					荣誉资质 <a href="" style="text-decoration: none; padding-right: 0px;">
						更多>> </a>
				</h3>
			</div>
			<div class="panel-body">

				<table class="table">
					
					<tr>
						<td>
							<div class="row text-center" onclick="">
								<div class="col-sm-12">
									<div class="thumbnail">
										<img src="<%=path %>/images/14.gif" alt="...">
										<div class="caption">
											<h5>营业执照(副本)</h5>
										</div>
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="row text-center" onclick="">
								<div class="col-sm-12">
									<div class="thumbnail">
										<img src="<%=path %>/images/14.gif" alt="...">
										<div class="caption">
											<h5>营业执照(副本)</h5>
										</div>
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="row text-center" onclick="">
								<div class="col-sm-12">
									<div class="thumbnail">
										<img src="../images/14.gif" alt="...">
										<div class="caption">
											<h5>营业执照(副本)</h5>
										</div>
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="row text-center" onclick="">
								<div class="col-sm-12">
									<div class="thumbnail">
										<img src="../images/14.gif" alt="...">
										<div class="caption">
											<h5>营业执照(副本)</h5>
										</div>
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="row text-center" onclick="">
								<div class="col-sm-12">
									<div class="thumbnail">
										<img src="../images/14.gif" alt="...">
										<div class="caption">
											<h5>营业执照(副本)</h5>
										</div>
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="row text-center" onclick="">
								<div class="col-sm-12">
									<div class="thumbnail">
										<img src="../images/14.gif" alt="...">
										<div class="caption">
											<h5>营业执照(副本)</h5>
										</div>
									</div>
								</div>
							</div>
						</td>
					</tr>
				</table>
				<ul class="pager">
					<li class="previous"><a href="#">&larr; 上一页</a></li>
					<li class="next"><a href="#">下一页 &rarr;</a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>