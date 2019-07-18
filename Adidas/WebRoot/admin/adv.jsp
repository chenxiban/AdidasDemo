<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>推荐管理</title>
<link rel="stylesheet" href="../css/font-awesome.css" type="text/css"></link>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="js/layui/css/layui.css" type="text/css"></link>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/layui/layui.js"></script>
<style>
#tbMain img {
	width: 200px;
	height: 60px;
}

#divPage {
	text-align: center;
}
</style>
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

		//单击删除时
		$("#btnDel").click(function() {
			var id = [];
			$(".chb:checked").each(function() {
				if (this.checked) {
					id.push(this.value); //将选中的商品id存入数组中
				}
			});

			if (id.length == 0) {
				alert("请首先勾选要删除的商品信息");
				return;
			}
			
			alert(id);

			if (confirm("你确定要删除吗？")) {
				var str = id.join(",");
				$.post("ZhuPositionServlet?method=delZhuPos", {
					id : str
				}, function(res) {
					if (res == "true") {
						layer.msg("删除成功", {
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
		});
	});

	//处理查询分页显示
	var pageSize = 8;
	var pageCount = 0;
	var dataUrl = "../ZhuPositionServlet?method=searchByName";
	$(function() {
		$("#btnSearch").click(function() {
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
		$("#btnSearch").click();
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
			s += "<td>" + d.Pid + "</td>";
			if (d.PirUrl == "") {
				s += "<td>暂无路径</td>";
			} else {
				s += "<td><img src='../images/product/"
						+ d.PirUrl
						+ ".png' style='cursor:pointer;' onclick='showImg(this)' pid='"
						+ d.Id + "'/></td>";
			}
			if (d.Posid == 1) {
				s += "<td>首页一号位</td>";
			} else if (d.Posid == 3) {
				s += "<td>首页三号位</td>";
			} else if (d.Posid == 6) {
				s += "<td>详情一号位</td>";
			} else if (d.Posid == 7) {
				s += "<td>购物一号位</td>";
			}
			s += "<td>" + d.Type + "</td>";
			s += "<td>" + d.Weight + "</td>";
			s += "<td><a href='../ZhuPositionServlet?method=searchById&id="
					+ d.Id + "'><span class='icon-check'></span>编辑</a></td>";
			s += "<td><button type='button' class='button border-red' id='dels' onclick='delZhuPro("
					+ d.Id
					+ ")'><span class='icon-trash-o'>删除</span></button></td>";
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

	var currImg;
	function showImg(obj) {
		currImg = obj;
		layer.open({
			type : 2, //表示为iframe类型
			area : [ '1000', '800' ],
			fixed : true,
			maxmin : true,
			//因为pid是自定义属性，出于浏览器兼容性考虑，这里采用jquery的attr方法取值
			content : 'updateImages.jsp?id=' + $(obj).attr("pid") + '&src='
					+ obj.src,

		});

	}
	//更改图片地址
	function changeImg(src) {
		currImg.src = src;
	}

	function delZhuPro(obj) {
		if (confirm("你确定要删除吗？")) {
			$.post("../ZhuPositionServlet?method=delZhuPos", {
				id : obj
			}, function(res) {
				if (res == "true") {
					layer.msg("删除成功", {
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

			});
		}
	}
	//单击删除时
</script>
</head>
<body>
	<form id="fmSearch" method="post"
		action="../ZhuPositionServlet?method=searchByName">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder">推荐管理</strong>
			</div>
			<div class="padding border-bottom">
				<ul class="search">
					<li><input type="text" class="input" id="posid" name="posid"
						size="30" placeholder="请输入位置编号" />
					</li>
					<li>
						<button type="button" class="button border-green" id="btnSearch">
							<span class="icon-check"></span> 检索
						</button>
						<button type="button" class="button border-red" id="btnDel">
							<span class="icon-trash-o"></span> 批量删除
						</button></li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<thead>
					<tr>
						<th width="70"><input type="checkbox" id="checkAll" />全选</th>
						<th>商品ID</th>
						<th>图片URL</th>
						<th>推荐位置</th>
						<th>推荐类型</th>
						<th>权重</th>
						<th>删除</th>
						<th>修改</th>
					</tr>
				</thead>
				<tbody id="tbMain">
				</tbody>
			</table>
			<div id="divPage"></div>
		</div>
	</form>
	</script>
</body>
</html>