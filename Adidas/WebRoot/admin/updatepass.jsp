<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title></title>
		<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css"></link>
		<link rel="stylesheet" href="css/pintuer.css">
		<link rel="stylesheet" href="css/admin.css">
		<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
		<script src="js/jquery.js"></script>
		<script src="js/pintuer.js"></script>
		<script>
			$(function() {
				$("#updatemi").click(function() {
					var jupwd = parseInt($("#jupwd").val());
					var jpwd = parseInt($("#mpass").val());
					var pwd =$("#newpass").val();
					var repwd = $("#renewpass").val();
					if(jpwd == jupwd) {
						if(pwd != "" && repwd != "" && jpwd != "") {
							if(pwd == repwd) {
								if(confirm("你确定要修改密码吗？")) {
									$.post("../UserInfoServlet?method=houupdatePwd", {
										pwd: pwd
									}, function(r) {
										if(r == "true") {
											alert('密码修改成功！');
											window.location.href="houlogin.jsp";
										}
										if(r == "false") {
											alert('密码修改失败！');
										}
									});
								}
							} else if(pwd != repwd) {
								alert("两次密码不一致");
							}
						} else if(pwd == "") {
							alert("新密码不能为空");
						} else if(repwd == "") {
							alert("重复密码不能为空");
						} else if(jpwd == "") {
							alert("旧密码不能为空");
						}
					} else if(jpwd != jupwd) {
						alert("旧密码不正确");
					}
				});
			});
		</script>
	</head>

	<body>
		<div class="panel admin-panel">
			<div class="panel-head"><strong><span class="icon-key"></span> 修改会员密码</strong></div>
			<div class="body-content">
				<form method="post" class="form-x" action="">
					<div class="form-group">
						<div class="label">
							<label for="sitename">管理员帐号：</label>
						</div>
						<div class="field">
							<label style="line-height:33px;">
           		${sessionScope.houuser.uname}
          </label>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label for="sitename">原始密码：</label>
						</div>
						<div class="field">
							<input type="hidden" id="jupwd" value="${sessionScope.houuser.pwd}" />
							<input type="password" class="input w50" id="mpass" name="mpass"  size="50" placeholder="请输入原始密码" data-validate="required:请输入原始密码" />
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label for="sitename">新密码：</label>
						</div>
						<div class="field">
							<input type="password" class="input w50" name="newpass" id="newpass" size="50" placeholder="请输入新密码" data-validate="required:请输入新密码,length#>=6:新密码不能小于6位" />
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label for="sitename">确认新密码：</label>
						</div>
						<div class="field">
							<input type="password" class="input w50" name="renewpass" id="renewpass" size="50" placeholder="请再次输入新密码" data-validate="required:请再次输入新密码,repeat#newpass:两次输入的密码不一致" />
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label></label>
						</div>
						<div class="field">
							<button id="updatemi" class="button bg-main icon-check-square-o" type="button">提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</body>

</html>