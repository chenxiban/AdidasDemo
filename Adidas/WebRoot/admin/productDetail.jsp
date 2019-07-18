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

<title>修改商品信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="../css/font-awesome.css" type="text/css"></link>
<link rel="stylesheet" href="js/layui/css/layui.css" type="text/css"></link>
<link rel="stylesheet" href="zTree/css/zTreeStyle/zTreeStyle.css"
	type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="zTree/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="js/layui/layui.js"></script>
<style type="text/css">
td {
	text-align: right;
	padding: 10px;
}

#tree {
	position: absolute;
	top: 100px;
	left: 480px;
}

#btn {
	width: 68px;
}
</style>

<script type="text/javascript">
	var zTreeObj;
	//zTree配置参数
	var setting = {
		data : { //数据配置
			simpleData : { //简单数据模式
				enable : true, //是否启用简单数据模式
				idKey : "id", //设置节点id属性名
				pIdKey : "pid", //设置父节点属性名
				rootPId : 0
			//设置根节点，默认值null
			}
		},
		callback : { //设置回调函数
			//捕获节点被点击事件回调函数，event：事件对象，treeId：对应zTree的treeId，treeNode：被点击节点的JSON数据对象，clickFlag：节点被点击后的选中操作类型
			onClick : function(event, treeId, treeNode, clickFlag) {
				$("#categoryId").val(treeNode.id);
				$("#category").val(treeNode.name);
				$("#tree").hide(); //点击节点后隐藏树
			}
		}

	};

	function showCategory() {
		//请求
		$.get("ProductServlet", {
			method : "getAllCategory"
		}, function(res) {
			//初始化树	res是响应数据
			zTreeObj = $.fn.zTree.init($("#tree"), setting, res);
			$("#tree").show(); //点击按钮显示树
		});

	}
</script>
<script type="text/javascript">
	layui
			.use(
					[ 'form', 'layedit', 'laydate', 'upload' ],
					function() {
						var form = layui.form, layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate, upload = layui.upload;

						upload.render({
							elem : '#image',
							url : 'ProductServlet?method=uploadPic',
							done : function(res) {
								if (res.success) {
									$("#image").attr(
											"src",
											"images/product/" + res.remark
													+ ".png");
									$("#picUrl").val(res.remark);
								} else {
									layer.msg("图片上传失败", 5);
								}
							}
						});
						var editIndex = layedit.build('LAY_demo_editor');
					});
</script>
</head>

<body>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>商品修改</legend>
	</fieldset>
	<ul id="tree" class="ztree"></ul>
	<form class="layui-form"
		action="ProductServlet?method=updateProduct&id=${product.id }"
		method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">商品名称</label>
			<div class="layui-input-inline">
				<input type="text" style="width:500px;" id="name" name="name"
					value="${product.pname }" autocomplete="off"
					placeholde="请输入商品名称" class="layui-input" />
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">商品分类</label>
			<div class="layui-input-inline">
				<input type="hidden" id="categoryId" name="categoryId"
					value="${product.tyId}" /> <input type="text" id="category"
					autocomplete="off"
					value="${product.tc.name }" readonly="readonly" class="layui-input" />
			</div>
			<div class="layui-input-inline">
				<input type="button" id="btn" value="选择类别" onclick="showCategory()" />
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">品牌</label>
				<div class="layui-input-inline">
					<input type="text" id="brand" name="brand"
						value="阿迪达斯" lay-verify="required"
						class="layui-input" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">重新上传图片</label>
				<div class="layui-upload-drag" id="test10">
					<img class="layui-upload-img"
						src="images/product/${product.picUrl }.png" id="image"
						style="width: 120px;border: 0px;">
					<p>点击上传，或将图片拖拽到此处</p>
					<input type="hidden" name="picUrl" id="picUrl"
						value="${product.picUrl }">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">正常售价</label>
				<div class="layui-input-inline">
					<input type="number" id="sellPrice" name="sellPrice" min="0"
						value="${product.sellPrice }" lay-verify="required"
						autocomplete="off" placeholder="￥" class="layui-input" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">商品库存</label>
				<div class="layui-input-inline">
					<input type="number" id="productStore" name="productStore" min="0"
						value="${product.productStore }" lay-verify="required"
						autocomplete="off" class="layui-input" />
				</div>
			</div>
		</div>		
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">尺寸</label>
				<div class="layui-input-inline">
					<input type="text" id="size" name="size" value="${product.size }"
						lay-verify="required" class="layui-input" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">颜色</label>
				<div class="layui-input-inline">
					<input type="text" id="color" name="color" value="${product.color }"
						lay-verify="required" class="layui-input" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">类型</label>
				<div class="layui-input-inline">
					<input type="text" id="type" name="type" value="${product.type }"
						lay-verify="required" class="layui-input" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">是否上架</label>
				<div class="layui-input-inline">
					<input type="radio" id="canUse" name="canUse" value="是" title="是"
						<c:if test="${product.canUse eq '是' }"> checked=""
						</c:if> />
					<input type="radio" id="canUse" name="canUse" value="否" title="否"
						<c:if test="${product.canUse eq '否' }"> checked=""
						</c:if> />
				</div>
			</div>
			<br>
			<div class="layui-inline">
					<label class="layui-form-label">规格</label>
					<div class="layui-input-inline">
					<input type="text" id="scid" name="scid" value="${product.sid}"
						lay-verify="required" class="layui-input" />
					</div>
			</div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">商品详细描述</label>
				<input type="hidden" id="scid" name="scid" value="${product.sid }">
				<div class="layui-input-block">
					<textarea class="layui-textarea layui-hide" name="descripation"
						lay-verify="content" id="LAY_demo_editor">${product.sc.content }</textarea>
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