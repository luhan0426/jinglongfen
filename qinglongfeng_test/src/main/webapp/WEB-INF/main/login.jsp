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
	/* function login(){
		alert("jjj");
		 $.ajax({
			url:"/user/Tologin",
			type:"post",
			data:$("#form").serialize(),
			success:function(data){
				if(data == 1){
					alert("用户名不对");
				}else if(data == 2){
					alert("密码不正确");
				}else{
					alert("登录成功");
					location.href="/product/shou"
				}
			},error:function(){
				alert("shibai ");
			}
		}) 
	} */
</script>
</head>
<body>
	<div class="container">
		<form action="user/login" method="post" id="form">
			<table class="table table-bordered">
				<tr>
					<td>用户名</td>
					<td>
						<input type="text" name="uname">
					</td>
				</tr>
				<tr>
					<td>密码</td>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" value="登录" onclick="login()">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>