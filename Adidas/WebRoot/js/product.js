$(function() {
	var posid=$("#posid").val();
	var num=9;
	$.post("ProductServlet?method=getPosProducts",{
		posid:posid
	},function(res){
		$(".owl-wrapper").html("");
			for (var i=0;i<res.length;i++) {
				var p=res[i];
				var s="<div class='owl-item' style='width:234px;'>";
				s+="<div class='product' data-product-id='"+num+"'>";
				s+="<div class='entry-media'>";
				s+="<img alt='' class='lazyOwl thumb ' style='display: inline; width:234px;' src='images/product/"+p.picUrl+".png'>";
				s+="<div class='hover'>";
				s+="<a href='ProductServlet?method=productInfo&Pid="+p.id+"' class='entry-url'></a>";
				s+="<ul class='icons unstyled'><li><div class='circle ribbon ribbon-sale'>Sale</div></li><li><a href='images/product/"+p.picUrl+".png' class='circle' data-toggle='lightbox'><i class='iconfont-search'></i></a></li></ul>";
				s+="</div></div>";
				s+="<div class='entry-main'><h5 class='entry-title'><a href='ProductServlet?method=productInfo&Pid="+p.id+"'>"+p.pname+"</a></h5><div class='entry-price'><strong class='price'>￥"+p.sellPrice+"</strong></div></div>";
				s+="</div>";
				num++;
				$(".owl-wrapper").append($(s));
			}
	},"json");
});

