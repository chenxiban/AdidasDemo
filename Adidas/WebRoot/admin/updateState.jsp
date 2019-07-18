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

<title>商品发货</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="admin/js/layui/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="admin/js/layui/layui.js"></script>
<script type="text/javascript">
	var layer = null, pager = null; //定义弹出层和分页条
	$(function() {
		layui.use([ "layer", "laypage" ], function() {
			layer = layui.layer;
			pager = layui.laypage;
		});

	});

	function updateS(obj) {
		var wuliu=$("#wuliu").val();
		if (confirm("你确定要发货吗？")) {
			$.post("OrdersServlet?method=insertFaInfo", {
				ids : obj,
				wuliu:wuliu,
			}, function(res) {
				if (res=="true") {
					layer.msg('已成功发货', {
						icon : 1,
						offset : '200px',
					});
					window.location.href='admin/orders.jsp';
				} else if (res=="false") {
					layer.msg('发货失败', {
						icon : 2,
						offset : '200px',
					});
				}

			});
		}
	}
</script>
</head>

<body>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>商品发货</legend>
	</fieldset>
	<form class="layui-form" method="post" id="tbmain">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">物流公司</label>
				<div class="layui-input-inline">
					<input type="text" id="wuliu" name="wuliu" value="顺丰快递"
						lay-verify="required" class="layui-input textbox" />
				</div>
			</div>
		</div>
		<div class="layui-inline">
			<div class="layui-input-block">
				<input type="button" class="layui-btn" value="立即发货" onclick="updateS('${orders.id}')"/>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>

</body>
</html>
