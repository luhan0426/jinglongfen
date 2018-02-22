<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
//页面加载完成后存放已选中的值
	var modelFunId_original_array = new Array(); 
	//页面加载完成被选中
	$(document).ready(function(){
		$.each($("input[name='fun_checkbox']"),function(i,obj){
			if(obj.checked){
				modelFunId_original_array[i] = obj.value;
			}
		});
		
		$.each($("input[name='model_checkbox']"), function(i, obj) {
			var len = $("."+this.id+"_child").length;
			var selectLen = 0;
			$.each($("."+this.id+"_child"), function(n, childObj) {
				if(childObj.checked) {
					selectLen ++;
				}
			});

			if(selectLen != 0 && selectLen == len) {
				$(this).attr("indeterminate", false);
				$(this).attr("checked", true);
			} else if(selectLen == 0) {
				$(this).attr("indeterminate", false);
				$(this).attr("checked", false);
			} else {
				$(this).attr("indeterminate", true);
			}
		});
	})
	/* $(function(){
		alert(${roleId});
	}) */
	//第一种方式添加（先删除后添加）
	function savePermit(){
		var permitIds = "";
		var roleId = ${roleId};
		$.each($("input[name='fun_checkbox']"),function(i,obj){
			if(obj.checked){
				//alert(obj.value);
				permitIds += obj.value + "|";
			}
		});
		
		 $.post(
				"<%=request.getContextPath() %>/sysRole/savePermit",
				{roleId:roleId,permitIds:permitIds},
				function(data){
					if(data){
						alert("保存成功");
						location.href="<%=request.getContextPath() %>/sysRole/roleList";
					}else{
						alert("保存失败");
					}
				},
				"json"
			)
	}
	//第二种方式修改
	function tianjia(){
		//现在状态
		var modelFunId_current_array = new Array();
		//用新的数据和之前数据作比较
		$.each($("input[name='fun_checkbox']"),function(i,obj){
			if(obj.checked){
				modelFunId_current_array[i] = obj.value;
			}
		});
		var del_ids = "";
		var add_ids = "";
		//根据下标获取值
		for(index_1 in modelFunId_original_array ){
			//原始数据
			var w = modelFunId_original_array[index_1];
			var flag = false;
			for(index_2 in modelFunId_current_array){
				//外层循环对象和内存循环对象一样
				//当前数据
				var n = modelFunId_current_array[index_2];
				if( w == n){
					flag = true;
				}
			}
			if(! flag ){
				del_ids += w + "|";
			}
			
		}	
			
			for(m in modelFunId_current_array){
				var w_index = modelFunId_current_array[m];
				var flag = false;
				for(n in modelFunId_original_array){
					if(w_index == modelFunId_original_array[n]){
						flag = true;
					}
				}
				
				if(!flag ){
					add_ids += w_index + "|";
				}
			} 
		
			alert("删除的值： "+ del_ids );
			alert("添加的值： "+ add_ids ); 
			
			var roleId = ${roleId};
			$.post(
			"<%=request.getContextPath() %>/sysRole/savePermit2",
			{roleId:roleId,add_ids:add_ids,del_ids:del_ids},
			function(data){
				if(data){
					alert("保存成功");
					location.href="<%=request.getContextPath() %>/sysRole/roleList";
				}else{
					alert("保存失败");
				}
			},
			"json"
			);			
	}
	
	function selectAll(obj){
		if(obj.checked){
			$("."+obj.id+"_child").attr("checked", true);
		}else{
			$("."+obj.id+"_child").attr("checked", false);
		}
	}
	
	function doparent(obj){
		//获得字符串长度
		var len=$("."+obj.value.split("_")[0]+"_child").length;
		//alert(len);
		var selectLen = 0;
		$.each($("."+obj.value.split("_")[0]+"_child"), function(i,obj) {
			if(obj.checked){
				selectLen ++;
			}		
		});	
		
		 if(selectLen == len){
			 $("#"+obj.value.split("_")[0]).attr("indeterminate", false);
			 $("#"+obj.value.split("_")[0]).attr("checked", true);
		}else if(selectLen == 0){
			 $("#"+obj.value.split("_")[0]).attr("indeterminate", false);
			 $("#"+obj.value.split("_")[0]).attr("checked", false);
		}else{
			alert("半选");
			// $("#"+obj.value.split("_")[0]).attr("indeterminate", true);
			$("#"+obj.value.split("_")[0]).attr("indeterminate", true);
		} 
		
	}
</script>
</head>
<body>
	<div class="container">
		<table class="table table-bordered table-hover" style="text-align: center">
			<div>
			<button type="button" class="btn btn-danger" onclick="tianjia()">
			    <span class="glyphicon glyphicon-plus"></span> 新增 
			</button>
			</div>
		<!-- 模块列表 -->
			<tr>
				<th style="width: 10%"><font style="margin-left: 20px">功能分类</font></th>
				<th style="width: 90%"><font style="margin-left: 500px">功能名称</font></th>
			</tr>
			<c:forEach items="${list }" var="model">
				<tr>
					<td style="width: 10%;">${model.modelName }</td>
					<td style="width: 90%">
						<c:forEach items="${model.childList}" var="child">
							<table  class="table table-bordered table-hover">
								<tr>
									<td style="width: 20%;">
										<input type="checkbox" name="model_checkbox" id="${child.id}" onclick="selectAll(this)">&nbsp;&nbsp;
										${child.modelName }
									</td>
									<td style="width: 80%;">
										<c:forEach items="${child.childFunList  }" var="childFun">
											<input type="checkbox" name="fun_checkbox" ${childFun.isChecked?'checked=checked':'' }
											 value="${child.id }_${childFun.id }" class="${child.id}_child" onclick="doparent(this)">&nbsp;&nbsp;
											${childFun.funName}
										</c:forEach>
									</td>
								</tr>
							</table>
						</c:forEach>
					</td>	
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>