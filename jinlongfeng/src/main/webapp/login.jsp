<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/public.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/page.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/common/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/common/js/public.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
function doLogin(){
	$.ajax({
		url:"sysUser/login",
		type:"post",
		data:$("#form").serialize(),
		success:function(data){
			if(data == 1){
				alert("用户名不存在");
			}else if(data == 2){
				alert("密码错误");
			}else{
				alert("登录成功");
				location.href="<%=request.getContextPath() %>/sysUser/index";
			}
		},error:function(){
			alert("v");
		}
	})
} 
</script>
</head>
<body>
	<!-- 登录body -->
	<div class="logDiv">
		<img class="logBanner" src="<%=request.getContextPath() %>/common/img/logBanner.png" />
		<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<h4 class="p1">欢迎进入后台登录界面</h4>
			</div>
			<form  id="form">
				<div class="lgD">
					<img class="img1" src="<%=request.getContextPath() %>/common/img/logName.png" />
					<input type="text" name="username" placeholder="输入用户名" />
				</div>
				<div class="lgD">
					<img class="img1" src="<%=request.getContextPath() %>/common/img/logPwd.png" />
					<input type="password" name="password" placeholder="输入用户密码" />
				</div>
				<div class="logC">
					<a href="#" target="_self">
					<input type = "button" value = "登陆" onclick = "doLogin()" class="btn btn-warning" style="width: 320px;height: 50px">
					</a>
				</div>
			</form>
		</div>
	</div>
	<!-- 登录body  end -->

	<!-- 登录页面底部 -->
	<div class="logFoot">
		<p class="p1">版权所有：青岛金龙峰有限公司</p>
		<p class="p2">123456789</p>
	</div>
	<!-- 登录页面底部end -->
	
</body>
</html>