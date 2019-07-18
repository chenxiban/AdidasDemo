<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="stylesheet" href="css/innerpage.css">
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
</head>

<body class="home">

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
								</div> <!-- // SEARCH BOX --></li>
							<li data-toggle="sub-header" data-target="#sub-social">
								<!-- SOCIAL ICONS --> <a href="javascript:void(0);"
								id="social-icons"> <i class="iconfont-share round-icon"></i>
							</a>

								<div id="sub-social" class="sub-header">
									<ul class="social-list unstyled text-center">
										<li><a href="#"><i
												class="iconfont-facebook round-icon"></i> </a></li>
										<li><a href="#"><i
												class="iconfont-twitter round-icon"></i> </a></li>
										<li><a href="#"><i
												class="iconfont-google-plus round-icon"></i> </a></li>
										<li><a href="#"><i
												class="iconfont-pinterest round-icon"></i> </a></li>
										<li><a href="#"><i class="iconfont-rss round-icon"></i>
										</a></li>
									</ul>
								</div> <!-- // SOCIAL ICONS --></li>
							<li data-toggle="sub-header" data-target="#sub-cart">
								<!-- SHOPPING CART --> <a href="ShoppingServlet?method=getUid"
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
											<a href="ShoppingServlet?method=getUid"
												class="btn btn-default btn-round view-cart">View Cart</a>
										</div>
									</div>
								</div> <!-- // SHOPPING CART --></li>
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
									title="英">En</a></li>
								<li><a href="#" data-toggle="tooltip" title="中">Ch</a></li>
							</ul>
							<!-- // LANGUAGES -->
						</div>
						<div class="clearfix"></div>
						<!-- USER RELATED MENU -->
						<nav id="tiny-menu" class="clearfix">
						<ul class="user-menu">
							<li><a href="LoginServlet?method=SelectUser">我的账户</a></li>
							<li><a href="ShoppingServlet?method=getUid">我的愿望列表</a></li>
							<li><a href="login.jsp">登录</a></li>
							<li><a href="register.jsp">注册</a></li>
							<li><a href="#">订单追踪</a></li>
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
						<li class="active"><a href="index.jsp">首页</a></li>
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
													<img src="images/product/1001-neo.png" alt="" />
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
							</div> <!-- // MEGA MENU --></li>
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
													<img src="images/product/nvxie1.png" alt="" />
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
							</div> <!-- // MEGA MENU --></li>
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
							</div> <!-- // MEGA MENU --></li>
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
							</div> <!-- // MEGA MENU --></li>
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
							</div> <!-- // MEGA MENU --></li>
						<li><a href="#">miadidas定制</a></li>
					</ul>

					<!-- MOBILE MENU -->
					<div id="mobile-menu" class="dl-menuwrapper visible-xs visible-sm">
						<button class="dl-trigger">
							<i class="iconfont-reorder round-icon"></i>
						</button>
						<ul class="dl-menu">
							<li class="active"><a href="javsacript:void(0);">首页</a></li>
							<li><a href="javsacript:void(0);">男子</a>
								<ul class="dl-submenu">
									<li><a href="products.jsp">最新活动</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">新品上市</a></li>
											<li><a href="products.jsp">CLIMAHEAT</a></li>
											<li><a href="products.jsp">adidas neo生来好动</a></li>
											<li><a href="products.jsp">跑步IUltraBOOST</a></li>
											<li><a href="products.jsp">跑步IPureBOOST</a></li>
										</ul></li>
									<li><a href="products.jsp">鞋类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">Originals</a></li>
											<li><a href="products.jsp">跑步</a></li>
											<li><a href="products.jsp">adidas neo</a></li>
											<li><a href="products.jsp">篮球</a></li>
											<li><a href="products.jsp">户外</a></li>
											<li><a href="products.jsp">足球</a></li>
											<li><a href="products.jsp">训练</a></li>
										</ul></li>
									<li><a href="products.jsp">服饰类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">上衣</a></li>
											<li><a href="products.jsp">T恤</a></li>
											<li><a href="products.jsp">运动卫衣</a></li>
											<li><a href="products.jsp">运动下装</a></li>
											<li><a href="products.jsp">泳裤</a></li>
											<li><a href="products.jsp">比赛服</a></li>
										</ul></li>
									<li><a href="products.jsp">附配件类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">包</a></li>
											<li><a href="products.jsp">足球/篮球</a></li>
											<li><a href="products.jsp">运动装备</a></li>
										</ul></li>
								</ul></li>
							<li><a href="javsacript:void(0);">女子</a>

								<ul class="dl-submenu">
									<li><a href="products.jsp">最新活动</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">新品上市</a></li>
											<li><a href="products.jsp">CLIMAHEAT</a></li>
											<li><a href="products.jsp">adidas neo生来好动</a></li>
											<li><a href="products.jsp">跑步IUltraBOOST</a></li>
											<li><a href="products.jsp">跑步IPureBOOST</a></li>
										</ul></li>
									<li><a href="products.jsp">鞋类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">Originals</a></li>
											<li><a href="products.jsp">adidas neo</a></li>
											<li><a href="products.jsp">跑步</a></li>
											<li><a href="products.jsp">户外</a></li>
											<li><a href="products.jsp">网球</a></li>
											<li><a href="products.jsp">训练</a></li>
										</ul></li>
									<li><a href="products.jsp">服饰类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">上衣</a></li>
											<li><a href="products.jsp">T恤</a></li>
											<li><a href="products.jsp">运动卫衣</a></li>
											<li><a href="products.jsp">运动下装</a></li>
											<li><a href="products.jsp">运动胸衣</a></li>
											<li><a href="products.jsp">泳裤/比基尼</a></li>
											<li><a href="products.jsp">短裙/连衣裙</a></li>
											<li><a href="products.jsp">棉服/羽绒服</a></li>
										</ul></li>
									<li><a href="products.jsp">附配件类</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">包</a></li>
											<li><a href="products.jsp">球类</a></li>
											<li><a href="products.jsp">运动装备</a></li>
										</ul></li>
								</ul></li>
							<li><a href="javsacript:void(0);">童装</a>

								<ul class="dl-submenu">
									<li><a href="products.jsp">最新活动</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">新品上市</a></li>
											<li><a href="products.jsp">运动表现</a></li>
										</ul></li>
									<li><a href="products.jsp">大童:(8-14)</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">男大童:鞋类</a></li>
											<li><a href="products.jsp">女大童:鞋类</a></li>
											<li><a href="products.jsp">男大童:服装</a></li>
											<li><a href="products.jsp">女大童:服装</a></li>
										</ul></li>
									<li><a href="products.jsp">小童:(4-8)</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">男小童:鞋类</a></li>
											<li><a href="products.jsp">女小童:鞋类</a></li>
											<li><a href="products.jsp">男小童:服装</a></li>
											<li><a href="products.jsp">女小童:服装</a></li>
										</ul></li>
									<li><a href="products.jsp">婴幼儿:(0-4)</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">男婴童:鞋类</a></li>
											<li><a href="products.jsp">女婴童:鞋类</a></li>
											<li><a href="products.jsp">男婴童:服装</a></li>
											<li><a href="products.jsp">女婴童:服装</a></li>
										</ul></li>
								</ul></li>
							<li><a href="javsacript:void(0);">运动</a>

								<ul class="dl-submenu">
									<li><a href="products.jsp">跑步</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">跑步鞋</a></li>
											<li><a href="products.jsp">跑步服饰</a></li>
											<li><a href="products.jsp">UltraBOOST</a></li>
											<li><a href="products.jsp">UPrueBOOST</a></li>
										</ul></li>
									<li><a href="products.jsp">训练</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">训练鞋</a></li>
											<li><a href="products.jsp">训练服装</a></li>
											<li><a href="products.jsp">运动装备</a></li>
											<li><a href="products.jsp">CLima</a></li>
										</ul></li>
									<li><a href="products.jsp">篮球</a>
										<ul class="dl-submenu">
											<li><a href="products.jsp">篮球鞋</a></li>
											<li><a href="products.jsp">篮球服饰</a></li>
											<li><a href="products.jsp">James Harden</a></li>
											<li><a href="products.jsp">Damian Lillard</a></li>
										</ul></li>
									<li><a href="products.jsp">户外</a>
										<ul class="dl-submenu">
											<li><a href="#">游泳</a></li>
											<li><a href="#">户外鞋</a></li>
											<li><a href="#">户外服饰</a></li>
											<li><a href="#">运动装备</a></li>
											<li><a href="#">户外徒步系列</a></li>
											<li><a href="#">城市户外系列</a></li>
										</ul></li>
								</ul></li>

							<li><a href="javsacript:void(0);">品牌</a>

								<ul class="dl-submenu">
									<li><a href="products.jsp">originals</a>
										<ul class="dl-submenu">
											<li><a href="#">鞋类</a></li>
											<li><a href="#">服装</a></li>
											<li><a href="#">新品上市</a></li>
										</ul></li>
									<li><a href="products.jsp">ADIDAS ATHLETICS</a>
										<ul class="dl-submenu">
											<li><a href="#">男子服饰</a></li>
											<li><a href="#">女子服饰</a></li>
											<li><a href="#">新品上市</a></li>
										</ul></li>
									<li><a href="products.jsp">adidas neo</a>
										<ul class="dl-submenu">
											<li><a href="#">鞋类</a></li>
											<li><a href="#">服装</a></li>
											<li><a href="#">新品上市</a></li>
										</ul></li>
									<li><a href="products.jsp">sfello mocarfney</a>
										<ul class="dl-submenu">
											<li><a href="#">鞋类</a></li>
											<li><a href="#">服装</a></li>
											<li><a href="#">新品上市</a></li>
										</ul></li>
								</ul></li>
							<li><a href="javsacript:void(0);">miadidas定制</a></li>
						</ul>
					</div>
					<!-- // MOBILE MENU --> </nav>
					<!-- // SITE NAVIGATION MENU -->
				</div>
			</div>
		</div>
		<!-- // MAIN HEADER --> </header>

		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc unstyled clearfix">
						<li><a href="index.jsp">首页</a></li>
						<li class="active">商品结算</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->

		<!-- Login And register -->
		<link rel="stylesheet" href="css/bootstrapValidator.css" />
		<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
		<script type="text/javascript" src="js/bootstrapValidator.js"></script>
		<script type="text/javascript">
			$(function() {
				var price = 0;
				$(".zprice").each(function() {
					price += parseFloat($(this).val()); //将商品id存入数组中
				});

				$("#total2").html("￥" + price);
				//处理全选全不选效果
				$("#checkAll").click(function() {
					$(".chb").prop("checked", this.checked);
				});

				//处理全选全不选效果
				$("#checkAll2").click(function() {
					$(".chb2").prop("checked", this.checked);
				});

				$("#deladdrees")
						.click(
								function() {
									var id = [];

									$(".chb2:checked").each(function() {
										if (this.checked) {
											id.push(this.value); //将选中的商品id存入数组中
										}
									});

									if (id.length == 0) {
										alert("请选择您要删除的地址！");
										return;
									}

									var aids = [];

									$(".pids").each(function() {
										if (this.value != "") {
											aids.push(this.value); //将商品id存入数组中
										}
									});

									if (confirm("你确定要删除地址么？")) {
										var str = id.join(",");
										var str2 = aids.join(",");
										$
												.post(
														"ShoppingServlet?method=delAddrees",
														{
															id : str
														},
														function(r) {
															if (r) {
																alert("删除成功！");
																window.location.href = 'ShoppingServlet?method=jieSuan&arryid='
																		+ str2;
															} else {
																alert("删除失败，订单正在使用该地址！");
															}
														}, "json");
									}
								});

				//重置按钮事件  
				$("#chongzhi").click(function() {
					$("#shengfen").val("");
					$("#city").val("");
					$("#suname").val("");
					$("#saddrees").val("");
					$("#sphone").val("");
					$("#postcode5").val("");
				});

				$("#addaddrees")
						.click(
								function() {
									var province = $("#shengfen").val();
									var city = $("#city").val();
									var sname = $("#suname").val();
									var addre = $("#saddrees").val();
									var phone = $("#sphone").val();
									var postcode = $("#postcode5").val();
									if (sname == "") {
										alert("请填写收货人");
									} else if (province == "") {
										alert("请填写省份信息");
									} else if (city == "") {
										alert("请填写城市信息");
									} else if (phone == "") {
										alert("请填写收货电话");
									} else if (addre == "") {
										alert("请完善详细地址确保商品准确送达");
									} else {
										var aids = [];

										$(".pids").each(function() {
											if (this.value != "") {
												aids.push(this.value); //将商品id存入数组中
											}
										});

										if (confirm("你确定要保存地址吗？")) {
											var str2 = aids.join(",");
											var xianzhi = $("#xianzhi").val();
											if (xianzhi < 5) {
												$
														.post(
																"ShoppingServlet?method=addrees",
																{
																	province : province,
																	city : city,
																	sname : sname,
																	addre : addre,
																	phone : phone,
																	postcode : postcode
																},
																function(r) {
																	if (r) {
																		alert("添加地址成功");
																		$(
																				"#chongzhi")
																				.click();
																		window.location.href = 'ShoppingServlet?method=jieSuan&arryid='
																				+ str2;
																	} else {
																		alert("添加地址失败");
																		$(
																				"#chongzhi")
																				.click();
																		$(
																				"#mymodal")
																				.modal(
																						'hide');
																	}
																}, "json");
											} else {
												alert("您的收货地址已超过限制请删除后再添加");
											}

										}
									}
								});

			});

			function update(id) {
				var s1 = $("#s" + id).html();
				var c1 = $("#c" + id).html();
				var n1 = $("#n" + id).html();
				var a1 = $("#a" + id).html();
				var p1 = $("#p" + id).html();
				var pos1 = $("#pos" + id).html();
				$("#shengfen2").val(s1);
				$("#city2").val(c1);
				$("#suname2").val(n1);
				$("#saddrees2").val(a1);
				$("#sphone2").val(p1);
				$("#postcode6").val(pos1);
				$("#updateaddrees")
						.click(
								function() {
									var shengfen = $("#shengfen2").val();
									var city = $("#city2").val();
									var name = $("#suname2").val();
									var addrees = $("#saddrees2").val();
									var phone = $("#sphone2").val();
									var pos = $("#postcode6").val();

									var aids = [];

									$(".pids").each(function() {
										if (this.value != "") {
											aids.push(this.value); //将商品id存入数组中
										}
									});
									if (confirm("你确定要保存地址吗？")) {
										var str2 = aids.join(",");
										$
												.post(
														"ShoppingServlet?method=updateAdd",
														{
															shengfen : shengfen,
															city : city,
															name : name,
															aid : id,
															addrees : addrees,
															phone : phone,
															pos : pos
														},
														function(r) {
															if (r) {
																alert("修改地址成功");
																window.location.href = "ShoppingServlet?method=jieSuan&arryid="
																		+ str2;
															} else {
																alert("修改地址失败");
																$("#mymodal")
																		.modal(
																				'hide');
															}
														}, "json");
									}
								});
			}
			function updateMo(obj) {
				var aids = [];

				$(".pids").each(function() {
					if (this.value != "") {
						aids.push(this.value); //将商品id存入数组中
					}
				});
				if (confirm("你确定要设置为默认地址吗？")) {
					var str2 = aids.join(",");
					$
							.post(
									"UserInfoServlet?method=updateMo",
									{
										aid : obj
									},
									function(res) {
										if (res) {
											alert("设置成功");
											window.location.href = "ShoppingServlet?method=jieSuan&arryid="
													+ str2;
										} else {
											alert("设置失败");
										}
									}, "json");
				}
			}
		</script>
		<!-- // Login And register -->

		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">

		<div class="container">
			<div class="row">

				<div class="m-t-b clearfix">
					<!-- SIDEBAR -->
					<aside class="col-xs-12 col-sm-4 col-md-3"> <section
						class="side-section">
					<h3 class="uppercase text-bold">
						<span class="text-xs">您可能会感兴趣的页面</span>
					</h3>

					<ul class="nav nav-tabs nav-stacked">
						<li><a href="index.jsp">首页</a></li>
						<li><a href="products.jsp">商品</a></li>
						<li><a href="products.jsp">adidas neo</a></li>
						<li><a href="about-us.jsp">关于我们</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
					</section> <!-- PROMO -->
					<div class="promo inverse-background"
						style="background: url('images/home/z2.jpg') no-repeat; background-size: 100% 100%;">
						<div class="inner text-center np">
							<div class="ribbon">
								<h5 class="text-semibold uppercase nmb">ADIDAS NEO</h5>
								<div class="space10"></div>
								<a href="products.jsp" class="with-icon prepend-icon"><i
									class="iconfont-caret-right"></i><span> Shop Now</span> </a>
							</div>
						</div>
					</div>
					<!-- // PROMO --> </aside>
					<!-- // SIDEBAR -->

					<section class="col-xs-12 col-sm-8 col-md-9">
					<div class="panel-group checkout" id="checkout-collapse">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#checkout-collapse"
										href="#checkout-collapse1"> <span class="step">01</span>
										订单摘要 </a>
								</h4>
							</div>
							<div id="checkout-collapse1" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="row">
										<form class="form-horizontal" role="form">
											<table class="tbl-cart">
												<thead>
													<tr>
														<th>商品名称</th>
														<th style="width: 15%;">单价</th>
														<th style="width: 15%;">数量</th>
														<th class="hidden-xs" style="width: 15%;">总价</th>
													</tr>
												</thead>
												<tr class="hide empty-cart">
													<td colspan="5">看起来你的购物车是空的，试着看看我们 <a
														href="products.jsp">商品页</a>.
												</tr>
												<tbody>
													<c:choose>
														<c:when test="${empty sppList }">
														</c:when>
														<c:otherwise>
															<c:forEach items="${sppList}" var="p">
																<tr>
																	<td><a class="entry-thumbnail"
																		href="images/product/${p.picUrl}.png"
																		data-toggle="lightbox"> <img
																			src="images/product/${p.picUrl}.png" alt="" /> </a> <a
																		class="entry-title"
																		href="ProductServlet?method=productInfo&Pid=${p.pid}">${p.pname}</a>
																	</td>
																	<td><strong class="unit-price">${p.sellPrice}</strong>
																		<input type="hidden" class="pids" id="aaaa"
																		value="${p.id}" /></td>
																	<td><strong class="unit-price">${p.num}<input
																			type="hidden" class="num"
																			value="${p.num}"></strong>
																	</td>
																	<td class="hidden-xs"><strong
																		class="text-bold row-total">${p.num*p.sellPrice}<input
																			type="hidden" class="zprice"
																			value="${p.num*p.sellPrice}"> </strong>
																	</td>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
													</div>
												</tbody>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#checkout-collapse"
										href="#checkout-collapse2"> <span class="step">02</span>
										配送地址 </a>
								</h4>
							</div>
							<div id="checkout-collapse2" class="panel-collapse collapse">
								<div class="panel-body">
									<form class="paymethod" role="form">
										<table class="tbl-cart">
											<input type="button" class="btn btn-primary btn-round padder"
												id="deladdrees" value="删除地址">
											<a href="#mymodal" class="btn btn-primary btn-round padder"
												data-toggle="modal">添加地址</a>
											<thead>
												<tr>
													<th style="width: 1%;"></th>
													<th style="width: 5%;"><input type="checkbox"
														id="checkAll2" name="checkAll2" />全选</th>
													<th style="width: 10%;">省份</th>
													<th style="width: 10%;">城市/地区</th>
													<th style="width: 10%;">收货人</th>
													<th class="hidden-xs" style="width: 25%;">详细地址</th>
													<th class="hidden-xs" style="width: 10%;">电话号</th>
													<th class="hidden-xs" style="width: 10%;">邮编</th>
													<th class="hidden-xs" style="width: 10%;">操作</th>
												</tr>
											</thead>
											<tbody>
												<input type="hidden" id="xianzhi"
													value="${fn:length(adlists)}" />
												<c:choose>
													<c:when test="${empty adlists }">
													</c:when>
													<c:otherwise>
														<c:forEach items="${adlists}" var="p">
															<tr>
																<td><strong class="unit-price"></strong></td>
																<td><input type="checkbox" class="chb2" name="chb2"
																	value="${p.id}" id="id2" /></td>
																<td><strong class="unit-price" id="s${p.id}">${p.shengFen}
																</strong></td>
																<td><strong class="unit-price" id="c${p.id}">${p.city}</strong>
																</td>
																<td><strong class="unit-price" id="n${p.id}">${p.name}</strong>
																</td>
																<td><strong class="unit-price" id="a${p.id}">${p.addrees}</strong>
																</td>
																<td><strong class="unit-price" id="p${p.id}">${p.phone}</strong>
																</td>
																<td><strong class="unit-price" id="pos${p.id}">${p.postcode}</strong>
																</td>
																<td><a style="cursor:pointer;" data-toggle="modal"
																	id="${p.id}" onclick="updateMo('${p.addrees}')">默认</a>
																	<a href="#mymodal2" data-toggle="modal" id="${p.id}"
																	onclick="update('${p.id}')">修改</a></td>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
												</div>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#checkout-collapse"
										href="#checkout-collapse3"> <span class="step">03</span>
										配送方式 </a>
								</h4>
							</div>
							<div id="checkout-collapse3" class="panel-collapse collapse">
								<div class="panel-body">
									<form class="paymethod" role="form">
										<table class="tbl-cart">
											<tbody>
												<tr>
													<td></td>
													<td><strong class="unit-price">普通达：3-5个工作日（顺丰专送）免运费</strong>
													</td>
													<td></td>
												</tr>
												</div>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#checkout-collapse"
										href="#checkout-collapse4"> <span class="step">04</span>
										确认下单 </a>
								</h4>
							</div>
							<div id="checkout-collapse4" class="panel-collapse collapse">
								<div class="panel-body">
									<form id="defaultForm5" method="post" class="form-horizontal">
										<div class="row">
											<div class="col-xs-12 col-sm-6 pull-left center-sm">
												<div class="form-group">
													<label class="col-lg-3 control-label">留言备注</label>
													<div class="col-lg-9">
														<textarea class="form-control limited" id="remark"
															name="remark" value=""></textarea>
														<br /> <a href="products.jsp"
															class="btn btn-primary btn-round uppercase">继续购物</a>
													</div>
												</div>
											</div>
											<div class="col-xs-12 col-sm-6 pull-right center-sm">
												<table class="shop-summary">
													<tr class="total">
														<th>运费:</th>
														<td>￥0.00</td>
													</tr>
													<tr class="total">
														<th>总价:</th>
														<td id="total2"></td>
													</tr>
													<tr>
														<th></th>
														<td><input type="button"
															class="btn btn-primary btn-round padder" value="结账下单">
														</td>
													</tr>
												</table>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
				</section>
			</div>

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
										class="iconfont-circle-blank menu-icon"></i>鞋类</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>服装</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>配件</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>新品上市</a></li>
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
										class="iconfont-circle-blank menu-icon"></i>跑步</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>训练</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>足球</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>篮球</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>户外</a></li>
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
										class="iconfont-circle-blank menu-icon"></i>adiCLUB会员</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>门店查询</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>关于我们</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>企业社会责任</a></li>
							</ul>
						</div>
						</section>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-3">
						<section class="widget widget-menu">
						<h5 class="widget-title">网站政策</h5>
						<div class="widget-content">
							<ul class="menu iconed-menu unstyled">
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>使用条款</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>隐私声明</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>物流配送规则</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>退货规则</a></li>
								<li><a href="#"><i
										class="iconfont-circle-blank menu-icon"></i>adiCLUB会员规则</a></li>
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
									<div class="list-content">阿迪达斯体育（中国）有限公司</div></li>
								<li><span class="list-icon"><i
										class="round-icon iconfont-phone"></i> </span>
									<div class="list-content">团购热线：+400-999-5999</div></li>
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
								<li>
									<div class="list-content">
										我们接受一下付款方式:<img src="images/home/zhifufangshi.jpg">
									</div></li>
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
							<li><a href="#">中国</a></li>
							<li><a href="#">隐私声明</a></li>
							<li><a href="#">使用条款</a></li>
						</ul>
					</div>
					<div class="space10"></div>
				</div>

				<div class="space40 visible-xs"></div>

				<div class="col-xs-12 col-sm-6 center-xs">
					<div class="pull-right">
						<div class="footer-links center-xs clearfix">
							<ul class="unstyled">
								<li><a href="#">苏ICP备14048805号-1 | © 2017 adidas |
										苏公网安备 32059002001401号</a></li>
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
	<!--弹出的模态框-->
	<div id="mymodal" class="modal fade bs-examlpe-modal-sm">
		<!-- modal固定布局，上下左右都是0表示充满全屏，支持移动设备上使用触摸方式进行滚动。。-->
		<div class="modal-dialog modal-sm">
			<!-- modal-dialog默认相对定位，自适应宽度，大于768px时宽度600，居中-->
			<div class="modal-content">
				<!-- modal-content模态框的边框、边距、背景色、阴影效果。-->
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">
						<img src="images/favicon.png" alt="" /> <br /> 阿迪达斯官网
					</h4>
				</div>
				<div class="media-body">
					<form id="defaultFormti" method="post" class="form-horizontal">
						<div class="form-group">
							<label class="col-lg-3 control-label">收货人</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" id="suname"
									name="suname" value="${p.name}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">省份</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" id="shengfen"
									name="shengfen" value="${p.shengFen}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">城市/地区</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" id="city" name="city"
									value="${p.city}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">电话</label>
							<div class="col-lg-5">
								<input type="phone" class="form-control" id="sphone"
									name="sphone" value="${p.phone}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">邮编</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" min="6" max="6"
									id="postcode5" name="postcode5" value="${p.postcode}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">详细地址</label>
							<div class="col-lg-5">
								<textarea class="form-control limited" id="saddrees"
									name="saddrees" value="${p.addrees}"></textarea>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-9 col-lg-offset-3">
								<input type="button" class="btn btn-primary btn-round padder"
									id="addaddrees" value="添加地址"> <input type="button"
									class="btn btn-primary btn-round padder" id="chongzhi"
									value="重置">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>

	</div>

	<!--弹出的模态框-->
	<div id="mymodal2" class="modal fade bs-examlpe-modal-sm">
		<!-- modal固定布局，上下左右都是0表示充满全屏，支持移动设备上使用触摸方式进行滚动。。-->
		<div class="modal-dialog modal-sm">
			<!-- modal-dialog默认相对定位，自适应宽度，大于768px时宽度600，居中-->
			<div class="modal-content">
				<!-- modal-content模态框的边框、边距、背景色、阴影效果。-->
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">
						<img src="images/favicon.png" alt="" /> <br /> 阿迪达斯官网
					</h4>
				</div>
				<div class="media-body">
					<form id="defaultFormti" method="post" class="form-horizontal">
						<div class="form-group">
							<label class="col-lg-3 control-label">收货人</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" id="suname2"
									name="suname2" value="" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">省份</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" id="shengfen2"
									name="shengfen2" value="" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">城市/地区</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" id="city2" name="city2"
									value="" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">电话</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" id="sphone2"
									name="sphone2" value="" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">邮编</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" min="6" max="6"
									id="postcode6" name="postcode6" value="" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">详细地址</label>
							<div class="col-lg-5">
								<textarea class="form-control limited" id="saddrees2"
									name="saddrees2" value=""></textarea>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-9 col-lg-offset-3">
								<input type="button" class="btn btn-primary btn-round padder"
									id="updateaddrees" value="修改地址">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>

	</div>
	<!-- // PAGE WRAPPER -->

	<!-- Essential Javascripts -->
	<script src="js/minified.js"></script>
	<!-- // Essential Javascripts -->

	<!-- Particular Page Javascripts -->
	<script src="js/products.js"></script>
	<!-- // Particular Page Javascripts -->

	<script src="js/distpicker.data.js"></script>
	<script src="js/distpicker.js"></script>
	<script src="js/main.js"></script>

</body>

</html>