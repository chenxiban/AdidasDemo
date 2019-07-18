$(function() {
	function getMinType() {
		$.post("TitleTypeSerlvet?method=getAllTypes", {}, function(r) {
			var ponum = r.length;
			for(var i = 0; i < ponum; i++) {
				var obj = r[i];
				if(obj.pid == 7) {
					$("#mannew").append("<li><a href='productss.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 8) {
					$("#manxie").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 9) {
					$("#manyifu").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 10) {
					$("#manfujian").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 11) {
					$("#wennew").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 12) {
					$("#wenxie").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 13) {
					$("#wenyifu").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 14) {
					$("#wenfujian").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 15) {
					$("#tongnew").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 16) {
					$("#datong").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 17) {
					$("#xiaotong").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 18) {
					$("#yingtong").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 19) {
					$("#paobu").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 20) {
					$("#xunlian").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 21) {
					$("#lanqiu").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 22) {
					$("#huwai").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 23) {
					$("#origin").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 24) {
					$("#adidas").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 25) {
					$("#neo").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
				if(obj.pid == 26) {
					$("#sfello").append("<li><a href='products.jsp'>" + obj.name + "</a></li>");
				}
			}
		}, "JSON");
	}
	getMinType();
});