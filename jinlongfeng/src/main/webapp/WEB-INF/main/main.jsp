<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/common/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="<%=request.getContextPath() %>/common/css/print.css" rel="stylesheet" type="text/css"  media="print" />
<script src="<%=request.getContextPath() %>/common/js/jquery-1.10.1.min.js"></script>
<script src="<%=request.getContextPath() %>/common/js/side.js" type="text/javascript"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function del(id){
		location.href="/sysUser/delete/"+id;
	}
	$(function(){
		$("#exit").click(function(){
			top.location.href="<%=request.getContextPath() %>/login.jsp";
		})
		//全选/全不选
		$("#checked").click(function(){
			if(this.checked){
				$("[name='check']").attr("checked",true);
			}else{
				$("[name='check']").attr("checked",false);
			}
		})
		
		//批删
		$("#dels").click(function(){
			var ids =  "";
			
		})		
	})
	
</script>
</head>
<body>

<div class="picBox" onClick="switchSysBar()" id="switchPoint"></div>
<div class="wrap_right">
<header>
</header>
	<!-- Contents -->
<div id="Contents">
	<script type="text/javascript">
	$(function(){
	$(".select").each(function(){
	var s=$(this);
	var z=parseInt(s.css("z-index"));
	var dt=$(this).children("dt");
	var dd=$(this).children("dd");
	var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};
	var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};
	dt.click(function(){dd.is(":hidden")?_show():_hide();});
	dd.find("a").click(function(){dt.html($(this).html());_hide();});
	$("body").click(function(i){ !$(i.target).parents(".select").first().is(s) ? _hide():"";});})})
	</script>

<!-- MainForm -->
<div id="MainForm">
<div class="form_boxB">
<h2>商品列表</h2>
	<table cellpadding="0" cellspacing="0">
		<tr>
		<td colspan="10" class="info_boxA">
			<button type="button" class="btn btn-info">
			    <span class="glyphicon glyphicon-plus"></span> 新增 
			</button>
			<button type="button" class="btn btn-danger" id="dels">
			    <span class="glyphicon glyphicon-trash"></span> 批量删除 
			</button>
			<button type="button" class="btn btn-warning">
			    <span class="glyphicon glyphicon-leaf"></span> 修改
			</button>
			<button type="button" class="btn btn-danger" id="exit" style="margin-left: 600px">
			    <span></span> 退出
			</button>
		</td>
		</tr>
		<tr>
			<th>
				<input type="checkbox" id="checked">
			</th>
			<th>序号</th>
			<th>用户名</th>
			<th>密码</th>
			<th>真实姓名</th>
			<th>状态</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="user">
			<tr>
				<td>
					<input type="checkbox" name="check">
				</td>
				<td>${user.id }</td>
				<td>${user.username }</td>
				<td>${user.password }</td>
				<td>${user.realname }</td>
				<td>${user.isLock }</td>
				<td>
					<button type="button" class="btn btn-danger btn-xs" onclick="del(${user.id })">
					    <span class="glyphicon glyphicon-trash"></span> 删除
					</button>
					<button type="button" class="btn btn-warning btn-xs">
					    <span class="glyphicon glyphicon-leaf"></span> 修改
					</button>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6">
				<p class="msg">共找到${listCount }条年度预算记录，当前显示从第${page }条至第${pagesize}条</p>
			</td>
		</tr>
	</table>
	<!-- 分页 -->
	<ul id="PageNum">
		<c:forEach items="${pages }" var="p">
			<li class="paginItem ${page==p?'current':'' }">
				<a href="<%=request.getContextPath()%>/sysUser/userList?page=${p}">${p}</a>
			</li>
		</c:forEach>
	</ul>
<!-- /PageNum -->
</div>
</div>

</div>
<!-- /Contents -->

<!-- /footer -->
<footer>
<address>2007 Corporation,All Rights</address>
</footer>
<!-- /footer -->
</body>
</html>