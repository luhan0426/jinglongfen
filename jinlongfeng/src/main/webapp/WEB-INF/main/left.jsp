<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/public.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/common/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/common/js/public.js"></script>
<head></head>
<body>
	<!-- 左边节点 -->
	<div class="container">
		<div class="leftsidebar_box">
			<a href="main" target="main">
				<div class="line">
					欢迎${user.realname }
					<img src="<%=request.getContextPath() %>/common/img/coin01.png" />&nbsp;&nbsp;首页
				</div>
			</a>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="<%=request.getContextPath() %>/common/img/coin03.png" />
					<img class="icon2" src="<%=request.getContextPath() %>/common/img/coin04.png" />
   商品管理 <img class="icon3" src="<%=request.getContextPath() %>/common/img/coin19.png" />
			 		<img class="icon4" src="<%=request.getContextPath() %>/common/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="<%=request.getContextPath() %>/common/img/coin111.png" />
					<img class="coin22" src="<%=request.getContextPath() %>/common/img/coin222.png" />
					<a class="cks" href="tab.html" target="main">商品分类</a>
					<img class="icon5" src="<%=request.getContextPath() %>/common/img/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="<%=request.getContextPath() %>/common/img/coin01.png" />
					<img class="icon2" src="<%=request.getContextPath() %>/common/img/coin02.png" /> 
						<a href="<%=request.getContextPath() %>/sysRole/roleList" target="main"> 权限管理</a>  
			 	  	<img class="icon3" src="<%=request.getContextPath() %>/common/img/coin19.png" />
			     	<img class="icon4" src="<%=request.getContextPath() %>/common/img/coin20.png" />
				</dt>
				<c:forEach items="${modelList }" var="quanxian">
					<dd>
						<img class="coin11" src="<%=request.getContextPath() %>/common/img/coin111.png" />
						<img class="coin22" src="<%=request.getContextPath() %>/common/img/coin222.png" />
						<a class="cks" href="p3.html" target="main">${quanxian.mname }</a>
						<img class="icon5" src="<%=request.getContextPath() %>/common/img/coin21.png" />
					</dd>
				</c:forEach>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="<%=request.getContextPath() %>/common/img/coin07.png" />
					<img class="icon2" src="<%=request.getContextPath() %>/common/img/coin08.png" /> 
			   角色管理<img class="icon3" src="<%=request.getContextPath() %>/common/img/coin19.png" />
			    	<img class="icon4" src="<%=request.getContextPath() %>/common/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="<%=request.getContextPath() %>/common/img/coin111.png" />
					<img class="coin22" src="<%=request.getContextPath() %>/common/img/coin222.png" />
					<a href="p1.html" target="main" class="cks">会员管理</a>
					<img class="icon5" src="<%=request.getContextPath() %>/common/img/coin21.png" />
				</dd>
			</dl>
			
			<dl class="system_log">
				<dt>
					<img class="icon1" src="<%=request.getContextPath() %>/common/img/coinL1.png" />
					<img class="icon2" src="<%=request.getContextPath() %>/common/img/coinL2.png" />
			    系统管理<img class="icon3" src="<%=request.getContextPath() %>/common/img/coin19.png" />
			        <img class="icon4" src="<%=request.getContextPath() %>/common/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="<%=request.getContextPath() %>/common/img/coin111.png" />
					<img class="coin22" src="<%=request.getContextPath() %>/common/img/coin222.png" />
					<a href="changepwd" target="main" class="cks">修改密码</a>
					<img class="icon5" src="<%=request.getContextPath() %>/common/img/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="<%=request.getContextPath() %>/common/img/coin111.png" />
					<img class="coin22" src="<%=request.getContextPath() %>/common/img/coin222.png" />
					<a class="cks">退出</a>
					<img class="icon5" src="<%=request.getContextPath() %>/common/img/coin21.png" />
				</dd>
			</dl>

		</div>

	</div>
	
</body>
</html>