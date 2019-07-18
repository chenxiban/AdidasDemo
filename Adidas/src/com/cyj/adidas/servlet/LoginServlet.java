package com.cyj.adidas.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyj.adidas.dao.impl.AddreesDaoImpl;
import com.cyj.adidas.dao.impl.OrdersDaoImpl;
import com.cyj.adidas.dao.impl.UserInfoDaoImpl;
import com.cyj.adidas.daos.AddreesDao;
import com.cyj.adidas.daos.OrdersDao;
import com.cyj.adidas.daos.UserInfoDao;
import com.cyj.adidas.entity.Addrees;
import com.cyj.adidas.entity.Orders;
import com.cyj.adidas.entity.UserInfo;
import com.cyj.adidas.util.IsEmptyUtils;

@SuppressWarnings("serial")
public class LoginServlet extends BaseServlet {
	/**
	 * 前台登录
	 */
	public void Login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String usernameorphone = request.getParameter("name");
		String userpwd = request.getParameter("pass");

		UserInfoDao udao = new UserInfoDaoImpl();
		UserInfo u1 = udao.getUser(usernameorphone);
		if (!IsEmptyUtils.isEmpty(u1)) {
			if (u1.getFlag() != 2) {
				UserInfo u2 = udao.loginUser(usernameorphone, userpwd);
				if (!IsEmptyUtils.isEmpty(u2)) {
					if (u2.getFlag() == 1) {
						out.print("admin");
					} else {
						request.getSession().setAttribute("user", u2);
						out.print("users");
					}
				} else {
					out.print("false");
				}
			} else {
				out.print("jin");
			}
		} else {
			out.print("kong");
		}
		out.flush();
		out.close();
	}

	/**
	 * 后台登录
	 */
	public void houLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String username = request.getParameter("name");
		String userpwd = request.getParameter("pass");
		UserInfoDao udao = new UserInfoDaoImpl();
		UserInfo u1 = udao.getUser(username);
		if (!IsEmptyUtils.isEmpty(u1)) {
			UserInfo u2 = udao.loginUser(username, userpwd);
			if (!IsEmptyUtils.isEmpty(u2)) {
				if (u2.getFlag() == 1) {
					request.getSession().setAttribute("houuser", u2);
					out.print("admin");
				}else{
					out.print("user");
				}
			} else {
				out.print("false");
			}
		} else {
			out.print("kong");
		}
		out.flush();
		out.close();
	}

	/**
	 * 用户退出登录
	 */
	public void LoginOut(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		response.sendRedirect("index.jsp");
	}
	
	/**
	 * 查询用户(同时传递订单信息,用户信息)
	 */
	public void SelectUser(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		if (IsEmptyUtils.isEmpty(u)) {
			response.sendRedirect("login.jsp");
		} else {
			Integer uid = u.getUid();
			// 获取我的收货地址
			AddreesDao adao = new AddreesDaoImpl();
			List<Addrees> addList = adao.getAddressByUid(uid);
			request.getSession().setAttribute("addList", addList);

			// 订单信息
			OrdersDao odao = new OrdersDaoImpl();
			List<Orders> orderList = odao.selectOrders(uid);
			request.setAttribute("odlist", orderList);

			// 用户信息
			UserInfoDao udo = new UserInfoDaoImpl();
			UserInfo user = udo.selectUsers(uid);
			request.setAttribute("userInfo", user);
			request.getRequestDispatcher("userInfo.jsp").forward(request,
					response);
		}
		out.flush();
		out.close();
	}
}
