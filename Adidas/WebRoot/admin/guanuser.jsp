<%@ page language="java" import="java.util.*,com.cyj.adidas.entity.*"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	var dataUrl = "../UserInfoServlet?method=searchByName";
	$(function() {
		$("#btnUser").click(function() {
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
		$("#btnUser").click();
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
			s += "<td><input class='chb' type='checkbox' id='checkAll' value='" + d.Uid + "'/></td>";
			s += "<td>" + d.Uname + "</td>";
			s += "<td>" + d.Sex + "</td>";
			s += "<td>" + d.Phone + "</td>";
			s += "<td>" + d.Birthday + "</td>";
			if (d.Flag == 1) {
				s += "<td>管理员</td>";
			} else if (d.Flag == 2) {
				s += "<td>禁用 </td>";
			} else if (d.Flag == 0) {
				s += "<td>会员</td>";
			}
			s += "<td>" + d.Email + "</td>";
			if (d.Flag == 2) {
				s += "<td><div class='button-group'><a class='button border-yellow' id='jie"
						+ d.Uid
						+ "' href='#' onclick='return del(1)'><span class='icon-check'></span> 解禁</a></div></td>";
			} else if (d.Flag == 1 || d.Flag == 0) {
				s += "<td><div class='button-group'><a class='button border-blue' id='jin"
						+ d.Uid
						+ "' href='#' onclick='return del(1)'><span class='icon-plus-square-o'></span> 禁用</a></div></td>";
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
</script>
</head>
<body>
	<form id="fmSearch" method="post"
		action="../UserInfoServlet?method=searchByName">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 用户管理</strong>
			</div>
			<div class="padding border-bottom">
				<ul class="search">
					<li><input type="text" class="input" id="huname" name="huname"
						size="30" placeholder="请输入姓名" /></li>
					<li><input type="text" class="input" id="sex" name="sex"
						size="30" placeholder="请输入性别" /></li>
					<li>
						<button type="button" class="button border-green" id="btnUser">
							<span class="icon-check"></span> 检索
						</button>
						<button type="button" class="button border-blue" id="jinuser">
							<span class="icon-plus-square-o"></span> 禁用
						</button>
						<button type="button" class="button border-yellow" id="jiejinuser">
							<span class="icon-check"></span> 解禁
						</button></li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<thead>
					<tr>
						<th width="120"><input type="checkbox" id="checkAll" />全选</th>
						<th>姓名</th>
						<th>性别</th>
						<th>电话</th>
						<th>生日</th>
						<th>状态</th>
						<th>邮箱</th>
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