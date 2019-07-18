package com.cyj.adidas.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyj.adidas.dao.impl.ZhuPositionDaoImpl;
import com.cyj.adidas.daos.ZhuPositionDao;
import com.cyj.adidas.entity.ZhuPosition;
import com.cyj.adidas.util.IsEmptyUtils;
import com.google.gson.Gson;

@SuppressWarnings("serial")
public class ZhuPositionServlet extends BaseServlet {
	@SuppressWarnings("unused")
	private Gson g = new Gson();
	private ZhuPositionDao zdao = new ZhuPositionDaoImpl();

	/**
	 * 推荐信息
	 */
	public void getPosProductInfo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Gson g = new Gson();

		int sid = Integer.parseInt(request.getParameter("sid"));
		ZhuPositionDao zdao = new ZhuPositionDaoImpl();
		List<ZhuPosition> z = zdao.selectZhuPosition(sid);
		out.print(g.toJson(z));
		out.flush();
		out.close();
	}

	/**
	 * 多条件检索
	 */
	public void searchByName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String posid = request.getParameter("posid");
		int page = 1, pageSize = 5;
		String orderBy = "order by Posid asc,Weight desc";
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
		String data = zdao
				.getZhuPositionsByPage(posid, page, pageSize, orderBy);
		out.println(data);
		out.flush();
		out.close();
	}

	// 删除推荐表中的商品
	public void delZhuPos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		if (zdao.deleteZhuPosition(id) > 0) {
			out.print("true");
		} else {
			out.print("false");
		}

		out.flush();
		out.close();
	}

	/**
	 * 修改推荐信息
	 */
	public void searchById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		int pid = 0;
		if (id != null) {
			pid = Integer.parseInt(id);
		}
		ZhuPosition p = zdao.getZhuPositionById(pid);
		request.setAttribute("zhu", p);
		request.getRequestDispatcher("admin/zhuPositionDetail.jsp").forward(
				request, response);
	}

	/**
	 * 保存修改到数据中
	 */
	@SuppressWarnings("unused")
	public void updateZhuPosition(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ZhuPosition p = new ZhuPosition();
		int zid = Integer.parseInt(request.getParameter("zid"));
		String url = request.getParameter("url");
		int posid = Integer.parseInt(request.getParameter("posid"));
		String type = request.getParameter("type");
		int weight = Integer.parseInt(request.getParameter("weight"));
		Double sellpic = null;
		if (IsEmptyUtils.isEmpty(zid) || IsEmptyUtils.isEmpty(posid)
				|| IsEmptyUtils.isEmpty(type) || IsEmptyUtils.isEmpty(weight)) {
			out.println("修改信息不完整,请将每项填写完整<a href='javascript:history.back();'>重试</a>");
			return;
		} else {
			if (IsEmptyUtils.isEmpty(url) && url=="") {
				url=null;
			}else{
				url = request.getParameter("url");
			}
			p.setId(Integer.parseInt(request.getParameter("id")));
			p.setPid(zid);
			p.setPirUrl(url);
			p.setPosid(posid);
			p.setType(type);
			p.setWeight(weight);
			if (zdao.updateZhuPosition(p) > 0) {
				response.sendRedirect("admin/adv.jsp");
			} else {
				response.sendRedirect("admin/error.jsp");
			}
		}
		out.flush();
		out.close();
	}

}
