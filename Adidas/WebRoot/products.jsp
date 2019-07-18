<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html class="noIE" lang="en-US">
<!--<![endif]-->

<head>
<meta charset="UTF-8" />
<title>阿迪达斯官方商城</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Favorite Icons -->
<link rel="icon" href="img/favicon/favicon.html" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="img/favicon/apple-touch-icon-144x144-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/favicon/apple-touch-icon-72x72-precomposed.html">
<link rel="apple-touch-icon-precomposed"
	href="img/favicon/apple-touch-icon-precomposed.html">
<!-- // Favorite Icons -->

<!--<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>-->

<!-- GENERAL CSS FILES -->
<link rel="stylesheet" href="css/minified.css">
<!-- // GENERAL CSS FILES -->

<!--[if IE 8]>
		<script src="js/respond.min.js"></script>
		<script src="js/selectivizr-min.js"></script>
	<![endif]-->
<!--
	<script src="js/jquery.min.js"></script>
	-->
<script>
	window.jQuery
			|| document.write('<script src="js/jquery.min.js"><\/script>');
</script>
<script src="js/modernizr.min.js"></script>
<!-- PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/jquery.nouislider.css">
<link rel="stylesheet" href="css/isotope.css">
<link rel="stylesheet" href="css/innerpage.css">
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="layui/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="layui/layui.js"></script>
<style type="text/css">
th,td {
	border: burlywood solid 1px;
}

.price {
	width: 50px;
}

#content img {
	width: 230px;
	height: 250px;
}

#content {
	text-align: center;
}

#content>div {
	width: 240px;
	float: left;
	margin-left: 50px;
	margin-bottom: 30px;
}

#content h1,#content h2 {
	padding: 0;
	font-size: 14px;
	margin-top: 10px;
	margin-bottom: 10px;
}

#content img {
	width: 240px;
	height: 280px;
}

