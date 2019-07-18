<%@ page language="java" import="java.util.*,com.cyj.adidas.entity.*"
	pageEncoding="UTF-8"%>
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
	var dataUrl = "../ProductServlet?method=searchByName";
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
			s += "<td>" + d.Id + "</td>";
			s += "<td><img src='../images/product/"
					+ d.PicUrl
					+ ".png' style='cursor:pointer;' onclick='showImg(this)' pid='"
					+ d.Id + "'/></td>";
			s += "<td>" + d.Pname + "</td>";
			s += "<td>" + d.SellPrice + "</td>";
			if (d.CanUse == "是") {
				s += "<td>已上架</td>";
			} else {
				s += "<td>已下架</td>";
			}
			if (d.OnsaleTime != null && d.OnsaleTime != "")
				s += "<td>" + formatDate(d.OnsaleTime).substring(0, 10)
						+ "</td>";
			else {
				s += "<td>无</td>";
			}
			s += "<td>" + d.Type + "</td>";
			s += "<td><a href='../ProductServlet?method=searchById&id=" + d.Id
					+ "'><span class='icon-check'></span>编辑</a></td>";
			s += "<td><a onclick='showRemment(" + d.Id + ")' pid='" + d.Id
					+ "' ><span class='icon-plus-square-o'></span>推荐</a></td>";
			if (d.CanUse == "是") {
				s += "<td><button type='button' class='button border-red' id='on"
						+ d.Id
						+ "' name='"
						+ d.Id
						+ "' onclick='onPro("
						+ d.Id
						+ ")'><span class='icon-check a"+ d.Id +"'>下架</span></button></td>";
			} else {
				s += "<td><button type='button' class='button border-green' id='on"
						+ d.Id
						+ "' name='"
						+ d.Id
						+ "' onclick='onPro("
						+ d.Id
						+ ")'><span class='icon-check a"+ d.Id +"'>上架</span></button></td>";
			}
			s += "<td><button type='button' class='button border-red' id='dels' onclick='delPro("
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

	function delPro(obj) {
		var id = obj;
		var sid = obj;
		if (confirm("你确定要删除吗？")) {
			$.post("../ProductServlet?method=delProduct", {
				ids : id,
				sid : sid
			}, function(res) {
				if (res =="true" ) {
					layer.msg('删除成功', {
						icon : 1,
						offset : '200px',
					}),  
					$("#btnSearch").click();
				} 
				if (res =="false" ){
					layer.msg('删除失败', {
						icon : 2,
						offset : '200px',
					});
				}
				if (res =="noos" ){
					layer.msg('无法删除该商品,该商品有订单！', {
						icon : 2,
						offset : '200px',
					});
				}
			});
		}
	}

	//单个上下架
	function onPro(obj) {
		var id = [];
		$("#on" + obj + ":button").each(function() {
			id.push(this.name); //将选中的商品id存入数组中
		});

		if (id.length == 0) {
			layer.msg('请首先勾选要上下架的商品信息', {
				icon : 5,
				offset : '200px',
			});
			return;
		}

		var span = $(".a" + obj).html();
		if (span == "上架") {
			var on = "是";
			if (confirm("你确定要上架吗？")) {
				var str = id.join(",");
				$.post("../ProductServlet?method=updateNo", {
					ids : str,
					on : on
				}, function(res) {
					if (res) {
						layer.msg('已上架', {
							icon : 1,
							offset : '200px',
						});
						$("#btnSearch").click();
					} else {
						layer.msg('上架失败', {
							icon : 2,
							offset : '200px',
						});
					}

				}, "json");
			}
		} else if (span == "下架") {
			var on = "否";
			if (confirm("你确定要下架吗？")) {
				var str = id.join(",");
				$.post("../ProductServlet?method=updateNo", {
					ids : str,
					on : on
				}, function(res) {
					if (res) {
						layer.msg('已下架', {
							icon : 1,
							offset : '200px',
						});
						$("#btnSearch").click();
					} else {
						layer.msg('下架失败', {
							icon : 2,
							offset : '200px',
						});
					}

				}, "json");
			}
		}

	}

	//推荐的弹出层
	function showRemment(obj) {
		currImg = obj;
		layer.open({
			type : 2,
			area : [ '1000', '800' ],
			fixed : true,
			maxmin : true,
			//因为pid是自定义属性，出于浏览器兼容性考虑，这里采用jquery的attr方法取值
			content : 'showRemm.jsp?id=' + obj,
		});
	}
</script>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>

<body>
	<form id="fmSearch" method="post"
		action="../ProductServlet?method=searchByName">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder">商品管理A页</strong>
			</div>
			<div class="padding border-bottom">
				<ul class="search">
					<li><input type="hidden" class="input" id="products"
						name="products" value="2" /> <input type="text" class="input"
						id="pname" name="pname" size="30" placeholder="请输入检索条件" />
					</li>
					<li><input type="number" class="input" name="priceFrom" id="a"
						size="20" placeholder="请输入开始价格" /></li>
					<li>~</li>
					<li><input type="number" class="input" name="priceTo" id="b"
						size="20" placeholder="请输入结束价格" /></li>

					<li><input type="date" class="input" name="onSaleTimeFrom"
						id="c" size="20" placeholder="请输入检索条件" /></li>
					<li>~</li>
					<li><input type="date" class="input" name="onSaleTimeTo"
						id="d" size="20" placeholder="请输入检索条件" /></li>
					<li>
					<li>
						<button type="button" class="button border-green" id="btnSearch">
							<span class="icon-check"></span> 检索
						</button> <a href="add.jsp" class="button border-yellow" id="addproduct">
							<span class="icon-plus-square-o"></span>添加 </a>
					</li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<thead>
					<tr>
						<th width="70"><input type="checkbox" id="checkAll" />全选</th>
						<th>编号</th>
						<th>图片</th>
						<th>商品名</th>
						<th>单价</th>
						<th>是否上下架</th>
						<th>开售时间</th>
						<th>类型</th>
						<th>修改</th>
						<th>删除</th>
						<th>上下架</th>
						<th>推荐</th>
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