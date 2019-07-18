<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en" class="no-js">

	<head>

		<meta charset="utf-8">
		<title>阿迪达斯--后台登录</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- CSS -->
		<link rel="stylesheet" href="css/reset.css" ></link>
		<link rel="stylesheet" href="css/supersized.css" ></link>
		<link rel="stylesheet" href="css/style.css" ></link>
		<!-- Javascript -->
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script src="js/supersized.3.2.7.min.js"></script>
		<script src="js/supersized-init.js"></script>
		<!-- Login And register -->
			<script type="text/javascript">
				$(function() {
					$("#pudeng").click(function() {
						var name = $(".username").val();
						var pass = $(".password").val();
						if(name != "" && pass != "") {
							$.post("LoginServlet?method=houLogin", {
								name: name,
								pass: pass
							}, function(r) {
								if(r == "kong") {
									$("#errorLogin").html("没有此管理员！");
								}
								if(r == "false") {
									$("#errorLogin").html("登录失败验证信息有误！");
								}
								if(r == "user") {
									$("#errorLogin").html("没有此管理员！");
								}
								if(r == "admin") {
									$(".form-horizontal").attr({
										action: "admin/index.jsp",
										method: "post"
									});
									$(".form-horizontal").submit();
								}
							});
						} else if(name == "") {
							$("#errorLogin").html("请输入用户名和密码！");
						} else if(pass == "") {
							$("#errorLogin").html("请输入正确的密码！");
						}

					});
				});
			</script>
			<!-- // Login And register -->
	</head>

	<body>

		<div class="page-container">
			<h1>阿迪达斯后台登录</h1>
			<form class="form-horizontal">
				<div>
					<input type="text" name="username" class="username" placeholder="手机 / 账号" autocomplete="off" />
				</div>
				<div>
					<input type="password" name="password" class="password" placeholder="账号密码" oncontextmenu="return false" onpaste="return false" />
					<br /><br /><span id="errorLogin"></span>
				</div>
				<button id="pudeng" type="button">登录</button>
			</form>
		</div>

	</body>

</html>