<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function toPermit(id){
		location.href="<%=request.getContextPath() %>/sysRole/toPermitPage?roleId="+id;
	}
	
</script>
</head>
<body>
	<div class="container">
		<table class="table table-bordered table-hover">
			<tr>
				<td>编号</td>
				<td>角色</td>
				<td>是否使用</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${roleList }" var="role">
				<tr>
					<td>${role.id }</td>
					<td>${role.roleName }</td>	
					<td>${role.isUse }</td>	
					<td>
						<button type="button" class="btn btn-warning btn-xs" onclick="toPermit(${role.id})">
						    <span class="glyphicon glyphicon-leaf"></span> 权限信息
						</button>
					</td>	
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>