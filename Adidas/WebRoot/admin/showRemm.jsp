<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>商品推荐</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="js/layui/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/layui/layui.js"></script>
</head>
<%
	String id = request.getParameter("id");
%>
<script type="text/javascript">
	$(function(){			
			layui.use(['upload','layer','form'],function(){
		  		layui.upload({
		  	  		url:'ProductServlet?method=remmentProducts&id='+<%=id%>,
		  	  		success:function(res){
		  	  		if(res.success){
		  	  		var op1=$("#op1").val();
		  	  		var op2=$("#op2").val();
		  	  		var op3=$("#op3").val();
		  	  		var value=$("#sel option:seleted").val()
		  	  		var textbox=$(".textbox").val();
		  	  		location.href="admin/gproduct.jsp";
		  	  			layer.msg(res.message,{time:800});
		  	  		}	
		  	  		}
		  	  	});
		  	});
		}); 
		function z(id){
		var val=$("#sel").val();
		var tex=$(".textbox").val();
		$.post("ProductServlet?method=remmentProducts",{"id":id,"val":val,"tex":tex},
		function(res){
		if (res.success) {
			alert(res.message);
		}
		else{
		alert(res.message);
		};
		
		},"json"); 
		};
	</script>
<body>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>推荐商品</legend>
	</fieldset>
	<form class="layui-form" method="post" id="tbmain">
		<div class="layui-form-item">
			<label class="layui-form-label">推荐位置</label>
			<div class="layui-input-inline">
				<select id="sel" name="interest" lay-filter="required"
					class="layui-input">
					<option value="1">首页一号位</option>
					<option value="2">首页二号位</option>
					<option value="3">首页三号位</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">推荐优先级:</label>
				<div class="layui-input-inline">
					<input type="text" id="brand" name="brand" value="1"
						lay-verify="required" class="layui-input textbox" />
				</div>
			</div>
		</div>
		<div class="layui-inline">
			<div class="layui-input-block">
				<input type="button" class="layui-btn" onclick="z(<%=id%>)"
					value="立即提交" />
			</div>
		</div>
	</form>
</body>
</html>
