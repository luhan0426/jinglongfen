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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="/twitter-bootstrap/twitter-bootstrap-v2/js/bootstrap-modal.js"></script> 
</head>
<body>
	<center>
	<div class="container">
		<table class="table table-bordered table-hover">
			<tr>
				<td>材料</td>
				<td>
					<input type="text" name="">
				</td>
			</tr>
			<tr>
				<td>描述</td>
				<td>
					<input type="text" name="">
				</td>
			</tr>
			<tr>
				<td>图片</td>
				<td></td>
			</tr>
			<tr>
				<td>
					<input type="button" value="提交">
				</td>
				<td></td>
			</tr>
		</table>
	</div>
	</center>
  
<a data-toggle="modal" data-target="#myModal">sdsd</a>
    <!-- 模态窗口 -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
                                   添加模块
				</h4>
			</div>
	<div class="form-horizontal" >
		<div class="form-group">
			<label class="col-sm-2 control-label">模块名称:</label>
			<div class="col-sm-10">
				<input type="text" name="name" class="form-control" >
			</div>
		</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="tj()">
					提交更改
				</button>
			</div>
		</div>
	</div>
</div>
  <!-- end-->
  
</body>
</html>