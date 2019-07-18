package com.cyj.adidas.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ValidateUserFilter implements Filter{

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest) request;
		HttpServletResponse res=(HttpServletResponse) response;
		
		if(req.getSession().getAttribute("houuser")==null){//若会话中没有用户信息，则跳转到登录页
			//res.sendRedirect("/Adidas/houlogin.jsp");
			PrintWriter out=res.getWriter();
			out.println("<script>window.top.location.href='/Adidas/houlogin.jsp';</script>");			
		}else{//若存在则继续执行
			chain.doFilter(request, response);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
		
	}

}
