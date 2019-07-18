package com.cyj.adidas.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyj.adidas.dao.impl.UserInfoDaoImpl;
import com.cyj.adidas.daos.UserInfoDao;
import com.cyj.adidas.entity.UserInfo;
import com.cyj.adidas.util.IsEmptyUtils;

@SuppressWarnings("serial")
public class RegisterServlet extends BaseServlet {
	public void Register(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Date date = new Date();
		Timestamp nousedate = new Timestamp(date.getTime());

		String uname = request.getParameter("username");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String rpwd = request.getParameter("confirmPassword");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("gender");
		String phone = request.getParameter("phone");

		UserInfoDao udao = new UserInfoDaoImpl();
		UserInfo u1 = udao.getUser(uname);
		UserInfo u2 = udao.getUser(phone);
		if (IsEmptyUtils.isEmpty(uname) || IsEmptyUtils.isEmpty(uname)
				|| IsEmptyUtils.isEmpty(email) || IsEmptyUtils.isEmpty(pwd)
				|| IsEmptyUtils.isEmpty(birthday)
				|| IsEmptyUtils.isEmpty(phone) || IsEmptyUtils.isEmpty(rpwd)) {
			String msg = "需把各项信息填写完整";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("register.jsp").forward(request,
					response);
		} else {
			if (IsEmptyUtils.isEmpty(u1)) {

				if (IsEmptyUtils.isEmpty(u2)) {
					UserInfo u = new UserInfo();
					u.setUname(uname);
					u.setEmail(email);
					u.setPwd(pwd);
					u.setBirthday(birthday);
					u.setSex(sex);
					u.setPhone(phone);
					u.setCreateTime(nousedate);
					u.setFlag(0);
					if (udao.addUser(u) > 0) {
						response.sendRedirect("login.jsp");
					}
				} else {
					String msg = "该手机号码已被绑定";
					request.setAttribute("msg", msg);
					request.getRequestDispatcher("register.jsp").forward(
							request, response);
				}
			} else {
				String msg = "该用户名已被注册";
				request.setAttribute("msg", msg);
				request.getRequestDispatcher("register.jsp").forward(request,
						response);
			}
		}

		out.flush();
		out.close();
	}
}
