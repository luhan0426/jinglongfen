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

	<div style="width: 69%; height: 500px; float: right;">


		<div class="panel-body">
			<table class="table">
				<c:forEach items="${list1}" var="p">
					<tr>
						<td>
							<div class="row text-center" onclick="">
								<div class="col-sm-12">
									<div class="thumbnail">
										<img src="<%=path%>/${p.picture}" alt="...">
										<div class="caption">
											<h5>${p.name}</h5>
										</div>
									</div>
								</div>
							</div>
						</td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<c:forEach items="${pages}" var="pg">
					<li ${page==pg?'class=active':''}><a
						href="<%=request.getContextPath()%>/list/${pg}">${pg}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>