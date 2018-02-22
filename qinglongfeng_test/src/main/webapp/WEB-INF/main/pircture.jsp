<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h3>产品添加</h3>
		<form action="/product/toAdd">
			<table class="table table-bordered table-hover">
				<tr>
					<td>商品名称</td>
					<td>
						<input type="text" name="name">
					</td>
				</tr>
				<tr>
					<td>对商品的评价</td>
					<td>
						<input type="text" name="content">
					</td>
				</tr>
				<tr>
					<td>商品价格</td>
					<td>
						<input type="text" name="price">
					</td>
				</tr>
				<tr>
					<td>类别</td>
					<td>
						<select></select>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="提交">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>