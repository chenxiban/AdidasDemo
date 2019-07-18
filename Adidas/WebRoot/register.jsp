<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
			window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>');
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
			<header id="site-header" role="banner">
				<!-- HEADER TOP -->
				<div class="header-top">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-7">
								<!-- CONTACT INFO -->
								<div class="contact-info">
									<i class="iconfont-headphones round-icon"></i>
									<strong>+400-999-5999 </strong>
									<span>(全场免运费[仅限普通达 不支持增值服务] | 会员支持货到付款)</span>
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
													<button class="input-icon"><i class="iconfont-search"></i></button>
													<label for="input-search" class="placeholder">搜索…</label>
													<input type="text" name="q" id="input-search" class="round-input full-width" required />
												</div>
											</form>
										</div>
										<!-- // SEARCH BOX -->
									</li>
									<li data-toggle="sub-header" data-target="#sub-social">
										<!-- SOCIAL ICONS -->
										<a href="javascript:void(0);" id="social-icons">
											<i class="iconfont-share round-icon"></i>
										</a>

										<div id="sub-social" class="sub-header">
											<ul class="social-list unstyled text-center">
												<li>
													<a href="#"><i class="iconfont-facebook round-icon"></i></a>
												</li>
												<li>
													<a href="#"><i class="iconfont-twitter round-icon"></i></a>
												</li>
												<li>
													<a href="#"><i class="iconfont-google-plus round-icon"></i></a>
												</li>
												<li>
													<a href="#"><i class="iconfont-pinterest round-icon"></i></a>
												</li>
												<li>
													<a href="#"><i class="iconfont-rss round-icon"></i></a>
												</li>
											</ul>
										</div>
										<!-- // SOCIAL ICONS -->
									</li>
									<li data-toggle="sub-header" data-target="#sub-cart">
										<!-- SHOPPING CART -->
										<a href="ShoppingServlet?method=getUid" id="total-cart">
											<i class="iconfont-shopping-cart round-icon"></i>
										</a>

										<div id="sub-cart" class="sub-header">
											<div class="cart-header">
												<span>你的购物车现在是空的</span>
												<small><a href="ShoppingServlet?method=getUid">(See All)</a></small>
											</div>
											<ul class="cart-items product-medialist unstyled clearfix"></ul>
											<div class="cart-footer">
												<div class="cart-total clearfix">
													<span class="pull-left uppercase">Total</span>
													<span class="pull-right total">$ 0</span>
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
											<a href="login.jsp">登录</a>
										</li>
										<li>
											<a href="register.jsp">注册</a>
										</li>
									</ul>
								</nav>
								<!-- // USER RELATED MENU -->
							</div>
							<!-- // CURRENCY / LANGUAGE / USER MENU -->
							<!-- SITE LOGO -->
							<div class="logo-wrapper">
								<a href="index.jsp" class="logo" title="阿迪达斯官方旗舰店">
									<img src="images/logo.png" alt="GFashion - Responsive e-commerce jsp Template" />
								</a>
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
													<ul class="mega-sub"  id="mannew">
													</ul>
												</div>

												<div class="col-md-2">
													<h4 class="menu-title">鞋类</h4>
													<ul class="mega-sub"  id="manxie">
													</ul>
												</div>

												<div class="col-md-2">
													<h4 class="menu-title">服饰类</h4>
													<ul class="mega-sub"  id="manyifu">
													</ul>
												</div>

												<div class="col-md-2">
													<h4 class="menu-title">附配件类</h4>
													<ul class="mega-sub"  id="manfujian">
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
													<p>生  而  好  动</p>
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
													<ul class="mega-sub"  id="wennew">
													</ul>
												</div>

												<div class="col-md-2">
													<h4 class="menu-title">鞋类</h4>
													<ul class="mega-sub"  id="wenxie">
													</ul>
												</div>

												<div class="col-md-2">
													<h4 class="menu-title">服饰类</h4>
													<ul class="mega-sub"  id="wenyifu">
													</ul>
												</div>

												<div class="col-md-2">
													<h4 class="menu-title" >附配件类</h4>
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
													<p>生  而  好  动</p>
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
													<p>上课  上场</p>
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
													<h4 class="menu-title"><img src="images/favicon.png" />&nbsp;跑步</h4>
													<ul class="mega-sub" id="paobu">
													</ul>
												</div>

												<div class="col-md-3">
													<h4 class="menu-title"><img src="images/favicon.png" />&nbsp;训练</h4>
													<ul class="mega-sub" id="xunlian">
													</ul>
												</div>

												<div class="col-md-3">
													<h4 class="menu-title"><img src="images/favicon.png" />&nbsp;篮球</h4>
													<ul class="mega-sub" id="lanqiu">
													</ul>
												</div>

												<div class="col-md-3">
													<h4 class="menu-title"><img src="images/favicon.png" />&nbsp;户外</h4>
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
													<h4 class="menu-title"><img src="images/favicon.png" />&nbsp;originals</h4>
													<ul class="mega-sub" id="origin">
													</ul>
												</div>

												<div class="col-md-3">
													<h4 class="menu-title"><img src="images/favicon.png" />&nbsp;ADIDAS ATHLETICS</h4>
													<ul class="mega-sub" id="adidas">
													</ul>
												</div>

												<div class="col-md-3">
													<h4 class="menu-title"><img src="images/favicon.png" />&nbsp;adidas neo</h4>
													<ul class="mega-sub" id="neo">
													</ul>
												</div>

												<div class="col-md-3">
													<h4 class="menu-title"><img src="images/favicon.png" />&nbsp;sfello mocarfney</h4>
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
									<button class="dl-trigger"><i class="iconfont-reorder round-icon"></i></button>
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

			<!-- BREADCRUMB -->
			<div class="breadcrumb-container">
				<div class="container">
					<div class="relative">
						<ul class="bc unstyled clearfix">
							<li>
								<a href="index.jsp">首页</a>
							</li>
							<li class="active">登录注册</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- // BREADCRUMB -->

			<!-- Login And register -->
			<link href="css/bootstrap.css" rel="stylesheet">
			<link rel="stylesheet" href="css/bootstrapValidator.css" />
			<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
			<script type="text/javascript" src="js/bootstrapValidator.js"></script>
			<script type="text/javascript">
				$(document).ready(function() {
					// Generate a simple captcha
					function randomNumber(min, max) {
						return Math.floor(Math.random() * (max - min + 1) + min);
					};
					$('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

					$('#defaultForm').bootstrapValidator({
						//        live: 'disabled',
						message: 'This value is not valid',
						feedbackIcons: {
							valid: 'glyphicon glyphicon-ok',
							invalid: 'glyphicon glyphicon-remove',
							validating: 'glyphicon glyphicon-refresh'
						},
						fields: {
							username: {
								message: '用户名无效',
								validators: {
									notEmpty: {
										message: '用户名不能位空'
									},
									stringLength: {
										min: 2,
										max: 12,
										message: '用户名必须大于2，小于12个字'
									},
									regexp: {
										regexp: /^[\u4e00-\u9fff\w]{2,12}$/,
										message: '要求2-12位由字母、数字、_或汉字组成'
									},
									different: {
										field: 'password',
										message: '用户名和密码不能相同'
									}
								}
							},
							email: {
								validators: {
									notEmpty: {
										message: '邮箱不能为空'
									},
									emailAddress: {
										message: '邮箱地址格式有误'
									}
								}
							},
							password: {
								validators: {
									notEmpty: {
										message: '密码不能为空'
									},
									identical: {
										field: 'confirmPassword',
										message: '两次密码不一致'
									},
									different: {
										field: 'username',
										message: '用户名和密码不能相同'
									}
								}
							},
							confirmPassword: {
								validators: {
									notEmpty: {
										message: '密码不能为空'
									},
									identical: {
										field: 'password',
										message: '两次密码不一致'
									},
									different: {
										field: 'username',
										message: '用户名和密码不能相同'
									}
								}
							},
							birthday: {
								validators: {
									date: {
										format: 'YYYY-MM-DD',
										message: '不是合法的生日'
									}
								}
							},
							gender: {
								validators: {
									notEmpty: {
										message: '请选择性别'
									}
								}
							},
							captcha: {
								validators: {
									callback: {
										message: '答案错误',
										callback: function(value, validator) {
											var items = $('#captchaOperation').html().split(' '),
												sum = parseInt(items[0]) + parseInt(items[2]);
											return value == sum;
										}
									}
								}
							},
							phone: {
								validators: {
									notEmpty: {
										message: '电话不能为空'
									},
									stringLength: {
										min: 11,
										max: 11,
										message: '电话必须是11位'
									},
									regexp: {
										regexp: /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$/,
										message: '电话支持13,14,15,17,18'
									},
									remote: {
										url: '#',
										message: '电话号码不可用'
									},
								}
							}
						}
					});

					// Validate the form manually
					$('#validateBtn').click(function() {
						$('#defaultForm').bootstrapValidator('validate');
					});

					$('#resetBtn').click(function() {
						$('#defaultForm').data('bootstrapValidator').resetForm(true);
					});
				});
			</script>
			<!-- // Login And register -->

			<!-- SITE MAIN CONTENT -->
			<main id="main-content" role="main">

				<div class="container">
					<div class="row">

						<div class="m-t-b clearfix">
							<!-- SIDEBAR -->
							<aside class="col-xs-12 col-sm-4 col-md-3">
								<section class="side-section">
									<h3 class="uppercase text-bold"><span class="text-xs">您可能会感兴趣的页面</span></h3>

									<ul class="nav nav-tabs nav-stacked">
										<li>
											<a href="index.jsp">首页</a>
										</li>
										<li>
											<a href="products.jsp">商品</a>
										</li>
										<li>
											<a href="products.jsp">adidas neo</a>
										</li>
										<li>
											<a href="about-us.jsp">关于我们</a>
										</li>
										<li>
											<a href="#">联系我们</a>
										</li>
									</ul>
								</section>

								<!-- PROMO -->
								<div class="promo inverse-background" style="background: url('images/home/z2.jpg') no-repeat; background-size: 100% 100%;">
									<div class="inner text-center np">
										<div class="ribbon">
											<h5 class="text-semibold uppercase nmb">ADIDAS NEO</h5>
											<div class="space10"></div>
											<a href="products.jsp" class="with-icon prepend-icon"><i class="iconfont-caret-right"></i><span> Shop Now</span></a>
										</div>
									</div>
								</div>
								<!-- // PROMO -->
							</aside>
							<!-- // SIDEBAR -->

							<section class="col-xs-12 col-sm-8 col-md-9">
								<div class="panel-group checkout" id="checkout-collapse">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#checkout-collapse" href="#checkout-collapse1">
												<span class="step">01</span>
												注册用户
											</a>
										</h4>
										</div>
										<div id="checkout-collapse1" class="panel-collapse collapse in">
											<div class="panel-body">
												<form id="defaultForm" method="post" class="form-horizontal" action="RegisterServlet?method=Register">
													<div class="form-group">
														<label class="col-lg-3 control-label">用户名</label>
														<div class="col-lg-5">
															<input type="text" class="form-control" id="username" name="username" />
														</div>
													</div>

													<div class="form-group">
														<label class="col-lg-3 control-label">邮箱</label>
														<div class="col-lg-5">
															<input type="text" class="form-control" id="email" name="email" />
														</div>
													</div>

													<div class="form-group">
														<label class="col-lg-3 control-label">密码</label>
														<div class="col-lg-5">
															<input type="password" class="form-control" id="password" name="password" />
														</div>
													</div>

													<div class="form-group">
														<label class="col-lg-3 control-label">确认密码</label>
														<div class="col-lg-5">
															<input type="password" class="form-control" id="confirmPassword" name="confirmPassword" />
														</div>
													</div>

													<div class="form-group">
														<label class="col-lg-3 control-label">性别</label>
														<div class="col-lg-5">
															<div class="radio">
																<label>
                                        <input type="radio" id="gender" name="gender" value="男" /> 男
                                    </label>
															</div>
															<div class="radio">
																<label>
                                        <input type="radio" id="gender" name="gender" value="女" /> 女
                                    </label>
															</div>
														</div>
													</div>

													<div class="form-group">
														<label class="col-lg-3 control-label">生日</label>
														<div class="col-lg-5">
															<input type="date" class="form-control" id="birthday" name="birthday" />
														</div>
													</div>

													<div class="form-group">
														<label class="col-lg-3 control-label" id="captchaOperation"></label>
														<div class="col-lg-2">
															<input type="text" class="form-control" name="captcha" />
														</div>
													</div>

													<div class="form-group">
														<label class="col-lg-3 control-label">电话</label>
														<div class="col-lg-5">
															<input type="text" class="form-control" id="phone" name="phone" />
														</div>
													</div>

													<div class="form-group">
														<div class="col-lg-9 col-lg-offset-3">
															<button type="submit" name="signup" class="btn btn-primary" value="Sign up" id="zhuce">注册</button>
															<c:if test="${requestScope.msg==null}">
																<c:set value="" var="msg"></c:set>
															</c:if>
															<span id="regError">${msg}</span>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>

								</div>
							</section>

						</div>

					</div>
				</div>

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
												<li>
													<span class="list-icon"><i class="round-icon iconfont-map-marker"></i></span>
													<div class="list-content">阿迪达斯体育（中国）有限公司</div>
												</li>
												<li>
													<span class="list-icon"><i class="round-icon iconfont-phone"></i></span>
													<div class="list-content">团购热线：+400-999-5999</div>
												</li>
												<li>
													<span class="list-icon"><i class="round-icon iconfont-envelope-alt"></i></span>
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
													<a href="#">
														<img src="images/home/timg.jpg" alt="" />
													</a>
													<div class="ads-caption bottom-right">
														<a href="#" class="btn btn-default btn-round">
															<i class="round-icon iconfont-angle-right"></i>
															<span class="inline-middle">Show More</span>
														</a>
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
													<div class="list-content">我们接受一下付款方式:<img src="images/home/zhifufangshi.jpg"></div>
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
		<script src="js/products.js"></script>
		<!-- // Particular Page Javascripts -->

	</body>

</html>