#content {
	overflow: auto;
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

	});

	//处理查询分页显示
	var pageSize = 9;
	var pageCount = 0;
	var dataUrl = "ProductServlet?method=searchByName";
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
		$("#content").html("");
		var num = 1;
		for ( var i = 0; i < rows.length; i++) {
			var p = rows[i];
			var s = "<div class='owl-item' style='width:234px;'>";
			s += "<div class='product' data-product-id='"+num+"'>";
			s += "<div class='entry-media'>";
			s += "<img alt='' class='lazyOwl thumb ' style='display: inline; width:234px;' src='images/product/"+p.PicUrl+".png'>";
			s += "<div class='hover'>";
			s += "<a href='ProductServlet?method=productInfo&Pid=" + p.Id
					+ "' class='entry-url'></a>";
			s += "<ul class='icons unstyled'><li><div class='circle ribbon ribbon-sale'>Sale</div></li><li><a href='images/product/"+p.PicUrl+".png' class='circle' data-toggle='lightbox'><i class='iconfont-search'></i></a></li></ul>";
			s += "</div></div>";
			s += "<div class='entry-main'><h5 class='entry-title'><a href='ProductServlet?method=productInfo&Pid="
					+ p.Id
					+ "'>"
					+ p.Pname.substring(0, 20)
					+ "...</a></h5><div class='entry-price'><strong class='price'>￥"
					+ p.SellPrice + "</strong></div></div>";
			s += "</div>";
			num++;
			$("#content").append($(s));
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

<body class="products-view">

	<!-- PAGE WRAPPER -->
	<div id="page-wrapper">

		<!-- SITE HEADER -->
		<header id="site-header" role="banner"> <!-- HEADER TOP -->
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-7">
						<!-- CONTACT INFO -->
						<div class="contact-info">
							<i class="iconfont-headphones round-icon"></i> <strong>+400-999-5999
							</strong> <span> <c:choose>
									<c:when test="${sessionScope.user==null }">
										<span>您好，欢迎光临Adidas官网！</span>
									</c:when>
									<c:otherwise>
										<span>您好，<a href="LoginServlet?method=SelectUser">${sessionScope.user.uname
												}</a>欢迎光临Adidas官网！</span>
										<span><a href="login.jsp">切换用户</a>&nbsp;|</span>
										<span><a href="LoginServlet?method=LoginOut">退出登录</a> </span>
									</c:otherwise>
								</c:choose> </span>
						</div>
						<!-- // CONTACT INFO -->
					</div>
					<div class="col-xs-12 col-sm-6 col-md-5">
						<ul class="actions unstyled clearfix">
							<li>
								<!-- SEARCH BOX -->
								<div class="search-box">
									<form action="#" method="post">
										<div class="input-iconed prepend">
											<button class="input-icon">
												<i class="iconfont-search"></i>
											</button>
											<label for="input-search" class="placeholder">搜索…</label> <input
												type="text" name="q" id="input-search"
												class="round-input full-width" required />
										</div>
									</form>
								</div> <!-- // SEARCH BOX -->
							</li>
							<li data-toggle="sub-header" data-target="#sub-social">
								<!-- SOCIAL ICONS --> <a href="javascript:void(0);"
								id="social-icons"> <i class="iconfont-share round-icon"></i>
							</a>

								<div id="sub-social" class="sub-header">
									<ul class="social-list unstyled text-center">
										<li><a href="#"><i
												class="iconfont-facebook round-icon"></i> </a>
										</li>
										<li><a href="#"><i
												class="iconfont-twitter round-icon"></i> </a>
										</li>
										<li><a href="#"><i
												class="iconfont-google-plus round-icon"></i> </a>
										</li>
										<li><a href="#"><i
												class="iconfont-pinterest round-icon"></i> </a>
										</li>
										<li><a href="#"><i class="iconfont-rss round-icon"></i>
										</a>
										</li>
									</ul>
								</div> <!-- // SOCIAL ICONS -->
							</li>
							<li data-toggle="sub-header" data-target="#sub-cart">
								<!-- SHOPPING CART --> <a href="javascript:void(0);"
								id="total-cart"> <i
									class="iconfont-shopping-cart round-icon"></i> </a>

								<div id="sub-cart" class="sub-header">
									<div class="cart-header">
										<span>你的购物车现在是空的</span> <small><a
											href="ShoppingServlet?method=getUid">(See All)</a> </small>
									</div>
									<ul class="cart-items product-medialist unstyled clearfix"></ul>
									<div class="cart-footer">
										<div class="cart-total clearfix">
											<span class="pull-left uppercase">Total</span> <span
												class="pull-right total">$ 0</span>
										</div>
										<div class="text-right">
											<a href="cart.jsp"
												class="btn btn-default btn-round view-cart">View Cart</a>
										</div>
									</div>
								</div> <!-- // SHOPPING CART -->
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!-- ADD TO CART MESSAGE -->
			<div class="cart-notification">
				<ul class="unstyled"></ul>
			</div>
			<!-- // ADD TO CART MESSAGE -->
		</div>
		<!-- // HEADER TOP --> <!-- TyPe --> <script src="js/type.js"></script>
		<!-- // TyPe --> <!-- MAIN HEADER -->
		<div class="main-header-wrapper">
			<div class="container">
				<div class="main-header">
					<!-- CURRENCY / LANGUAGE / USER MENU -->
					<div class="actions">
						<div class="center-xs">
							<ul class="option-list unstyled">
								<li class="active"><a href="#" data-toggle="tooltip"
									title="英">En</a>
								</li>
								<li><a href="#" data-toggle="tooltip" title="中">Ch</a>
								</li>
							</ul>
							<!-- // LANGUAGES -->
						</div>
						<div class="clearfix"></div>
						<!-- USER RELATED MENU -->
						<nav id="tiny-menu" class="clearfix">
						<ul class="user-menu">
							<li><a href="LoginServlet?method=SelectUser">我的账户</a>
							</li>
							<li><a href="ShoppingServlet?method=getUid">我的愿望列表</a>
							</li>
							<li><a href="login.jsp">登录</a>
							</li>
							<li><a href="register.jsp">注册</a>
							</li>
							<li><a href="#">订单追踪</a>
							</li>
						</ul>
						</nav>
						<!-- // USER RELATED MENU -->
					</div>
					<!-- // CURRENCY / LANGUAGE / USER MENU -->
					<!-- SITE LOGO -->
					<div class="logo-wrapper">
						<a href="index.jsp" class="logo" title="阿迪达斯官方旗舰店"> <img
							src="images/logo.png"
							alt="GFashion - Responsive e-commerce jsp Template" /> </a>
					</div>
					<!-- // SITE LOGO -->

					<!-- SITE NAVIGATION MENU -->
					<nav id="site-menu" role="navigation">
					<ul class="main-menu hidden-sm hidden-xs">
						<li class="active"><a href="index.jsp">首页</a>
						</li>
						<li><a href="index-2.jsp">男子</a> <!-- MEGA MENU -->
							<div class="mega-menu" data-col-lg="9" data-col-md="12">
								<div class="row">

									<div class="col-md-3">
										<h4 class="menu-title">最新活动</h4>
										<ul class="mega-sub" id="mannew">
										</ul>
									</div>

									<div class="col-md-2">
										<h4 class="menu-title">鞋类</h4>
										<ul class="mega-sub" id="manxie">
										</ul>
									</div>

									<div class="col-md-2">
										<h4 class="menu-title">服饰类</h4>
										<ul class="mega-sub" id="manyifu">
										</ul>
									</div>

									<div class="col-md-2">
										<h4 class="menu-title">附配件类</h4>
										<ul class="mega-sub" id="manfujian">
										</ul>
									</div>

									<div class="col-md-3">
										<div class="carousel slide m-b" data-ride="carousel">
											<div class="carousel-inner">
												<div class="item active">
													<img src="images/product/original-1.png" alt="" />
												</div>
												<div class="item">
													<img src="images/product/yifu1.png" alt="" />
												</div>
											</div>
										</div>
										<h5 class="text-semibold uppercase m-b-sm">Adidas NEO</h5>
										<p>生 而 好 动</p>
										<a href="products.jsp" class="btn btn-default btn-round">Go
											to Shop →</a>
									</div>

								</div>
							</div> <!-- // MEGA MENU -->
						</li>
						<li><a href="index-3.jsp">女子</a> <!-- MEGA MENU -->
							<div class="mega-menu" data-col-lg="9" data-col-md="12">
								<div class="row">

									<div class="col-md-3">
										<h4 class="menu-title">最新活动</h4>
										<ul class="mega-sub" id="wennew">
										</ul>
									</div>

									<div class="col-md-2">
										<h4 class="menu-title">鞋类</h4>
										<ul class="mega-sub" id="wenxie">
										</ul>
									</div>

									<div class="col-md-2">
										<h4 class="menu-title">服饰类</h4>
										<ul class="mega-sub" id="wenyifu">
										</ul>
									</div>

									<div class="col-md-2">
										<h4 class="menu-title">附配件类</h4>
										<ul class="mega-sub" id="wenfujian">
										</ul>
									</div>

									<div class="col-md-3">
										<div class="carousel slide m-b" data-ride="carousel">
											<div class="carousel-inner">
												<div class="item active">
													<img src="images/product/original-2.png" alt="" />
												</div>
												<div class="item">
													<img src="images/product/yifu2.png" alt="" />
												</div>
											</div>
										</div>
										<h5 class="text-semibold uppercase m-b-sm">Adidas NEO</h5>
										<p>生 而 好 动</p>
										<a href="products.jsp" class="btn btn-default btn-round">Go
											to Shop →</a>
									</div>

								</div>
							</div> <!-- // MEGA MENU -->
						</li>
						<li><a href="index-4.jsp">童装</a> <!-- MEGA MENU -->
							<div class="mega-menu" data-col-lg="9" data-col-md="12">
								<div class="row">

									<div class="col-md-3">
										<h4 class="menu-title">最新活动</h4>
										<ul class="mega-sub" id="tongnew">
										</ul>
									</div>

									<div class="col-md-2">
										<h4 class="menu-title">大童(8-14)</h4>
										<ul class="mega-sub" id="datong">
										</ul>
									</div>

									<div class="col-md-2">
										<h4 class="menu-title">小童(4-8)</h4>
										<ul class="mega-sub" id="xiaotong">
										</ul>
									</div>

									<div class="col-md-2">
										<h4 class="menu-title">婴幼儿(0-4)</h4>
										<ul class="mega-sub" id="yingtong">
										</ul>
									</div>

									<div class="col-md-3">
										<div class="carousel slide m-b" data-ride="carousel">
											<div class="carousel-inner">
												<div class="item active">
													<img src="images/product/tongxie1.png" alt="" />
												</div>
												<div class="item">
													<img src="images/product/tongyi1.png" alt="" />
												</div>
											</div>
										</div>
										<h5 class="text-semibold uppercase m-b-sm">童装主打</h5>
										<p>上课 上场</p>
										<a href="products.jsp" class="btn btn-default btn-round">Go
											to Shop →</a>
									</div>

								</div>
							</div> <!-- // MEGA MENU -->
						</li>
						<li><a href="#">运动</a> <!-- MEGA MENU -->
							<div class="mega-menu" data-col-lg="9" data-col-md="12">
								<div class="row">
									<div class="col-md-3">
										<h4 class="menu-title">
											<img src="images/favicon.png" />&nbsp;跑步
										</h4>
										<ul class="mega-sub" id="paobu">
										</ul>
									</div>

									<div class="col-md-3">
										<h4 class="menu-title">
											<img src="images/favicon.png" />&nbsp;训练
										</h4>
										<ul class="mega-sub" id="xunlian">
										</ul>
									</div>

									<div class="col-md-3">
										<h4 class="menu-title">
											<img src="images/favicon.png" />&nbsp;篮球
										</h4>
										<ul class="mega-sub" id="lanqiu">
										</ul>
									</div>

									<div class="col-md-3">
										<h4 class="menu-title">
											<img src="images/favicon.png" />&nbsp;户外
										</h4>
										<ul class="mega-sub" id="huwai">
										</ul>
									</div>
								</div>
							</div> <!-- // MEGA MENU -->
						</li>
						<li><a href="#">品牌</a> <!-- MEGA MENU -->
							<div class="mega-menu" data-col-lg="9" data-col-md="12">
								<div class="row">

									<div class="col-md-3">
										<h4 class="menu-title">
											<img src="images/favicon.png" />&nbsp;originals
										</h4>
										<ul class="mega-sub" id="origin">
										</ul>
									</div>

									<div class="col-md-3">
										<h4 class="menu-title">
											<img src="images/favicon.png" />&nbsp;ADIDAS ATHLETICS
										</h4>
										<ul class="mega-sub" id="adidas">
										</ul>
									</div>

									<div class="col-md-3">
										<h4 class="menu-title">
											<img src="images/favicon.png" />&nbsp;adidas neo
										</h4>
										<ul class="mega-sub" id="neo">
										</ul>
									</div>

									<div class="col-md-3">
										<h4 class="menu-title">
											<img src="images/favicon.png" />&nbsp;sfello mocarfney
										</h4>
										<ul class="mega-sub" id="sfello">
										</ul>
									</div>


								</div>
							</div> <!-- // MEGA MENU -->
						</li>
						<li><a href="#">miadidas定制</a>
						</li>
					</ul>

					<!-- MOBILE MENU -->
					<div id="mobile-menu" class="dl-menuwrapper visible-xs visible-sm">
						<button class="dl-trigger">
							<i class="iconfont-reorder round-icon"></i>
						</button>
						<ul class="dl-menu">
							<li class="active"><a href="javsacript:void(0);">首页</a>
							</li>
							<li><a href="javsacript:void(0);">男子</a>
								<ul class="dl-submenu">
									<li><a href="products.jsp">最新活动</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">新品上市</a>
											</li>
											<li><a href="products.jsp">CLIMAHEAT</a>
											</li>
											<li><a href="products.jsp">adidas neo生来好动</a>
											</li>
											<li><a href="products.jsp">跑步IUltraBOOST</a>
											</li>
											<li><a href="products.jsp">跑步IPureBOOST</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">鞋类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">Originals</a>
											</li>
											<li><a href="products.jsp">跑步</a>
											</li>
											<li><a href="products.jsp">adidas neo</a>
											</li>
											<li><a href="products.jsp">篮球</a>
											</li>
											<li><a href="products.jsp">户外</a>
											</li>
											<li><a href="products.jsp">足球</a>
											</li>
											<li><a href="products.jsp">训练</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">服饰类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">上衣</a>
											</li>
											<li><a href="products.jsp">T恤</a>
											</li>
											<li><a href="products.jsp">运动卫衣</a>
											</li>
											<li><a href="products.jsp">运动下装</a>
											</li>
											<li><a href="products.jsp">泳裤</a>
											</li>
											<li><a href="products.jsp">比赛服</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">附配件类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">包</a>
											</li>
											<li><a href="products.jsp">足球/篮球</a>
											</li>
											<li><a href="products.jsp">运动装备</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="javsacript:void(0);">女子</a>

								<ul class="dl-submenu">
									<li><a href="products.jsp">最新活动</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">新品上市</a>
											</li>
											<li><a href="products.jsp">CLIMAHEAT</a>
											</li>
											<li><a href="products.jsp">adidas neo生来好动</a>
											</li>
											<li><a href="products.jsp">跑步IUltraBOOST</a>
											</li>
											<li><a href="products.jsp">跑步IPureBOOST</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">鞋类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">Originals</a>
											</li>
											<li><a href="products.jsp">adidas neo</a>
											</li>
											<li><a href="products.jsp">跑步</a>
											</li>
											<li><a href="products.jsp">户外</a>
											</li>
											<li><a href="products.jsp">网球</a>
											</li>
											<li><a href="products.jsp">训练</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">服饰类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">上衣</a>
											</li>
											<li><a href="products.jsp">T恤</a>
											</li>
											<li><a href="products.jsp">运动卫衣</a>
											</li>
											<li><a href="products.jsp">运动下装</a>
											</li>
											<li><a href="products.jsp">运动胸衣</a>
											</li>
											<li><a href="products.jsp">泳裤/比基尼</a>
											</li>
											<li><a href="products.jsp">短裙/连衣裙</a>
											</li>
											<li><a href="products.jsp">棉服/羽绒服</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">附配件类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">包</a>
											</li>
											<li><a href="products.jsp">球类</a>
											</li>
											<li><a href="products.jsp">运动装备</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="javsacript:void(0);">童装</a>

								<ul class="dl-submenu">
									<li><a href="products.jsp">最新活动</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">新品上市</a>
											</li>
											<li><a href="products.jsp">运动表现</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">大童:(8-14)</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">男大童:鞋类</a>
											</li>
											<li><a href="products.jsp">女大童:鞋类</a>
											</li>
											<li><a href="products.jsp">男大童:服装</a>
											</li>
											<li><a href="products.jsp">女大童:服装</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">小童:(4-8)</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">男小童:鞋类</a>
											</li>
											<li><a href="products.jsp">女小童:鞋类</a>
											</li>
											<li><a href="products.jsp">男小童:服装</a>
											</li>
											<li><a href="products.jsp">女小童:服装</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">婴幼儿:(0-4)</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">男婴童:鞋类</a>
											</li>
											<li><a href="products.jsp">女婴童:鞋类</a>
											</li>
											<li><a href="products.jsp">男婴童:服装</a>
											</li>
											<li><a href="products.jsp">女婴童:服装</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="javsacript:void(0);">运动</a>

								<ul class="dl-submenu">
									<li><a href="products.jsp">跑步</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">跑步鞋</a>
											</li>
											<li><a href="products.jsp">跑步服饰</a>
											</li>
											<li><a href="products.jsp">UltraBOOST</a>
											</li>
											<li><a href="products.jsp">UPrueBOOST</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">训练</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">训练鞋</a>
											</li>
											<li><a href="products.jsp">训练服装</a>
											</li>
											<li><a href="products.jsp">运动装备</a>
											</li>
											<li><a href="products.jsp">CLima</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">篮球</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">篮球鞋</a>
											</li>
											<li><a href="products.jsp">篮球服饰</a>
											</li>
											<li><a href="products.jsp">James Harden</a>
											</li>
											<li><a href="products.jsp">Damian Lillard</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">户外</a>
										<ul class="dl-submenu">
											<li><a href="#">游泳</a>
											</li>
											<li><a href="#">户外鞋</a>
											</li>
											<li><a href="#">户外服饰</a>
											</li>
											<li><a href="#">运动装备</a>
											</li>
											<li><a href="#">户外徒步系列</a>
											</li>
											<li><a href="#">城市户外系列</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>

							<li><a href="javsacript:void(0);">品牌</a>

								<ul class="dl-submenu">
									<li><a href="products.jsp">originals</a>
										<ul class="dl-submenu">
											<li><a href="#">鞋类</a>
											</li>
											<li><a href="#">服装</a>
											</li>
											<li><a href="#">新品上市</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">ADIDAS ATHLETICS</a>
										<ul class="dl-submenu">
											<li><a href="#">男子服饰</a>
											</li>
											<li><a href="#">女子服饰</a>
											</li>
											<li><a href="#">新品上市</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">adidas neo</a>
										<ul class="dl-submenu">
											<li><a href="#">鞋类</a>
											</li>
											<li><a href="#">服装</a>
											</li>
											<li><a href="#">新品上市</a>
											</li>
										</ul>
									</li>
									<li><a href="products.jsp">sfello mocarfney</a>
										<ul class="dl-submenu">
											<li><a href="#">鞋类</a>
											</li>
											<li><a href="#">服装</a>
											</li>
											<li><a href="#">新品上市</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="javsacript:void(0);">miadidas定制</a>
							</li>
						</ul>
					</div>
					<!-- // MOBILE MENU --> </nav>
					<!-- // SITE NAVIGATION MENU -->
				</div>
			</div>
		</div>
		<!-- // MAIN HEADER --> </header>
		<!-- // SITE HEADER -->

		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc push-up unstyled clearfix">
						<li><a href="index.jsp">首页</a>
						</li>
						<li class="active">商品</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->

		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">
		<div class="container">
			<div class="row">

				<div class="m-t-b clearfix">
					<!-- SIDEBAR -->
					<aside class="col-xs-12 col-sm-4 col-md-3"> <section
						class="sidebar push-up"> <!-- CATEGORIES --> <section
						class="side-section bg-white"> <header
						class="side-section-header">
					<h3 class="side-section-title">商品分类查看</h3>
					</header>
					<div class="side-section-content">
						<ul id="category-list" class="vmenu unstyled">
							<li><input type="checkbox" id="check-women"
								class="prettyCheckable" data-label="女士"
								data-labelPosition="right" value="女士" />
								<ul>
									<li><input type="checkbox" id="check-women-accessories"
										class="prettyCheckable" data-label="Accessories"
										data-labelPosition="right" value="women-accessories" />
									</li>
									<li><input type="checkbox" id="check-women-swimwear"
										class="prettyCheckable" data-label="泳装"
										data-labelPosition="right" value="泳装" />
									</li>
									<li><input type="checkbox" id="check-women-basics"
										class="prettyCheckable" data-label="Basics"
										data-labelPosition="right" value="women-basics" />
									</li>
									<li><input type="checkbox" id="check-women-dresses"
										class="prettyCheckable" data-label="Dresses"
										data-labelPosition="right" value="women-dresses" />
									</li>
									<li><input type="checkbox" id="check-women-jeans"
										class="prettyCheckable" data-label="Jeans"
										data-labelPosition="right" value="women-jeans" />
									</li>
									<li><input type="checkbox" id="check-women-skirt"
										class="prettyCheckable" data-label="Skirts"
										data-labelPosition="right" value="women-skirt" />
									</li>
									<li><input type="checkbox" id="check-women-legging"
										class="prettyCheckable" data-label="Leggings"
										data-labelPosition="right" value="women-legging" />
									</li>
								</ul>
							</li>
							<li><input type="checkbox" id="check-men"
								class="prettyCheckable" data-label="男士"
								data-labelPosition="right" value="男士" />
								<ul>
									<li><input type="checkbox" id="check-men-accessories"
										class="prettyCheckable" data-label="Accessories"
										data-labelPosition="right" value="men-accessories" />
									</li>
									<li><input type="checkbox" id="check-men-jacket"
										class="prettyCheckable" data-label="Jackets"
										data-labelPosition="right" value="men-jacket" />
									</li>
									<li><input type="checkbox" id="check-men-jumper"
										class="prettyCheckable" data-label="Jumpers"
										data-labelPosition="right" value="men-jumper" />
									</li>
									<li><input type="checkbox" id="check-men-jean"
										class="prettyCheckable" data-label="Jeans"
										data-labelPosition="right" value="men-jean" />
									</li>
									<li><input type="checkbox" id="check-men-shoe"
										class="prettyCheckable" data-label="Shoes"
										data-labelPosition="right" value="men-shoe" />
									</li>
									<li><input type="checkbox" id="check-men-tshirt"
										class="prettyCheckable" data-label="T-Shirt & Polo Shirts"
										data-labelPosition="right" value="men-tshirt" />
									</li>
									<li><input type="checkbox" id="check-men-blazers"
										class="prettyCheckable" data-label="Blazers"
										data-labelPosition="right" value="men-blazers" />
									</li>
								</ul>
							</li>
							<li><input type="checkbox" id="check-beauty"
								class="prettyCheckable" data-label="童装"
								data-labelPosition="right" value="makeup" /></li>
							<li><input type="checkbox" id="check-best"
								class="prettyCheckable" data-label="运动"
								data-labelPosition="right" value="best" /></li>
							<li><input type="checkbox" id="check-new"
								class="prettyCheckable" data-label="品牌"
								data-labelPosition="right" value="new" /></li>
						</ul>
					</div>
					<footer class="side-section-footer text-center hide">
					<button type="button" id="btn-filter-cat"
						class="btn btn-primary btn-round uppercase">Clear Filters</button>
					</footer> </section> <!-- // CATEGORIES --> <!-- BRANDS -->
					<form method="post" id="fmSearch"
						action="ProductServlet?method=searchByName">
						<section class="side-section bg-white"> <header
							class="side-section-header">
						<h3 class="side-section-title">名字查看</h3>
						</header>
						<div class="side-section-content">
							<ul id="brands-list" class="vmenu unstyled">
								<li>
									<div class="form-group stylish-input">
										<input type="hidden" class="input" id="products" name="products" value="1"/>
										<input type="text" class="form-control" id="pname"
											name="pname"> <input type="button"
											class="btn btn-primary btn-round padder" id="btnSearch"
											value="检索" style="margin-left: 150px;margin-top: 20px;">
									</div>
								</li>
							</ul>
						</div>
						<footer class="side-section-footer text-center hide">
						<button type="button" id="btn-filter-brand"
							class="btn btn-primary btn-round uppercase">Clear
							Filters</button>
						</footer> </section>
					</form>
					<!-- // BRANDS --> <!-- PRODUCT FILTER --> <section
						class="side-section bg-white"> <header
						class="side-section-header">
					<h3 class="side-section-title">其他搜索查看</h3>
					</header> <!-- PRICE RANGE SLIDER -->
					<div id="filter-by-price" class="side-section-content">
						<h4 class="side-section-subheader">价格区间搜索</h4>
						<div class="range-slider-container">
							<div class="range-slider" data-min="0" data-max="2000"
								data-step="10" data-currency="$"></div>
							<div class="range-slider-value clearfix">
								<span>价格: &ensp;</span> <span class="min"></span> <span
									class="max"></span>
							</div>
						</div>
					</div>


					<!-- // FILTER BY SIZE --> <!-- FILTER BY COLOR -->
					<div id="filter-by-color" class="side-section-content">
						<h4 class="side-section-subheader">Filter By Colour</h4>
						<ul class="inline-li li-m-sm text-center unstyled">
							<li><a href="#" class="round-icon color-box"
								data-toggle="tooltip" data-title="Black"
								style="background: #000;"></a> <input type="checkbox"
								class="filter-checkbox filter-color" value="black" /></li>
							<li><a href="#" class="round-icon color-box"
								data-toggle="tooltip" data-title="White"
								style="background: #fff; border-color: #acacac;"></a> <input
								type="checkbox" class="filter-checkbox filter-color"
								value="white" /></li>
							<li><a href="#" class="round-icon color-box"
								data-toggle="tooltip" data-title="Green"
								style="background: #60bd0d;"></a> <input type="checkbox"
								class="filter-checkbox filter-color" value="green" /></li>
							<li><a href="#" class="round-icon color-box"
								data-toggle="tooltip" data-title="Red"
								style="background: #ff5757;"></a> <input type="checkbox"
								class="filter-checkbox filter-color" value="red" /></li>
							<li><a href="#" class="round-icon color-box"
								data-toggle="tooltip" data-title="Blue"
								style="background: #0d9abd;"></a> <input type="checkbox"
								class="filter-checkbox filter-color" value="blue" /></li>
							<li><a href="#" class="round-icon color-box"
								data-toggle="tooltip" data-title="Brown"
								style="background: #c57313;"></a> <input type="checkbox"
								class="filter-checkbox filter-color" value="brown" /></li>
							<li><a href="#" class="round-icon color-box"
								data-toggle="tooltip" data-title="Purple"
								style="background: #a613c5;"></a> <input type="checkbox"
								class="filter-checkbox filter-color" value="purple" /></li>
							<li><a href="#" class="round-icon color-box"
								data-toggle="tooltip" data-title="Silver"
								style="background: #e5e5e8;"></a> <input type="checkbox"
								class="filter-checkbox filter-color" value="silver" /></li>
							<li><a href="#" class="round-icon color-box"
								data-toggle="tooltip" data-title="Patternie"
								style="background: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAQAAAAECAYAAACp8Z5+AAAAHklEQVQIW2NkYGD4D8QgwAgjMASgCiAqwcqgACwAAIrDBAOqGrGNAAAAAElFTkSuQmCC');"></a>
								<input type="checkbox" class="filter-checkbox filter-color"
								value="patternie" /></li>
						</ul>
					</div>
					<!-- // FILTER BY COLOR --> </section> <!-- // PRODUCT FILTER --> <!-- BEST SELLERS -->
					<section class="side-section bg-white"> <header
						class="side-section-header">
					<h3 class="side-section-title">Best Sellers</h3>
					</header>
					<div class="side-section-content">
						<ul class="product-medialist li-m-t unstyled clearfix">
							<li>
								<div class="item clearfix">
									<a href="images/women/basic/688086-0286_1.jpg"
										data-toggle="lightbox" class="entry-thumbnail"> <img
										src="images/women/basic/688086-0286_1_t.jpg"
										alt="Inceptos orci hac libero" /> </a>
									<h5 class="entry-title">
										<a href="product.jsp">Inceptos orci hac libero</a>
									</h5>
									<s class="entry-discount m-r-sm"><span class="text-sm">$
											350.00</span> </s> <span class="entry-price accent-color">$
										250.00</span>
								</div>
							</li>
							<li>
								<div class="item clearfix">
									<a href="images/women/basic/589550-0014_1.jpg"
										data-toggle="lightbox" class="entry-thumbnail"> <img
										src="images/women/basic/589550-0014_1_t.jpg"
										alt="Inceptos orci hac libero" /> </a>
									<h5 class="entry-title">
										<a href="product.jsp">Inceptos orci hac libero</a>
									</h5>
									<span class="entry-price">$ 350.00</span>
								</div>
							</li>
						</ul>
					</div>
					</section> <!-- // BEST SELLERS --> <!-- PROMO --> <!-- // PROMO --> </section> </aside>
					<!-- // SIDEBAR -->

					<section class="col-xs-12 col-sm-8 col-md-9"> <section
						class="products-wrapper"> <header
						class="products-header">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-6 center-xs">
							<ul class="unstyled inline-li li-m-r-l-sm pull-left">
								<li><a class="round-icon active" href="#"
									data-toggle="tooltip" data-layout="grid" data-title="切换到列表网格模式"><i
										class="iconfont-th"></i> </a>
								</li>
								<li><a class="round-icon" href="#" data-toggle="tooltip"
									data-layout="list" data-title="切换到列表视图模式"><i
										class="iconfont-list"></i> </a>
								</li>
							</ul>

							<div class="pull-right m-l-lg">
								<span class="inline-middle m-r-sm text-xs">排序方式</span>
								<div class="inline-middle styled-dd">
									<select>
										<option value="all" class="selected">选择</option>
										<option value="new">时间</option>
										<option value="high">降序</option>
										<option value="lower">升序</option>
									</select>
								</div>
							</div>
						</div>
						<div class="space30 visible-xs"></div>
						<div class="col-xs-12 col-sm-12 col-md-6 center-xs">
							<ul class="paginator li-m-r-l pull-right">
								<li><a class="round-icon" href="#" data-toggle="tooltip"
									data-title="Previous Page"><i class="iconfont-angle-left"></i>
								</a>
								</li>
								<li><a href="#">1</a>
								</li>
								<li><a href="#">2</a>
								</li>
								<li><a href="#">3</a>
								</li>
								<li><a href="#">4</a>
								</li>
								<li><a href="#">5</a>
								</li>
								<li><a class="round-icon" href="#" data-toggle="tooltip"
									data-title="Next Page"><i class="iconfont-angle-right"></i>
								</a>
								</li>
							</ul>
						</div>
					</div>
					</header>

					<div style="margin: 20px 10px;width: 960px;">
						<form method="post" id="fmSearch"
							action="ProductServlet?method=searchByName"></form>
						<div id="content"></div>
						<div id="divPage"></div>
					</div>
					</section> </section>
				</div>

			</div>
		</div>
		</main>
		<!-- // SITE MAIN CONTENT -->

		<!-- SITE FOOTER -->
		<footer class="page-footer"> <!-- WIDGET AREA -->
		<div class="widgets">

			<!-- FIRST ROW -->
			<div class="section">
				<div class="container">
					<div class="row">

						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-text">
							<h5 class="widget-title">Adidas系列产品</h5>
							<div class="widget-content">
								<ul class="menu iconed-menu unstyled">
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>鞋类</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>服装</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>配件</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>新品上市</a>
									</li>
								</ul>
							</div>
							</section>
						</div>

						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-text">
							<h5 class="widget-title">Adidas运动系列</h5>
							<div class="widget-content">
								<ul class="menu iconed-menu unstyled">
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>跑步</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>训练</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>足球</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>篮球</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>户外</a>
									</li>
								</ul>
							</div>
							</section>
						</div>

						<div class="space40 visible-sm clearfix"></div>

						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-menu">
							<h5 class="widget-title">帮助中心</h5>
							<div class="widget-content">
								<ul class="menu iconed-menu unstyled">
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>adiCLUB会员</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>门店查询</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>关于我们</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>企业社会责任</a>
									</li>
								</ul>
							</div>
							</section>
						</div>

						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-menu">
							<h5 class="widget-title">网站政策</h5>
							<div class="widget-content">
								<ul class="menu iconed-menu unstyled">
									<li><a href="useterms.jsp"><i
											class="iconfont-circle-blank menu-icon"></i>使用条款</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>隐私声明</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>物流配送规则</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>退货规则</a>
									</li>
									<li><a href="#"><i
											class="iconfont-circle-blank menu-icon"></i>adiCLUB会员规则</a>
									</li>
								</ul>
							</div>
							</section>
						</div>

					</div>
				</div>
			</div>
			<!-- // FIRST ROW -->

			<!-- SECOND ROW -->
			<div class="section">
				<div class="container">
					<div class="row">

						<div class="col-xs-12 col-sm-12 col-md-3">
							<section class="widget widget-menu">
							<h5 class="widget-title">联系信息</h5>
							<div class="widget-content">
								<ul class="menu iconed-list unstyled">
									<li><span class="list-icon"><i
											class="round-icon iconfont-map-marker"></i> </span>
										<div class="list-content">阿迪达斯体育（中国）有限公司</div>
									</li>
									<li><span class="list-icon"><i
											class="round-icon iconfont-phone"></i> </span>
										<div class="list-content">团购热线：+400-999-5999</div>
									</li>
									<li><span class="list-icon"><i
											class="round-icon iconfont-envelope-alt"></i> </span>
										<div class="list-content">团购邮箱：adidas.b2b@adidas.com（仅限采购金额10万元以上）</div>
									</li>
								</ul>
							</div>
							</section>
						</div>

						<div class="col-xs-12 col-sm-12 col-md-6">
							<section class="widget widget-ads">
							<div class="widget-content">
								<div class="center-xs">
									<div class="ads">
										<a href="#"> <img src="images/home/timg.jpg" alt="" /> </a>
										<div class="ads-caption bottom-right">
											<a href="#" class="btn btn-default btn-round"> <i
												class="round-icon iconfont-angle-right"></i> <span
												class="inline-middle">Show More</span> </a>
										</div>
									</div>
								</div>
							</div>
							</section>
						</div>

						<div class="col-xs-12 col-sm-12 col-md-3">
							<section class="widget widget-subscription">
							<h5 class="widget-title">网站购买付款方式</h5>
							<div class="widget-content">
								<ul class="menu iconed-list unstyled">
									<li><span class="list-icon"><i
											class="round-icon iconfont-phone"></i> </span>
										<div class="list-content">我们接受一下付款方式:支付宝</div>
									</li>
								</ul>
							</div>
							</section>
						</div>

					</div>
				</div>
			</div>
			<!-- // SECOND ROW -->

		</div>
		<!-- // WIDGET AREA -->

		<div class="footer-sub">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6">
						<div class="footer-links center-xs clearfix">
							<ul class="unstyled">
								<li><a href="#">中国</a>
								</li>
								<li><a href="#">隐私声明</a>
								</li>
								<li><a href="useterms.jsp">使用条款</a>
								</li>
							</ul>
						</div>
						<div class="space10"></div>
					</div>

					<div class="space40 visible-xs"></div>

					<div class="col-xs-12 col-sm-6 center-xs">
						<div class="pull-right">
							<div class="footer-links center-xs clearfix">
								<ul class="unstyled">
									<li><a href="#">苏ICP备14048805号-1 | ? 2017 adidas |
											苏公网安备 32059002001401号</a>
									</li>
								</ul>
							</div>
							<div class="space10"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		</footer>
		<!-- // SITE FOOTER -->
	</div>
	<!-- // PAGE WRAPPER -->

	<!-- Essential Javascripts -->
	<script src="js/minified.js"></script>
	<!-- // Essential Javascripts -->

	<!-- Particular Page Javascripts -->
	<script src="js/jquery.nouislider.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/products.js"></script>
	<!-- // Particular Page Javascripts -->
</body>

</html>