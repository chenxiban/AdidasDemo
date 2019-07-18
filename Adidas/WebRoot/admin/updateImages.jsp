<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改主图</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="admin/js/layui/css/layui.css" type="text/css"></link>
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
  	<script type="text/javascript" src="admin/js/layui/layui.js"></script>
	
	<%
  	String id = request.getParameter("id");
  	String src = request.getParameter("src");
  	%>
  	<script type="text/javascript">
  	layui.use(['upload','layer'],function(){
  		layui.upload({
  	 		url:'ProductServlet?method=uploadImg&id=<%=id%>',
  	 		success:function(res){
  	 			if(res.success){
  	 				//修改当前图片地址
  	 				$("#img").attr("src",res.remark+".png");
  	 				//调用主窗口中的函数实现修改显示商品的图片
  	 				window.top.changeImg(res.remark+".png");
  	 				layer.msg(res.message,{time:800});
  	 			}
  	 		}
  	 	});
  	});
  </script>

  </head>
  
  <body>
    预览：
    <img src="<%=src %>" id="img" alt="图片去火星了" />
    <form>
    	<input type="file" name="file" class="layui-upload-file" >
    	<span style="color:red">注意：只支持500*500的图片啊亲！</span>
    </form>
  </body>
</html>
