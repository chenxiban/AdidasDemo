<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/font-awesome.css" type="text/css"></link>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="js/layui/css/layui.css" type="text/css"></link>
<style>
#tbMain img {
	width: 60px;
	height: 60px;
}

#divPage {
	text-align: center;
}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/layui/layui.js"></script>
<script type="text/javascript">
	var layer = null, pager = null; //定义弹出层和分页条
	$(function() {
		layui.use([ "layer", "laypage" ], function() {
			layer = layui.layer;
			pager = layui.laypage;
		});

		$("#checkAll").click(function() { //全选
			$(".chb").prop("checked", this.checked);
		});

	});

	//处理查询分页显示
	var pageSize = 5;
	var pageCount = 0;
	var dataUrl = "../OrdersServlet?method=searchByName";
	$(function() {
		$("#btnOrder").click(function() {
			var qs = getQueryString();
			$.post(dataUrl, qs + "&page=1", function(res) {
				//获取总页码          	
				var p = Math.ceil(res.total / pageSize);
				//页数发生改变时，重新创建分页条
				newPager(p);
				//顺便显示第1页数据
				reader(res.rows);
			}, "json");

		});
		$("#btnOrder").click();
	});

	/*显示第pn页的数据*/
	function search(pn) {
		var qs = getQueryString();
		$.post(dataUrl, qs + "&page=" + pn, function(res) {
			var p = Math.ceil(res.total / pageSize);
			if (pn > p) {
				search(1);
				return;
			}
			if (p != pageCount)
				newPager(p);
			reader(res.rows);
		}, "json");
	}
	function newPager(p) {
		pageCount = p;
		pager({
			cont : "divPage",
			pages : p,
			skip : true,
			jump : function(obj, first) {
				if (!first)
					search(obj.curr);
			}
		});
	}
	function formatDate(nows) {
		var now = new Date(nows);
		var year = now.getFullYear();
		var month = now.getMonth() + 1;
		var date = now.getDate();
		var hour = now.getHours();
		var minute = now.getMinutes();
		var second = now.getSeconds();
		return year + "-" + month + "-" + date + " " + hour + ":" + minute
				+ ":" + second;
	}

	function reader(rows) {
		$("#tbMain").html("");
		for ( var i = 0; i < rows.length; i++) {
			var d = rows[i];
			var s = "<tr>";
			s += "<td><input class='chb' type='checkbox' id='checkAll' value='" + d.Id + "'/></td>";
			s += "<td>" + d.Id + "</td>";
			s += "<td>" + formatDate(d.OrderTime) + "</td>";
			s += "<td>" + d.Status + "</td>";
			s += "<td>" + formatDate(d.ShipTime) + "</td>";
			if (d.Status == "未付款") {
				s += "<td><button type='button' class='button border-red' id='del' onclick='delPro(\""
						+ d.Id
						+ "\")'><span class='icon-trash-o'>删除</span></button></td>";
			}
			if (d.Status == "付款") {
				s += "<td><div class='button-group'><a class='button border-green' id='xiangOrders"
						+ d.Id
						+ "' href='#'><span class='icon-check'></span>详情</a></div></td>";
			}
			if (d.Status == "未发货") {
 				s += "<td><div class='button-group'><a class='button border-green' href='../OrdersServlet?method=searchById&id=" + d.Id
					+ "'><span class='icon-check'></span>发货</a></div></td>";
 			}
			if (d.Status == "已发货") {
				s += "<td><div class='button-group'><a class='button border-green' id='xiangOrders"
						+ d.Id
						+ "' href='#'><span class='icon-check'></span>详情</a></div></td>";
			}
			if (d.Status == "未评价") {
				s += "<td><div class='button-group'><a class='button border-green' id='xiangOrders"
						+ d.Id
						+ "' href='#'><span class='icon-check'></span>详情</a></div></td>";
			}
			if (d.Status == "已评价") {
				s += "<td><button type='button' class='button border-red' id='dels' onclick='delPro(\""
						+ d.Id
						+ "\")'><span class='icon-trash-o'>删除</span></button></td>";
			}
			s += "</tr>";
			$("#tbMain").append($(s));
		}

	}

	//获取请求中要传的表单参数字符串
	function getQueryString() {
		var qs = $("#fmSearch").serialize();
		var sort1 = "";
		var sort2 = "";
		qs += "&sort1=" + sort1;
		qs += "&sort2=" + sort2;
		qs += "&pageSize=" + pageSize;
		return qs;
	}

	function delPro(obj) {
		var id = obj;
		if (confirm("你确定要删除吗？")) {
			$.post("../OrdersServlet?method=delOrders", {
				ids : id
			}, function(res) {
				if (res) {
					layer.msg('删除成功', {
						icon : 1,
						offset : '200px',
					});
					$("#btnSearch").click();
				} else {
					layer.msg('删除失败', {
						icon : 2,
						offset : '200px',
					});
				}

			}, "json");
		}
	}
	
</script>
<body>
	<form id="fmSearch" method="post"
		action="../OrdersServlet?method=searchByName">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 订单管理</strong>
			</div>
			<div class="padding border-bottom">
				<ul class="search">
					<li><input type="text" class="input" id="oid" name="oid"
						size="20" placeholder="请输入订单ID" />
					</li>
					<li><input type="text" class="input" id="oStatus"
						name="oStatus" size="20" placeholder="订单状态" />
					</li>
					<li><input type="date" class="input" name="onSaleTimeFrom"
						id="c" size="20" placeholder="请输入检索条件" />
					</li>
					<li>~</li>
					<li><input type="date" class="input" name="onSaleTimeTo"
						id="d" size="20" placeholder="请输入检索条件" />
					</li>
					<li>
					<li>
						<button type="button" class="button border-green" id="btnOrder">
							<span class="icon-check"></span> 检索
						</button>
					</li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<thead>
					<tr>
						<th width="70"><input type="checkbox" id="checkAll" />全选</th>
						<th>订单ID</th>
						<th>下单时间</th>
						<th>订单状态</th>
						<th>发货时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tbMain">
				</tbody>
			</table>
			<div id="divPage"></div>
		</div>
	</form>
</body>
</html>