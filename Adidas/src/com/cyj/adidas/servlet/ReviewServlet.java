package com.cyj.adidas.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyj.adidas.dao.impl.ReviewDaoImpl;
import com.cyj.adidas.daos.ReviewDao;


@SuppressWarnings("serial")
public class ReviewServlet extends BaseServlet {
	@SuppressWarnings("unused")
	private ReviewDao rdao=new ReviewDaoImpl();
	public void Register(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		/*Gson g=new Gson();
		
		Integer pid=Integer.parseInt(request.getParameter("pid"));
		List<Review> rlist=rdao.getAllReviews(pid);
		out.print(g.toJson(rlist));*/
		
		out.flush();
		out.close();
	}
}
