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
<link rel="stylesheet" href="<%=path %>/bootstrap-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet" href="<%=path %>/bootstrap-3.3.7/css/bootstrap.css" />
<script type="text/javascript" src="<%=path %>/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=path %>/bootstrap-3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<!-- 导航栏  -->
	    <div class="col-md-8">
          <div style="float:left">
	          <img src="<%=path %>/images/31.gif" />
          </div>
          <div style="float:left">
          	<div>
            	<h2> 青 岛 金 龙 峰 通 讯 设 备 有 限 公 司 </h2>
            </div>
            <div>
            	<p class="text-muted"> QING&nbsp;DAO&nbsp;  JIN&nbsp;  LONG&nbsp; FENG&nbsp;TONG&nbsp; XUN&nbsp;  SHE&nbsp;  BEI&nbsp; YOU&nbsp;XIAN&nbsp;GONG&nbsp;SI </p>
            </div>
          </div>
          </div>
	  	  <div class="col-md-4">
		  	<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid"> 
				<div>
					<ul class="nav navbar-nav">
						<li><a href="#">设为主页</a></li>
						<li><a href="#">收藏本站</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
				</div>
				</div>
			</nav>
	  	</div>	
    </div>
	    <!-- 头部 -->
	    <div class="container">
		    <div>
	          <ul class="nav nav-tabs">
					<li class="col-xs-2" style="background-color: blue;"><a href="shou"><font style="padding-left: 40px; color: white;">首页</font></a></li>
	                <li class="col-xs-2" style="background-color: blue;"><a href="culture"><font style="padding-left: 40px; color: white;">企业文化</font></a></li>
	                <li class="col-xs-2" style="background-color: blue;"><a href="honor"><font style="padding-left: 40px; color: white;">荣誉资质</font></a></li>
	                <li class="col-xs-2" style="background-color: blue;"><a href="product"><font style="padding-left: 40px; color: white;">产品中心</font></a></li>
	                <li class="col-xs-2" style="background-color: blue;"><a href="success"><font style="padding-left: 40px; color: white;">成功案例</font></a></li>
	                <li class="col-xs-2" style="background-color: blue;"><a href="liuyan"><font style="padding-left: 40px; color: white;">联系我们</font></a></li>
	            </ul>
	         </div>
	     </div>
	     <!-- 轮播图 -->
	   <div class="container">
	      <div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>   
				<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="<%=path %>/images/29.gif">
						</div>
						<div class="item">
							<img src="<%=path %>/images/29.gif">
						</div>
						<div class="item">
							<img src="<%=path %>/images/32.gif">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="carousel-control left" href="#myCarousel" 
					   data-slide="prev">&lsaquo;</a>
					<a class="carousel-control right" href="#myCarousel" 
					   data-slide="next">&rsaquo;</a>
				</div> 
		    </div> 
</body>
</html>