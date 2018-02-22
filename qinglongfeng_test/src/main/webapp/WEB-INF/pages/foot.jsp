<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<base href="<%=basePath%>">
<body>
	<footer>
	<div class="container">
		<div class="wrap-footer">
			<div class="row">
				<div class="col-md-3 col-footer footer-1">
					<img src="<%=path%>/template/images/logofooter.png" />
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry.Lorem Ipsum is simply dummy text of the
						printing and typesetting industry.</p>
				</div>
				<div class="col-md-3 col-footer footer-2">
					<div class="heading">
						<h4>Customer Service</h4>
					</div>
					<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Delivery Information</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms & Conditions</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-footer footer-3">
					<div class="heading">
						<h4>My Account</h4>
					</div>
					<ul>
						<li><a href="#">My Account</a></li>
						<li><a href="#">Brands</a></li>
						<li><a href="#">Gift Vouchers</a></li>
						<li><a href="#">Specials</a></li>
						<li><a href="#">Site Map</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-footer footer-4">
					<div class="heading">
						<h4>Contact Us</h4>
					</div>
					<ul>
						<li><span class="glyphicon glyphicon-home"></span>California,
							United States 3000009</li>
						<li><span class="glyphicon glyphicon-earphone"></span>+91
							8866888111</li>
						<li><span class="glyphicon glyphicon-envelope"></span>infor@yoursite.com</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					Copyright &copy; 2015.Company name All rights reserved.<a
						target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
				</div>
				<div class="col-md-6">
					<div class="pull-right">
						<ul>
							<li><img
								src="<%=path%>/template/images/visa-curved-32px.png" /></li>
							<li><img
								src="<%=path%>/template/images/paypal-curved-32px.png" /></li>
							<li><img
								src="<%=path%>/template/images/discover-curved-32px.png" /></li>
							<li><img
								src="<%=path%>/template/images/maestro-curved-32px.png" /></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
</body>
</html>