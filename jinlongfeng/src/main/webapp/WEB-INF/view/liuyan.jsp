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
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="container">
		<form action="/qinglongfeng_test/product/toLiuyan" method="post">
		<div style="width:69%; float:center;">
			<a href="#" class="list-group-item active"> 
				<font style="font-size: 20px;margin-left: 300px">给我留言</font></a>
		<table class="table table-bordered table-hover">
			<tr>
				<td>工程项目</td>
				<td>
					<textarea cols="20" rows="3" name=textarea name="proname"></textarea>
				</td>
			</tr>
			<tr>
				<td>企业名称</td>
				<td>
					<input type="text" name="dname">
				</td>
			</tr>
			<tr>
				<td>姓名</td>
				<td>
					<input type="text" name="username">
				</td>
			</tr>
			<tr>
				<td>联系电话</td>
				<td>
					<input type="text" name="tel">
				</td>
			</tr>
			<tr>
				<td>邮箱</td>
				<td>
					<input type="text" name="qq">
				</td>
			</tr>
			<tr>
				<td colspan="5"><a href="#" class="list-group-item active"> 
				<input type="submit" class="btn btn-info" value="立即提交" style="margin-left: 290px">
				</a>
				</td>
			</tr>
		</table>
		</div>
		</form>
	</div>
</body>
</html>