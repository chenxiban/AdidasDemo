package com.cyj.adidas.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyj.adidas.dao.impl.OrderdetailImpl;
import com.cyj.adidas.dao.impl.OrdersDaoImpl;
import com.cyj.adidas.daos.Orderdetail;
import com.cyj.adidas.daos.OrdersDao;
import com.cyj.adidas.entity.Orders;
import com.cyj.adidas.entity.OrdersDetail;
import com.cyj.adidas.util.DateUtil;
import com.cyj.adidas.util.IsEmptyUtils;
import com.google.gson.Gson;

@SuppressWarnings("serial")
public class OrdersServlet extends BaseServlet {
	private OrdersDao odao = new OrdersDaoImpl();
	private Orderdetail oSdao = new OrderdetailImpl();

	/**
	 * 多条件检索
	 */
	public void searchByName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String id = request.getParameter("oid");
		String Status = request.getParameter("oStatus");
		String saleTimeFrom = request.getParameter("onSaleTimeFrom");
		String saleTimeTo = request.getParameter("onSaleTimeTo");
		Date timeFrom = null, timeTo = null;
		if (!IsEmptyUtils.isEmpty(saleTimeFrom)) {
			timeFrom = DateUtil.parseDate(saleTimeFrom);
		}
		if (!IsEmptyUtils.isEmpty(saleTimeTo)) {
			timeTo = DateUtil.parseDate(saleTimeTo);
		}
		if (timeFrom != null && timeTo != null && timeFrom.after(timeTo)) {
			out.println("查询上限日期不能晚于下限日期");
			out.flush();
			out.close();
			return;
		}
		int page = 1, pageSize = 5;
		String orderBy = "order by OrderTime desc";
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
		String data = odao.getOrdersByPage(id, Status, timeFrom, timeTo, page,
				pageSize, orderBy);
		out.println(data);
		out.flush();
		out.close();
	}

	/**
	 * 批量删除
	 */
	public void delOrders(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String ids = request.getParameter("ids");// 获取要删除的商品id
		Orders o = new Orders();
		o.setId(ids);
		OrdersDetail s = new OrdersDetail();
		s.setOid(ids);
		if (IsEmptyUtils.isEmpty(ids)) {
			out.print("false");
		} else {
			if (oSdao.deleteOrderdetail(ids) > 0) {
				if (odao.deleteOrders(ids) > 0) {
					out.print("true");
				} else {
					out.print("false");
				}
			}
		}
		out.flush();
		out.close();
	}

	/**
	 * 确认收货状态
	 */
	public void updateState(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String ids = request.getParameter("ids");// 获取要修改的商品id
		String state = "未评价";// 获取要修改的商品状态
		Orders o = new Orders();
		o.setId(ids);
		o.setStatus(state);
		if (odao.updateState(ids, state) > 0) {
			out.print("true");
		} else {
			out.print("false");
		}
		out.flush();
		out.close();
	}
	
	
	/**
	 * 修改发货信息
	 */
	public void searchById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Orders o=odao.selectOrder(id);
		request.setAttribute("orders", o);
		request.getRequestDispatcher("admin/updateState.jsp").forward(
				request, response);
	}
	
	
	/**
	 * 添加发货单号以及物流公司
	 */
	public void insertFaInfo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String ids = request.getParameter("ids");// 获取要修改的商品id
		String wuliu = request.getParameter("wuliu");// 商品物流
		String state = "已发货";// 要修改的商品状态
		Orders o = new Orders();
		o.setId(ids);
		o.setStatus(state);
		o.setShipName(wuliu);
		if (IsEmptyUtils.isEmpty(ids)) {
			out.print("false");
		} else {
			if (odao.updateState(ids, state) > 0 && odao.insertFaInfo(o) > 0) {
				out.print("true");
			} else {
				out.print("false");
			}
		}
		out.flush();
		out.close();
	}

	/**
	 * 根据订单id查询订单详情
	 */
	public void selectOrderD(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Gson g = new Gson();
		
		String oid=request.getParameter("oid");
		
		List<Orders> or=odao.selectOrder3(oid);
		out.print(g.toJson(or));
		out.flush();
		out.close();
	}

}
