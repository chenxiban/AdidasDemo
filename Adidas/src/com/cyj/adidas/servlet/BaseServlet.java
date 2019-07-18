package com.cyj.adidas.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class BaseServlet extends HttpServlet {

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		// 获取参数方法名
		String methodName = request.getParameter("method");
		Class c = this.getClass();// 获取当前类
		Method method = null;
		try {
			// 通过参数名获取对应请求servlet中的方法
			method = c.getMethod(methodName, HttpServletRequest.class,
					HttpServletResponse.class);
		} catch (Exception e) {
			throw new RuntimeException("您要调用的方法：" + methodName
					+ "(HttpServletRequest,HttpServletResponse)，它不存在！");
		}
		try {
			// 调用方法处理请求
			method.invoke(this, request, response);
			// System.out.println(methodName+"方法执行了");
		} catch (Exception e) {
			System.out.println("您调用的方法：" + methodName + ",　它内部抛出了异常！");
			throw new RuntimeException(e);
		}

	}
}
