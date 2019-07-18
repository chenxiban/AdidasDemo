package com.cyj.adidas.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyj.adidas.dao.impl.TitleTypeDaoImpl;
import com.cyj.adidas.daos.TitleTypeDao;
import com.cyj.adidas.entity.TitleType;
import com.google.gson.Gson;

@SuppressWarnings("serial")
public class TitleTypeSerlvet extends BaseServlet {
	public void getAllTypes(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		TitleTypeDao tdao = new TitleTypeDaoImpl();
		// 获得所有商品分类
		List<TitleType> tType = tdao.getAllTitleTypes();
		Gson gson = new Gson();
		// Ajax用Json的格式
		out.print(gson.toJson(tType));

		out.flush();
		out.close();
	}

}
