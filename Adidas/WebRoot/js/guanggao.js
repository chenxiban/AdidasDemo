$(function() {
	var gposid=$("#gposid").val();
	$.post("ZhuPositionServlet?method=getPosProductInfo",{
		sid:gposid
	},function(res){
		$("#guanggao").html("");
			for (var i=0;i<res.length;i++) {
				var p=res[i];
				var s="<div class='owl-item' style='width:234px;'>";
				s+="</div>";
				$("#guanggao").append($(s));
			}
	},"json");
});

