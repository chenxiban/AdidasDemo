package com.cyj.adidas.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyj.adidas.dao.impl.AddreesDaoImpl;
import com.cyj.adidas.dao.impl.OrdersDaoImpl;
import com.cyj.adidas.dao.impl.ShoppingDaoImpl;
import com.cyj.adidas.daos.AddreesDao;
import com.cyj.adidas.daos.OrdersDao;
import com.cyj.adidas.daos.ShoppingDao;
import com.cyj.adidas.entity.Addrees;
import com.cyj.adidas.entity.Orders;
import com.cyj.adidas.entity.OrdersDetail;
import com.cyj.adidas.entity.Shopping;
import com.cyj.adidas.entity.UserInfo;
import com.cyj.adidas.util.IsEmptyUtils;
import com.cyj.adidas.util.StringUtil;
import com.google.gson.Gson;

@SuppressWarnings("serial")
public class ShoppingServlet extends BaseServlet {
	private ShoppingDao spdao = new ShoppingDaoImpl();
	private OrdersDao odao=new OrdersDaoImpl();

	// 添加购物车
	public void addCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		UserInfo user = (UserInfo) request.getSession().getAttribute("user");
		if (IsEmptyUtils.isEmpty(user)) {
			out.print("not");
		} else {
			Integer pid = Integer.parseInt(request.getParameter("pid"));
			Integer num = Integer.parseInt(request.getParameter("num"));
			Integer uid = user.getUid();
			Shopping s2 = spdao.selectShopping(uid, pid);
			if (IsEmptyUtils.isEmpty(s2)) {
				Shopping s = new Shopping();
				s.setPid(pid);
				s.setUid(uid);
				s.setNum(num);
				int u = spdao.addProShopping(s);
				if (u > 0) {
					/*
					 * List<Shopping> list = spdao.getAllProByUid(uid);
					 * request.getSession().setAttribute("spSize", list.size());
					 */
					out.print("true");
				} else {
					out.print("false");
				}
			} else {
				Integer id = Integer.parseInt(request.getParameter("ids"));
				int u2 = spdao.updateShopping(id, num);
				if (u2 > 0) {
					out.print("updatec");
				} else {
					out.print("updates");
				}
			}

		}
		out.flush();
		out.close();
	}

	// 根据Id查询用户购物车商品
	public void getUid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		if (IsEmptyUtils.isEmpty(u)) {
			response.sendRedirect("login.jsp");
		} else {
			Integer uid = u.getUid();
			List<Shopping> slist = spdao.getAllProByUid(uid);
			request.setAttribute("spList", slist);
			request.getRequestDispatcher("cart.jsp").forward(request, response);
		}

		out.flush();
		out.close();
	}

	// 购物车数量增加
	public void upNum(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		Integer id = Integer.parseInt(request.getParameter("id"));
		Integer num = Integer.parseInt(request.getParameter("sum2"));
		Shopping s = new Shopping();
		s.setId(id);
		s.setNum(num);
		int jg = spdao.updateShoppings(s);
		if (jg > 0) {
			out.print("true");
		} else {
			out.print("false");
		}

		out.flush();
		out.close();
	}

	// 删除购物车中的商品
	public void delShop(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		System.out.println();
		if (spdao.deleteShopping(id) > 0) {
			out.print("true");
		} else {
			out.print("false");
		}

		out.flush();
		out.close();
	}

	// 清空购物车中的商品
	public void delShopping(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		Integer uid = u.getUid();
		List<Shopping> slist = spdao.getAllProByUid(uid);
		if (IsEmptyUtils.isEmpty(slist)) {
			out.print("kong");
		} else {
			int n = spdao.delShopping(uid);
			if (n > 0) {
				out.print("true");
			} else {
				out.print("false");
			}
		}

		out.flush();
		out.close();
	}

	// 结算
	public void jieSuan(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String id = request.getParameter("arryid");
		// 对Id进行分割
		String[] arrId = id.split(",");
		List<Integer> idlist = new ArrayList<Integer>();
		for (String s : arrId) {
			idlist.add(Integer.parseInt(s));
		}
		// 根据id查询商品记录
		List<Shopping> spList = new ArrayList<Shopping>();
		for (int o : idlist) {
			Shopping s = spdao.selectById(o);
			System.out.println(s);
			spList.add(s);
		}
		request.getSession().setAttribute("sppList", spList);
		
		// 获取Session作用域中的用户信息
		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		// 获得用户Id
		int uid = u.getUid();
		AddreesDao ad = new AddreesDaoImpl();
		// 根据用户Id查询其收货地址
		List<Addrees> adlist = ad.getAddressByUid(uid);
		request.setAttribute("adlists", adlist);
		request.getRequestDispatcher("checkout.jsp").forward(request, response);
		out.flush();
		out.close();
	}

	// 添加订单*
	@SuppressWarnings({ "unchecked", "unused" })
	public void addOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		Date date = new Date();
		Timestamp nousedate = new Timestamp(date.getTime());

		List<Shopping> spList = (List<Shopping>) request.getSession()
				.getAttribute("spList");
		int proid = spList.get(0).getPid();
		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		Integer uid = u.getUid();
		Double zprice=Double.parseDouble(request.getParameter("zprice"));
		int aid=Integer.parseInt(request.getParameter("aid"));
		String Remark=request.getParameter("remark");
		if (IsEmptyUtils.isEmpty(uid)) {
			response.sendRedirect("login.jsp");
		} else {
			Orders o = new Orders();
			o.setId(StringUtil.getUUID());
			o.setOrderTime(nousedate);
			o.setUid(uid);
			o.setTotalMoney(zprice);
			o.setStatus("未付款");
			o.setAid(aid);
			o.setRemark(Remark);
			OrdersDao od = new OrdersDaoImpl();
			int n = od.addOrders(o);
			if (n > 0) {
				Orders odr=od.selectOrderByBeginTime(nousedate);
				String oid=odr.getId();
				int re=-1;
				for (Shopping sp : spList) {
					int pid=sp.getPid();
					int num=sp.getNum();
					Double zongjia=sp.getSellPrice();
					OrdersDetail orders=new OrdersDetail();
					orders.setOid(oid);
					orders.setPid(pid);
					orders.setQuantity(num);
					orders.setRemark(Remark);
					
				}
			} else {
				request.getRequestDispatcher("order.jsp").forward(request,
						response);
			}
		}

		out.flush();
		out.close();
	}

	// 删除地址
	public void delAddrees(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		AddreesDao ad = new AddreesDaoImpl();
		Orders o=odao.selectOrder2(id);
		if (IsEmptyUtils.isEmpty(o)) {
			int jg = ad.deleteAddress(id);
			if (jg > 0) {
				out.print("true");
			} else {
				out.print("false");
			}
		}else{
			out.print("false");
		}
		

		out.flush();
		out.close();
	}

	// 添加地址
	public void addrees(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		AddreesDao ad = new AddreesDaoImpl();
		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		Addrees a = new Addrees();
		a.setUid(u.getUid());
		a.setShengFen(request.getParameter("province"));
		a.setCity(request.getParameter("city"));
		a.setName(request.getParameter("sname"));
		a.setAddrees(request.getParameter("addre"));
		a.setPhone(request.getParameter("phone"));
		a.setPostcode(request.getParameter("postcode"));
		int jg = ad.addRess(a);
		if (jg > 0) {
			out.print("true");
		} else {
			out.print("false");
		}

		out.flush();
		out.close();
	}

	// 根据Id查询一条地址数据
	public void upAddress(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		int aid = Integer.parseInt(request.getParameter("aid"));
		AddreesDao ad = new AddreesDaoImpl();
		Addrees a = ad.selectAddress(aid);
		Gson gson = new Gson();
		out.print(gson.toJson(a));
		out.flush();
		out.close();
	}

	// 修改地址
	public void updateAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		AddreesDao ad = new AddreesDaoImpl();
		Addrees a = new Addrees();
		UserInfo u = (UserInfo) request.getSession().getAttribute("user");
		int aid = Integer.parseInt(request.getParameter("aid"));
		a.setId(aid);
		a.setUid(u.getUid());
		a.setShengFen(request.getParameter("shengfen"));
		a.setCity(request.getParameter("city"));
		a.setName(request.getParameter("name"));
		a.setAddrees(request.getParameter("addrees"));
		a.setPhone(request.getParameter("phone"));
		a.setPostcode(request.getParameter("pos"));
		int jg = ad.updateAddress(a);
		if (jg > 0) {
			out.print("true");
		} else {
			out.print("false");
		}

		out.flush();
		out.close();
	}
}
