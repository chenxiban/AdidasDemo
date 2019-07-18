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
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

		<!-- Favorite Icons -->
		<link rel="icon" href="img/favicon/favicon.html" type="image/x-icon" />
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/favicon/apple-touch-icon-144x144-precomposed.html">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/apple-touch-icon-72x72-precomposed.html">
		<link rel="apple-touch-icon-precomposed" href="img/favicon/apple-touch-icon-precomposed.html">
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
			window.jQuery ||
				document.write('<script src="js/jquery.min.js"><\/script>');
		</script>
		<script src="js/modernizr.min.js"></script>
		<!-- PARTICULAR PAGES CSS FILES -->
		<link rel="stylesheet" href="css/innerpage.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/owl.theme.css">
		<!-- // PARTICULAR PAGES CSS FILES -->
		<link rel="stylesheet" href="css/responsive.css">
	</head>

	<body class="home">

		<!-- PAGE WRAPPER -->
		<div id="page-wrapper">

			<!-- SITE HEADER -->
			<header id="site-header" role="banner">
				<!-- HEADER TOP -->
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
									</c:choose>
									</span>
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
													<label for="input-search" class="placeholder">搜索…</label> <input type="text" name="q" id="input-search" class="round-input full-width" required />
												</div>
											</form>
										</div>
										<!-- // SEARCH BOX -->
									</li>
									<li data-toggle="sub-header" data-target="#sub-social">
										<!-- SOCIAL ICONS -->
										<a href="javascript:void(0);" id="social-icons"> <i class="iconfont-share round-icon"></i>
										</a>

										<div id="sub-social" class="sub-header">
											<ul class="social-list unstyled text-center">
												<li>
													<a href="#"><i class="iconfont-facebook round-icon"></i> </a>
												</li>
												<li>
													<a href="#"><i class="iconfont-twitter round-icon"></i> </a>
												</li>
												<li>
													<a href="#"><i class="iconfont-google-plus round-icon"></i> </a>
												</li>
												<li>
													<a href="#"><i class="iconfont-pinterest round-icon"></i> </a>
												</li>
												<li>
													<a href="#"><i class="iconfont-rss round-icon"></i>
													</a>
												</li>
											</ul>
										</div>
										<!-- // SOCIAL ICONS -->
									</li>
									<li data-toggle="sub-header" data-target="#sub-cart">
										<!-- SHOPPING CART -->
										<a href="ShoppingServlet?method=getUid" id="total-cart"> <i class="iconfont-shopping-cart round-icon"></i> </a>

										<div id="sub-cart" class="sub-header">
											<div class="cart-header">
												<span>你的购物车现在是空的</span> <small><a
											href="ShoppingServlet?method=getUid">(See All)</a> </small>
											</div>
											<ul class="cart-items product-medialist unstyled clearfix"></ul>
											<div class="cart-footer">
												<div class="cart-total clearfix">
													<span class="pull-left uppercase">Total</span> <span class="pull-right total">$ 0</span>
												</div>
												<div class="text-right">
													<a href="ShoppingServlet?method=getUid" class="btn btn-default btn-round view-cart">View Cart</a>
												</div>
											</div>
										</div>
										<!-- // SHOPPING CART -->
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
				<!-- // HEADER TOP -->
				<!-- TyPe -->
				<script src="js/type.js"></script>
				<!-- // TyPe -->
				<!-- MAIN HEADER -->
				<div class="main-header-wrapper">
					<div class="container">
						<div class="main-header">
							<!-- CURRENCY / LANGUAGE / USER MENU -->
							<div class="actions">
								<div class="center-xs">
									<ul class="option-list unstyled">
										<li class="active">
											<a href="#" data-toggle="tooltip" title="英">En</a>
										</li>
										<li>
											<a href="#" data-toggle="tooltip" title="中">Ch</a>
										</li>
									</ul>
									<!-- // LANGUAGES -->
								</div>
								<div class="clearfix"></div>
								<!-- USER RELATED MENU -->
								<nav id="tiny-menu" class="clearfix">
									<ul class="user-menu">
										<li>
											<a href="LoginServlet?method=SelectUser">我的账户</a>
										</li>
										<li>
											<a href="ShoppingServlet?method=getUid">我的愿望列表</a>
										</li>
										<li>
											<a href="login.jsp">登录</a>
										</li>
										<li>
											<a href="register.jsp">注册</a>
										</li>
										<li>
											<a href="#">订单追踪</a>
										</li>
									</ul>
								</nav>
								<!-- // USER RELATED MENU -->
							</div>
							<!-- // CURRENCY / LANGUAGE / USER MENU -->
							<!-- SITE LOGO -->
							<div class="logo-wrapper">
								<a href="index.jsp" class="logo" title="阿迪达斯官方旗舰店"> <img src="images/logo.png" alt="GFashion - Responsive e-commerce jsp Template" /> </a>
							</div>
							<!-- // SITE LOGO -->
							<!-- SITE NAVIGATION MENU -->
							<nav id="site-menu" role="navigation">
								<ul class="main-menu hidden-sm hidden-xs">
									<li class="active">
										<a href="index.jsp">首页</a>
									</li>
									<li>
										<a href="index-2.jsp">男子</a>
										<!-- MEGA MENU -->
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
													<a href="products.jsp" class="btn btn-default btn-round">Go to Shop →</a>
												</div>

											</div>
										</div>
										<!-- // MEGA MENU -->
									</li>
									<li>
										<a href="index-3.jsp">女子</a>
										<!-- MEGA MENU -->
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
													<a href="products.jsp" class="btn btn-default btn-round">Go to Shop →</a>
												</div>

											</div>
										</div>
										<!-- // MEGA MENU -->
									</li>
									<li>
										<a href="index-4.jsp">童装</a>
										<!-- MEGA MENU -->
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
													<a href="products.jsp" class="btn btn-default btn-round">Go to Shop →</a>
												</div>

											</div>
										</div>
										<!-- // MEGA MENU -->
									</li>
									<li>
										<a href="#">运动</a>
										<!-- MEGA MENU -->
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
										</div>
										<!-- // MEGA MENU -->
									</li>
									<li>
										<a href="#">品牌</a>
										<!-- MEGA MENU -->
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
										</div>
										<!-- // MEGA MENU -->
									</li>
									<li>
										<a href="#">miadidas定制</a>
									</li>
								</ul>

								<!-- MOBILE MENU -->
								<div id="mobile-menu" class="dl-menuwrapper visible-xs visible-sm">
									<button class="dl-trigger">
							<i class="iconfont-reorder round-icon"></i>
						</button>
									<ul class="dl-menu">
										<li class="active">
											<a href="javsacript:void(0);">首页</a>
										</li>
										<li>
											<a href="javsacript:void(0);">男子</a>
											<ul class="dl-submenu">
												<li>
													<a href="products.jsp">最新活动</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">新品上市</a>
														</li>
														<li>
															<a href="products.jsp">CLIMAHEAT</a>
														</li>
														<li>
															<a href="products.jsp">adidas neo生来好动</a>
														</li>
														<li>
															<a href="products.jsp">跑步IUltraBOOST</a>
														</li>
														<li>
															<a href="products.jsp">跑步IPureBOOST</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">鞋类</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">Originals</a>
														</li>
														<li>
															<a href="products.jsp">跑步</a>
														</li>
														<li>
															<a href="products.jsp">adidas neo</a>
														</li>
														<li>
															<a href="products.jsp">篮球</a>
														</li>
														<li>
															<a href="products.jsp">户外</a>
														</li>
														<li>
															<a href="products.jsp">足球</a>
														</li>
														<li>
															<a href="products.jsp">训练</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">服饰类</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">上衣</a>
														</li>
														<li>
															<a href="products.jsp">T恤</a>
														</li>
														<li>
															<a href="products.jsp">运动卫衣</a>
														</li>
														<li>
															<a href="products.jsp">运动下装</a>
														</li>
														<li>
															<a href="products.jsp">泳裤</a>
														</li>
														<li>
															<a href="products.jsp">比赛服</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">附配件类</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">包</a>
														</li>
														<li>
															<a href="products.jsp">足球/篮球</a>
														</li>
														<li>
															<a href="products.jsp">运动装备</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<a href="javsacript:void(0);">女子</a>

											<ul class="dl-submenu">
												<li>
													<a href="products.jsp">最新活动</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">新品上市</a>
														</li>
														<li>
															<a href="products.jsp">CLIMAHEAT</a>
														</li>
														<li>
															<a href="products.jsp">adidas neo生来好动</a>
														</li>
														<li>
															<a href="products.jsp">跑步IUltraBOOST</a>
														</li>
														<li>
															<a href="products.jsp">跑步IPureBOOST</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">鞋类</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">Originals</a>
														</li>
														<li>
															<a href="products.jsp">adidas neo</a>
														</li>
														<li>
															<a href="products.jsp">跑步</a>
														</li>
														<li>
															<a href="products.jsp">户外</a>
														</li>
														<li>
															<a href="products.jsp">网球</a>
														</li>
														<li>
															<a href="products.jsp">训练</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">服饰类</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">上衣</a>
														</li>
														<li>
															<a href="products.jsp">T恤</a>
														</li>
														<li>
															<a href="products.jsp">运动卫衣</a>
														</li>
														<li>
															<a href="products.jsp">运动下装</a>
														</li>
														<li>
															<a href="products.jsp">运动胸衣</a>
														</li>
														<li>
															<a href="products.jsp">泳裤/比基尼</a>
														</li>
														<li>
															<a href="products.jsp">短裙/连衣裙</a>
														</li>
														<li>
															<a href="products.jsp">棉服/羽绒服</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">附配件类</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">包</a>
														</li>
														<li>
															<a href="products.jsp">球类</a>
														</li>
														<li>
															<a href="products.jsp">运动装备</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<a href="javsacript:void(0);">童装</a>

											<ul class="dl-submenu">
												<li>
													<a href="products.jsp">最新活动</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">新品上市</a>
														</li>
														<li>
															<a href="products.jsp">运动表现</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">大童:(8-14)</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">男大童:鞋类</a>
														</li>
														<li>
															<a href="products.jsp">女大童:鞋类</a>
														</li>
														<li>
															<a href="products.jsp">男大童:服装</a>
														</li>
														<li>
															<a href="products.jsp">女大童:服装</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">小童:(4-8)</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">男小童:鞋类</a>
														</li>
														<li>
															<a href="products.jsp">女小童:鞋类</a>
														</li>
														<li>
															<a href="products.jsp">男小童:服装</a>
														</li>
														<li>
															<a href="products.jsp">女小童:服装</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">婴幼儿:(0-4)</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">男婴童:鞋类</a>
														</li>
														<li>
															<a href="products.jsp">女婴童:鞋类</a>
														</li>
														<li>
															<a href="products.jsp">男婴童:服装</a>
														</li>
														<li>
															<a href="products.jsp">女婴童:服装</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<a href="javsacript:void(0);">运动</a>

											<ul class="dl-submenu">
												<li>
													<a href="products.jsp">跑步</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">跑步鞋</a>
														</li>
														<li>
															<a href="products.jsp">跑步服饰</a>
														</li>
														<li>
															<a href="products.jsp">UltraBOOST</a>
														</li>
														<li>
															<a href="products.jsp">UPrueBOOST</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">训练</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">训练鞋</a>
														</li>
														<li>
															<a href="products.jsp">训练服装</a>
														</li>
														<li>
															<a href="products.jsp">运动装备</a>
														</li>
														<li>
															<a href="products.jsp">CLima</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">篮球</a>
													<ul class="dl-submenu">
														<li>
															<a href="products.jsp">篮球鞋</a>
														</li>
														<li>
															<a href="products.jsp">篮球服饰</a>
														</li>
														<li>
															<a href="products.jsp">James Harden</a>
														</li>
														<li>
															<a href="products.jsp">Damian Lillard</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">户外</a>
													<ul class="dl-submenu">
														<li>
															<a href="#">游泳</a>
														</li>
														<li>
															<a href="#">户外鞋</a>
														</li>
														<li>
															<a href="#">户外服饰</a>
														</li>
														<li>
															<a href="#">运动装备</a>
														</li>
														<li>
															<a href="#">户外徒步系列</a>
														</li>
														<li>
															<a href="#">城市户外系列</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>

										<li>
											<a href="javsacript:void(0);">品牌</a>

											<ul class="dl-submenu">
												<li>
													<a href="products.jsp">originals</a>
													<ul class="dl-submenu">
														<li>
															<a href="#">鞋类</a>
														</li>
														<li>
															<a href="#">服装</a>
														</li>
														<li>
															<a href="#">新品上市</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">ADIDAS ATHLETICS</a>
													<ul class="dl-submenu">
														<li>
															<a href="#">男子服饰</a>
														</li>
														<li>
															<a href="#">女子服饰</a>
														</li>
														<li>
															<a href="#">新品上市</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">adidas neo</a>
													<ul class="dl-submenu">
														<li>
															<a href="#">鞋类</a>
														</li>
														<li>
															<a href="#">服装</a>
														</li>
														<li>
															<a href="#">新品上市</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="products.jsp">sfello mocarfney</a>
													<ul class="dl-submenu">
														<li>
															<a href="#">鞋类</a>
														</li>
														<li>
															<a href="#">服装</a>
														</li>
														<li>
															<a href="#">新品上市</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<a href="javsacript:void(0);">miadidas定制</a>
										</li>
									</ul>
								</div>
								<!-- // MOBILE MENU -->
							</nav>
							<!-- // SITE NAVIGATION MENU -->
						</div>
					</div>
				</div>
				<!-- // MAIN HEADER -->
			</header>
			<!-- // SITE HEADER -->

			<!-- BREADCRUMB -->
			<div class="breadcrumb-container">
				<div class="container">
					<div class="relative">
						<ul class="bc unstyled clearfix">
							<li>
								<a href="index.jsp">首页</a>
							</li>
							<li class="active">购物车</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- // BREADCRUMB -->
			<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
			<script type="text/javascript">
				$(function() {
					var zPrices = 0;
					$("#totol").html(zPrices);
					
					//处理全选全不选效果
					$("#checkAll").click(function() {
						$(".chb").prop("checked", this.checked);
						
						if (this.checked) {
							totalPrice(0);
						} else {
							var zPrices = 0;
							$("#totol").html(zPrices);
						}
					});

					//单击删除时
					$("#btnDel").click(function() {
						var id = [];
						$(".chb:checked").each(function() {
							if(this.checked) {
								id.push(this.name); //将选中的商品id存入数组中
							}
						});
						
						if(id.length == 0) {
							alert("请首先勾选要删除的商品信息");
							return;
						}
						
						if(confirm("你确定要删除吗？")) {
							var str = id.join(",");
							$.post("ShoppingServlet?method=delShop", {
								id: str
							}, function(res) {
								if(res) {
									alert("删除成功");
									window.location.href = "ShoppingServlet?method=getUid";
								} else {
									alert("删除失败");
								}

							}, "json");
						}
					});

					//清空购物车
					$("#qingkong").click(function() {
						if(confirm("你确定要删除吗？")) {
							$.post("ShoppingServlet?method=delShopping", {}, function(r) {
								if(r == "true") {
									alert("清空购物车成功！")
									window.location.href = "ShoppingServlet?method=getUid";
								}
								if(r == "false") {
									alert("清空购物车失败！")
								}
								if(r == "kong") {
									alert("当前购物车没有商品！")
								}
							});
						}
					});

				});

				function changeNum(num, id, totalNum) {
					var reg = /^\d+$/;

					num = parseInt(num);

					if(!reg.test(num)) {
						alert("数量不能为空");
						num = $(".num" + id).val(1);
						$(".num" + id).val(1);
						return;
					}

					if(num * 1 < 1) {
						alert("数量不能小于1");
						num = $(".num" + id).val(1);
						$(".num" + id).val(1);
						return;
					}

					if(num * 1 > totalNum) {
						alert("数量不能大于总库存");
						num = $(".num" + id).val(totalNum);
						$(".num" + id).val(totalNum * 1);
						return;
					}

					$.post("ShoppingServlet?method=upNum", {
						id: id,
						num: num,
					}, function(r) {
						if(r == "true") {
							window.location.href = "ShoppingServlet?method=getUid";
						}
					});

				}

				function jianPro(obj) {
					var sum = $("#num" + obj).val() * 1;
					var price = $("#price" + obj).html();
					if(sum <= 0) {
						$("#num" + obj).val(1);
					} else if(sum * 1 - 1) {
						$("#num" + obj).val(sum - 1);
					}

					if(sum == 2) {
						$("#zprice" + obj).html((sum - 1) * price);
					} else {
						$("#zprice" + obj).html((sum) * price);
					}

					var id = obj;
					var sum2 = $("#num" + obj).val();
					$.post("ShoppingServlet?method=upNum", {
						id: obj,
						sum2: sum2,
					}, function(r) {
						if(r == "true") {
							window.location.href = "ShoppingServlet?method=getUid";
						}
						if(r == "false") {
							alert("数量修改失败");
						}
					});
					return;
				}

				function jiaPro(obj, totalNum) {
					var sum = $("#num" + obj).val() * 1;
					var price = $("#price" + obj).html();
					if(sum == totalNum) {
						alert("超出库存");
						return;
					}
					$("#num" + obj).val(sum + 1);

					$("#zprice" + obj).html((sum + 1) * price);
					var id = obj;
					var sum2 = $("#num" + obj).val();
					$.post("ShoppingServlet?method=upNum", {
						id: id,
						sum2: sum2,
					}, function(r) {
						if(r == "true") {
							window.location.href = "ShoppingServlet?method=getUid";
						}
						if(r == "false") {
							alert("数量修改失败");
						}
					});
					return;
				}

				var zPrices = 0,
					shuNum = 0;

				function totalPrice(obj) {
					zPrices = 0;

					$(".chb:checked").each(function() {
						if(this.checked) {
							zPrices += parseFloat($(this).val());
						} 
					});
					$("#totol").html(zPrices);

				}

				function totolPrice(obj) {
					var idd = [];
					
					$(".chb:checked").each(function() {
						if(this.checked) {
							idd.push(parseInt(this.name)); //将选中的商品id存入数组中
						}
					});
					
					if(idd.length == 0) {
						alert("请首先勾选要购买的商品");
					}
					if(idd.length != 0) {
						var str = idd.join(",");
						$("#shopping").attr({action:"ShoppingServlet?method=jieSuan&arryid="+str});
						$("#shopping").submit();
					}

				}
			</script>
			<!-- SITE MAIN CONTENT -->
			<main id="main-content" role="main">
				<section class="section">
						<div class="container">
							<form action="" method="post" id="shopping">
							<table class="tbl-cart">
								<thead>
									<tr>
										<th>商品名称</th>
										<th style="width: 15%;">单价</th>
										<th style="width: 15%;">数量</th>
										<th class="hidden-xs" style="width: 15%;">总价</th>
										<!-- <th class="hidden-xs" style="width: 10%;">移除</th> -->
										<th style="width: 10%;"><input type="checkbox" id="checkAll" name="checkAll" />全选</th>
									</tr>
								</thead>
								<tr class="hide empty-cart">
									<td colspan="5">看起来你的购物车是空的，试着看看我们
										<a href="products.jsp">商品页</a>.

								</tr>
								<tbody>
									<c:choose>
										<c:when test="${empty spList }">
										</c:when>
										<c:otherwise>
											<c:forEach items="${spList}" var="p">
												<tr>
													<td>
														<a class="entry-thumbnail" href="images/product/${p.picUrl}.png" data-toggle="lightbox">
															<img src="images/product/${p.picUrl}.png" alt="" /> </a>
														<a class="entry-title" href="ProductServlet?method=productInfo&Pid=${p.pid}">${p.pname}</a>
													</td>
													<td><span class="unit-price" id="price${p.id}">￥${p.sellPrice}</span>
													</td>
													<td>
														<div class="qty-btn-group">
															<button type="button" class="down" id="jian${p.id}" onclick="jianPro('${p.id}')">
												<i class="iconfont-caret-down inline-middle"></i>
											</button>
															<input type="text" class="num${p.id}" id="num${p.id}" value="${p.num}" onchange="changeNum(this.value,${p.id},${p.poductStore})" />
															<button type="button" class="up" id="jia${p.id}" onclick="jiaPro('${p.id}','${p.poductStore}')">
												<i class="iconfont-caret-up inline-middle"></i>
											</button>
														</div>
													</td>
													<td class="hidden-xs"><strong class="text-bold row-total" id="zprice${p.id}">￥${p.num*p.sellPrice}</strong></td>
													<!-- <td class="hidden-xs">
													<button type="button" class="close" aria-hidden="true">×</button>
												</td> -->
													<td><input type="checkbox" class="chb" name="${p.id}" value="${p.num*p.sellPrice}" id="id" onchange="totalPrice(${p.num*p.sellPrice})" /></td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
						</tbody>
						</table>
						</form>
						<div class="pull-left coupon m-b">
							<div class="input-group">
								<input type="button" id="qingkong" class="btn btn-primary btn-round padder" value="清空购物车"> <input type="button" id="btnDel" class="btn btn-primary btn-round padder" value="删除">
							</div>
						</div>

						<div class="shopcart-total pull-right clearfix">
							<div class="cart-total text-bold m-b-lg clearfix">
								<span class="pull-left">总计:</span> <span class="pull-right" id="totol"></span>
							</div>
							<div class="text-center">
								<input type="button" class="btn btn-round btn-default uppercase" value="Proceed to checkout(结算)" onclick="totolPrice('${p.id}')">
								<br>
							</div>
						</div>
						</div>
				</section>
				<!-- // PROMO BOXES -->
				<script type="text/javascript" src="js/product.js">
				</script>
				<!-- NEW ARRIVAL PRODUCTS -->
				<section class="section new-arrivals visible-items-5">
					<div class="container">
						<div class="row">
							<header class="section-header clearfix col-sm-offset-3 col-sm-6">
								<h3 class="section-title">本月主推</h3>
								<input type="hidden" id="posid" value="7" /> </header>

							<div class="clearfix"></div>

							<!-- BEGIN CAROUSEL -->
							<div id="new-arrivals-products" class="add-cart" data-product=".product" data-thumbnail=".entry-media .thumb" data-title=".entry-title > a" data-url=".entry-title > a" data-price=".entry-price > .price">

								<div class="owl-controls clickable outside">
									<div class="owl-buttons">
										<div class="owl-prev">
											<i class="iconfont-angle-left"></i>
										</div>
										<div class="owl-next">
											<i class="iconfont-angle-right"></i>
										</div>
									</div>
								</div>

								<br> <br>
								<div class="owl-carousel owl-theme" id="product-content" data-visible-items="5" data-navigation="true" data-lazyload="true">

									<div class="product" data-product-id="9">
										<div class="entry-media">
											<img data-src="images/men/jacket/271865-0286_1_t.jpg" alt="" class="lazyOwl thumb" />
											<div class="hover">

												<ul class="icons unstyled">
													<li>
														<div class="circle ribbon ribbon-sale">Sale</div>
													</li>
													<li>
														<a href="images/men/jacket/271865-0286_1.jpg" class="circle" data-toggle="lightbox"> </a>
													</li>
													<li>
														<a href="#" class="circle add-to-cart"> </a>
													</li>
												</ul>
												<div class="rate-bar">
													<input type="range" value="4.5" step="0.5" id="backing9" />

												</div>
											</div>
										</div>
										<div class="entry-main">
											<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
											<div class="entry-price">
												<strong class="price">$ 350.00</strong>
											</div>
										</div>
									</div>

									<div class="product" data-product-id="10">
										<div class="entry-media">
											<img data-src="images/men/jacket/634082-0014_1_t.jpg" alt="" class="lazyOwl thumb" />
											<div class="hover">

												<ul class="icons unstyled">
													<li>
														<a href="images/men/jacket/634082-0014_1.jpg" class="circle" data-toggle="lightbox"> </a>
													</li>
													<li>
														<a href="#" class="circle add-to-cart"> </a>
													</li>
												</ul>
												<div class="rate-bar">
													<input type="range" value="4" step="0.5" id="backing10" />

												</div>
											</div>
										</div>
										<div class="entry-main">
											<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
											<div class="entry-price">
												<strong class="price">$ 350.00</strong>
											</div>
										</div>
									</div>

									<div class="product" data-product-id="11">
										<div class="entry-media">
											<img data-src="images/men/jacket/217365-0014_1_t.jpg" alt="" class="lazyOwl thumb" />
											<div class="hover">

												<ul class="icons unstyled">
													<li>
														<div class="circle ribbon ribbon-new">New</div>
													</li>
													<li>
														<a href="images/men/jacket/217365-0014_1.jpg" class="circle" data-toggle="lightbox"> </a>
													</li>
													<li>
														<a href="#" class="circle add-to-cart"> </a>
													</li>
												</ul>
												<div class="rate-bar">
													<input type="range" value="3.5" step="0.5" id="backing11" />

												</div>
											</div>
										</div>
										<div class="entry-main">
											<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
											<div class="entry-price">
												<strong class="price">$ 450.00</strong>
											</div>
										</div>
									</div>

									<div class="product" data-product-id="12">
										<div class="entry-media">
											<img data-src="images/men/blazer/105797-1056_1_t.jpg" alt="" class="lazyOwl thumb" />
											<div class="hover">

												<ul class="icons unstyled">
													<li>
														<a href="images/men/blazer/105797-1056_1.jpg" class="circle" data-toggle="lightbox"> </a>
													</li>
													<li>
														<a href="#" class="circle add-to-cart"> </a>
													</li>
												</ul>
												<div class="rate-bar">
													<input type="range" value="5" step="0.5" id="backing12" />

												</div>
											</div>
										</div>
										<div class="entry-main">
											<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
											<div class="entry-price">
												<strong class="price">$ 350.00</strong>
											</div>
										</div>
									</div>

									<div class="product" data-product-id="13">
										<div class="entry-media">
											<img data-src="images/men/jumper/271866-0014_1_t.jpg" alt="" class="lazyOwl thumb" />
											<div class="hover">

												<ul class="icons unstyled">
													<li>
														<div class="circle ribbon ribbon-sale">Sale</div>
													</li>
													<li>
														<a href="images/men/jumper/271866-0014_1.jpg" class="circle" data-toggle="lightbox"> </a>
													</li>
													<li>
														<a href="#" class="circle add-to-cart"> </a>
													</li>
												</ul>
												<div class="rate-bar">
													<input type="range" value="4.5" step="0.5" id="backing13" />

												</div>
											</div>
										</div>
										<div class="entry-main">
											<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
											<div class="entry-price">
												<strong class="price">$ 350.00</strong>
											</div>
										</div>
									</div>

									<div class="product" data-product-id="14">
										<div class="entry-media">
											<img data-src="images/men/shirt/803500-6989_1_t.jpg" alt="" class="lazyOwl thumb" />
											<div class="hover">

												<ul class="icons unstyled">
													<li>
														<a href="images/men/shirt/803500-6989_1.jpg" class="circle" data-toggle="lightbox"> </a>
													</li>
													<li>
														<a href="#" class="circle add-to-cart"> </a>
													</li>
												</ul>
												<div class="rate-bar">
													<input type="range" value="4" step="0.5" id="backing14" />

												</div>
											</div>
										</div>
										<div class="entry-main">
											<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
											<div class="entry-price">
												<strong class="price">$ 350.00</strong>
											</div>
										</div>
									</div>

									<div class="product" data-product-id="15">
										<div class="entry-media">
											<img data-src="images/men/shirt/217360-0014_1_t.jpg" alt="" class="lazyOwl thumb" />
											<div class="hover">

												<ul class="icons unstyled">
													<li>
														<div class="circle ribbon ribbon-new">New</div>
													</li>
													<li>
														<a href="images/men/shirt/217360-0014_1.jpg" class="circle" data-toggle="lightbox"> </a>
													</li>
													<li>
														<a href="#" class="circle add-to-cart"> </a>
													</li>
												</ul>
												<div class="rate-bar">
													<input type="range" value="3.5" step="0.5" id="backing15" />

												</div>
											</div>
										</div>
										<div class="entry-main">
											<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
											<div class="entry-price">
												<strong class="price">$ 450.00</strong>
											</div>
										</div>
									</div>

									<div class="product" data-product-id="16">
										<div class="entry-media">
											<img data-src="images/men/accessories/000095-0014_2_t.jpg" alt="" class="lazyOwl thumb" />
											<div class="hover">

												<ul class="icons unstyled">
													<li>
														<a href="images/men/accessories/000095-0014_2.jpg" class="circle" data-toggle="lightbox"> </a>
													</li>
													<li>ji
														<a href="#" class="circle add-to-cart"> </a>
													</li>
												</ul>
												<div class="rate-bar">
													<input type="range" value="5" step="0.5" id="backing16" />
													<div class="rateit" data-rateit-backingfld="#backing16" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false" data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
												</div>
											</div>
										</div>
										<div class="entry-main">
											<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
											<div class="entry-price">
												<strong class="price">$ 350.00</strong>
											</div>
										</div>
									</div>
								</div>

							</div>
							<!-- // END CAROUSEL -->

						</div>
					</div>
				</section>
				<!-- // NEW ARRIVAL PRODUCTS -->
			</main>
			<!-- // SITE MAIN CONTENT -->

			<!-- SITE FOOTER -->
			<footer class="page-footer">
				<!-- WIDGET AREA -->
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
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>鞋类</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>服装</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>配件</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>新品上市</a>
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
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>跑步</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>训练</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>足球</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>篮球</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>户外</a>
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
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>adiCLUB会员</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>门店查询</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>关于我们</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>企业社会责任</a>
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
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>使用条款</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>隐私声明</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>物流配送规则</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>退货规则</a>
												</li>
												<li>
													<a href="#"><i class="iconfont-circle-blank menu-icon"></i>adiCLUB会员规则</a>
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
														<a href="#" class="btn btn-default btn-round"> <i class="round-icon iconfont-angle-right"></i> <span class="inline-middle">Show More</span> </a>
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
													</div>
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
										<li>
											<a href="#">中国</a>
										</li>
										<li>
											<a href="#">隐私声明</a>
										</li>
										<li>
											<a href="#">使用条款</a>
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
											<li>
												<a href="#">苏ICP备14048805号-1 | © 2017 adidas | 苏公网安备 32059002001401号</a>
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
		<!-- <script src="js/products.js"></script> -->
		<script src="js/owl.carousel.js"></script>
		<!-- // Particular Page Javascripts -->
		<!-- GET PRODUCT -->
	</body>

</html>