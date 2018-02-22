<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
      <title>Fullscreen Login</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="">
      <meta name="author" content="">

      <!-- CSS -->
      <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
      <link rel="stylesheet" href="assets/css/reset.css">
      <link rel="stylesheet" href="assets/css/supersized.css">
      <link rel="stylesheet" href="assets/css/style.css">

      <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
      <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->
      <script type="text/javascript">
      		function toLogin(){
      			$.ajax({
      				url:"/user/login",
      				type:"post",
      				data:$("#fff").serialize(),
      				success:function(data){
      					if(data == 1){
      						alert("用户名错误");
      					}else if(data == 2){
      						alert("密码错误");
      					}else{
      						alert("登录成功");
      						location.href="show.jsp";
      					}
      				}
      			})
      		}
      </script>
</head>
<body>
	<div class="page-container">
          <h1>后台登录</h1>
          <form action="user/login" method="post" id="fff">
              <input type="text" name="admin" class="username" placeholder="Username">
              <input type="password" name="password" class="password" placeholder="Password">
              <button type="submit" onclick="toLogin()">Login</button>
              <div class="error"><span>+</span></div>
          </form>
      </div>
      <!-- Javascript -->
      <script src="assets/js/jquery-1.8.2.min.js"></script>
      <script src="assets/js/supersized.3.2.7.min.js"></script>
      <script src="assets/js/supersized-init.js"></script>
      <script src="assets/js/scripts.js"></script>
</body>
</html>