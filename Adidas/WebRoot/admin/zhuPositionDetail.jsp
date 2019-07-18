<%@ page language="java"
	import="java.util.*,com.cyj.adidas.entity.Product" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>修改推荐信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="../css/font-awesome.css" type="text/css"></link>
<link rel="stylesheet" href="js/layui/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/layui/layui.js"></script>
<style type="text/css">
td {
	text-align: right;
	padding: 10px;
}

#btn {
	width: 68px;
}
</style>

</head>

<body>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>修改推荐</legend>
	</fieldset>
	<ul id="tree" class="ztree"></ul>
	<form class="layui-form"
		action="ZhuPositionServlet?method=updateZhuPosition&id=${zhu.id }"
		method="post">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">商品ID</label>
				<div class="layui-input-inline">
					<input type="number" id="zid" name="zid"
						value="${zhu.pid }" lay-verify="required/number"
						class="layui-input" />
				</div>
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">URL</label>
				<div class="layui-input-inline">
					<input type="text" id="url" name="url"
						value="${zhu.pirUrl }" lay-submit=""
						class="layui-input" />
				</div>
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">推荐位置</label>
				<div class="layui-input-inline">
					<input type="number" id="posid" name="posid" min="1" max="7"
						value="${zhu.posid }" lay-verify="required/number"
						autocomplete="off" placeholder="1~7" class="layui-input" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">推荐类型</label>
				<div class="layui-input-inline">
					<input type="text" id="type" name="type" value="${zhu.type }"
						lay-verify="required" class="layui-input" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
					<label class="layui-form-label">权重</label>
					<div class="layui-input-inline">
					<input type="number" id="weight" name="weight" value="${zhu.weight}"
						lay-verify="required/number" class="layui-input" />
					</div>
			</div>
			<br>
			<div class="layui-inline">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</div>
	</form>
</body>

</html>