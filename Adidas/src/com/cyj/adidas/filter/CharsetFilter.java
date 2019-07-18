package com.cyj.adidas.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharsetFilter implements Filter{
	public CharsetFilter(){
		System.out.println("实例化");
	}
	@Override
	public void destroy() {
		System.out.println("销毁");
		
	}

	/**
	 * 过滤请求中的资源的编码格式
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("工作：过滤");
		//设置编码格式
		request.setCharacterEncoding("utf-8");
		//请求继续向后执行
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("初始化");		
	}

}
