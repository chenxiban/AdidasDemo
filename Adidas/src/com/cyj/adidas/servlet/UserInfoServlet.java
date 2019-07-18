package com.cyj.adidas.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyj.adidas.dao.impl.AddreesDaoImpl;
import com.cyj.adidas.dao.impl.UserInfoDaoImpl;
import com.cyj.adidas.daos.AddreesDao;
import com.cyj.adidas.daos.UserInfoDao;
import com.cyj.adidas.entity.Addrees;
import com.cyj.adidas.entity.UserInfo;
import com.cyj.adidas.util.IsEmptyUtils;

@SuppressWarnings("serial")
public class UserInfoServlet extends BaseServlet {
	private UserInfoDao udao = new UserInfoDaoImpl();

	/**
	 * 用户修改密码
	 */
	public void updatePwd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String pwd = request.getParameter("pwd");//在页面Ajax发送过来的pwd新密码
		UserInfo user = (UserInfo) request.getSession().getAttribute("user");//获取当前登录用户信息
		Integer uid = user.getUid();//获取当前用户id
		UserInfoDao udao = new UserInfoDaoImpl();//声明实现类用于调用实现类中方法
		int u2 = udao.updatePwd(uid, pwd);//想修改操作传用户id和新密码，进行修改
		if (u2 > 0) {//如果u2大于0成功
			out.print("true");//想页面的回调函数输出true
			request.getSession().invalidate();//如果修改成功清空当前登录用户信息（及清空全局session的记录）
		} else {
			out.print("false");
		}
		out.flush();
		out.close();
	}

	/**
	 * 后台用户修改密码
	 */
	public void houupdatePwd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String pwd = request.getParameter("pwd");
		UserInfo user = (UserInfo) request.getSession().getAttribute("houuser");
		Integer uid = user.getUid();
		UserInfoDao udao = new UserInfoDaoImpl();
		int u2 = udao.updatePwd(uid, pwd);
		if (u2 > 0) {
			out.print("true");
			request.getSession().invalidate();
		} else {
			out.print("false");
		}
		out.flush();
		out.close();
	}

	/**
	 * 用户修改个人信息
	 */
	@SuppressWarnings("unused")
	public void updateUsers(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Date date = new Date();
		Timestamp nousedate = new Timestamp(date.getTime());

		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		Integer use = u.getUid();
		UserInfo users = new UserInfo();
		users.setUid(use);
		users.setUname(request.getParameter("uname"));
		users.setSex(request.getParameter("sex"));
		users.setBirthday(request.getParameter("birthday"));
		users.setPhone(request.getParameter("phone"));
		users.setCreateTime(nousedate);
		users.setEmail(request.getParameter("email"));
		users.setAid(request.getParameter("aid"));
		UserInfoDao udao = new UserInfoDaoImpl();
		UserInfoDao ud = new UserInfoDaoImpl();
		int n = udao.updateUsers(users);
		if (n > 0) {
			out.print("true");
		} else {
			out.print("false");
		}

		out.flush();
		out.close();
	}

	/**
	 * 用户修改个人信息
	 */
	@SuppressWarnings("unused")
	public void updateInfo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Date date = new Date();
		Timestamp nousedate = new Timestamp(date.getTime());

		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		Integer use = u.getUid();
		UserInfo users = new UserInfo();
		users.setUid(use);
		users.setUname(request.getParameter("uname"));
		users.setSex(request.getParameter("sex"));
		users.setBirthday(request.getParameter("birthday"));
		users.setPhone(request.getParameter("phone"));
		users.setCreateTime(nousedate);
		users.setEmail(request.getParameter("email"));
		users.setAid(request.getParameter("aid"));
		UserInfoDao udao = new UserInfoDaoImpl();
		UserInfoDao ud = new UserInfoDaoImpl();
		int n = udao.updateUsers(users);

		AddreesDao adao = new AddreesDaoImpl();
		Addrees address1 = adao.selectByAddress(u.getUid());

		int n2 = 0;
		if (address1 != null) {
			Addrees address2 = new Addrees();
			address2.setId(address1.getId());
			address2.setShengFen(request.getParameter("shengfen"));
			address2.setCity(request.getParameter("city"));
			address2.setName(request.getParameter("uname"));
			address2.setAddrees(request.getParameter("aid"));
			address2.setPhone(request.getParameter("phone"));
			address2.setPostcode("-1");
			n2 = adao.updateAddress(address2);
		} else {
			Addrees a = new Addrees();
			a.setId(u.getUid());
			a.setShengFen(request.getParameter("shengfen"));
			a.setCity(request.getParameter("city"));
			a.setName(request.getParameter("uname"));
			a.setAddrees(request.getParameter("aid"));
			a.setPhone(request.getParameter("phone"));
			n2 = adao.addRess(a);
		}
		if (n > 0 && n2 > 0) {
			out.print("true");
		} else {
			out.print("false");
		}
		out.flush();
		out.close();
	}

	/**
	 * 禁用用户
	 */
	public void upUserState(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		int uid = Integer.parseInt(request.getParameter("uid"));
		UserInfoDao uDao = new UserInfoDaoImpl();
		UserInfo u = uDao.selectUsers(uid);
		int flag;
		if (u.getFlag() == 0 || u.getFlag() == 1) {
			flag = 2;
		} else {
			flag = 0;
		}
		int jg = uDao.updateUserState(uid, flag);
		if (jg > 0) {
			if (flag == 2) {
				out.print("jin");
			} else if (flag == 1 || flag == 0) {
				out.print("jie");
			}
		} else {
			out.print("false");
		}

		out.flush();
		out.close();
	}

	// 多条件查询
	public void searchByName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String name = request.getParameter("huname");
		String sex = request.getParameter("sex");
		int page = 1, pageSize = 5;
		String orderBy = "order by Uid asc";
		if (request.getParameter("page") != null)
			page = Integer.parseInt(request.getParameter("page"));
		if (request.getParameter("pageSize") != null)
			pageSize = Integer.parseInt(request.getParameter("pageSize"));
		if (request.getParameter("sort1") != null
				&& !IsEmptyUtils.isEmpty(request.getParameter("sort1"))) {
			orderBy = "order by " + request.getParameter("sort1");
		}
		if (request.getParameter("sort2") != null
				&& !IsEmptyUtils.isEmpty(request.getParameter("sort2"))) {
			orderBy += "," + request.getParameter("sort2");
		}
		String data = udao.getUserInfosByPage(name, sex, page, pageSize,
				orderBy);
		out.println(data);
		out.flush();
		out.close();
	}
	
	/**
	 * 用户修改个人信息
	 */
	public void updateMo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		Integer use = u.getUid();
		String aid=request.getParameter("aid");
		int n=udao.updateByAddress(aid,use);
		if (n>0) {
			out.print("true");
		}else{
			out.print("false");
		}

		out.flush();
		out.close();
	}
}
