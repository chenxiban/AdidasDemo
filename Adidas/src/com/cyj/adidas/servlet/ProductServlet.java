package com.cyj.adidas.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyj.adidas.dao.impl.OrderdetailImpl;
import com.cyj.adidas.dao.impl.ProductDaoImpl;
import com.cyj.adidas.dao.impl.ReviewDaoImpl;
import com.cyj.adidas.dao.impl.ShoppingDaoImpl;
import com.cyj.adidas.dao.impl.SpecificationDaoImpl;
import com.cyj.adidas.dao.impl.TitleTypeDaoImpl;
import com.cyj.adidas.dao.impl.ZhuPositionDaoImpl;
import com.cyj.adidas.daos.Orderdetail;
import com.cyj.adidas.daos.ProductDao;
import com.cyj.adidas.daos.ReviewDao;
import com.cyj.adidas.daos.ShoppingDao;
import com.cyj.adidas.daos.SpecificationDao;
import com.cyj.adidas.daos.TitleTypeDao;
import com.cyj.adidas.daos.ZhuPositionDao;
import com.cyj.adidas.entity.OrdersDetail;
import com.cyj.adidas.entity.Product;
import com.cyj.adidas.entity.Result;
import com.cyj.adidas.entity.Review;
import com.cyj.adidas.entity.Shopping;
import com.cyj.adidas.entity.Specification;
import com.cyj.adidas.entity.TitleType;
import com.cyj.adidas.entity.UserInfo;
import com.cyj.adidas.entity.ZhuPosition;
import com.cyj.adidas.util.DateUtil;
import com.cyj.adidas.util.ImageHelp;
import com.cyj.adidas.util.IsEmptyUtils;
import com.google.gson.Gson;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class ProductServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	private ShoppingDao spdao = new ShoppingDaoImpl();
	private ProductDao pDao = new ProductDaoImpl();
	private TitleTypeDao cdao = new TitleTypeDaoImpl();
	private SpecificationDao sdao = new SpecificationDaoImpl();
	private ZhuPositionDao zdao = new ZhuPositionDaoImpl();
	private Orderdetail osdao = new OrderdetailImpl();
	private ReviewDao redao = new ReviewDaoImpl();

	/**
	 * 商品明细
	 */
	public void productInfo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		UserInfo user = (UserInfo) request.getSession().getAttribute("user");
		int pid = Integer.parseInt(request.getParameter("Pid"));
		ProductDao pdDao = new ProductDaoImpl();
		SpecificationDao sdao = new SpecificationDaoImpl();
		ReviewDao rdao = new ReviewDaoImpl();

		Product p = pdDao.selectProduct(pid);
		int sid = p.getSid();
		Specification sc = sdao.selectSpecification(sid);
		p.setSc(sc);

		/*
		 * String[] size=p.getSize().split(",");//分割尺寸 List<Integer>
		 * sizelist=new ArrayList<Integer>(); for (String s : size) {
		 * sizelist.add(Integer.parseInt(s)); }
		 */

		if (IsEmptyUtils.isEmpty(user)) {
			List<Review> rlist = rdao.getAllReviews(pid);
			request.setAttribute("rList", rlist);
			request.setAttribute("productInfo", p);
			request.getRequestDispatcher("product.jsp").forward(request,
					response);
		} else {
			int uid = user.getUid();
			Shopping s2 = spdao.selectShopping(uid, pid);
			List<Review> rlist = rdao.getAllReviews(pid);
			request.setAttribute("rList", rlist);
			request.setAttribute("shoppingInfo", s2);
			request.setAttribute("productInfo", p);
			request.getRequestDispatcher("product.jsp").forward(request,
					response);
		}

		out.flush();
		out.close();
	}

	/**
	 * 推荐商品
	 */
	public void getPosProducts(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 此设置对get请求是无效的
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Gson g = new Gson();

		Integer posid = Integer.parseInt(request.getParameter("posid"));

		ProductDao pdao = new ProductDaoImpl();
		List<Product> p = pdao.getPosProducts(posid);
		out.print(g.toJson(p));
		out.flush();
		out.close();
	}

	/**
	 * 删除商品
	 */
	public void delProduct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String ids = request.getParameter("ids");// 获取要删除的商品id
		int sid = Integer.parseInt(request.getParameter("sid"));// 获取要查询的商品id
		List<OrdersDetail> os = osdao.selectIs(sid);// 根据商品id查询是否有该订单

		if (IsEmptyUtils.isEmpty(os)) {// 如果没有该订单直接根据商品id删除推荐位置信息、购物车商品信息和商品信息
			Shopping shop = spdao.selectByIds(sid);// 根据商品id查询购物车中信息

			if (IsEmptyUtils.isEmpty(shop)) {// 根据商品id查询购物车中信息是否为空

				Review re = redao.getAllReview(sid);
				if (!IsEmptyUtils.isEmpty(re)) {// 跟局商品id查询评论表是否存在该商品
					redao.delAllReview(sid);

					List<ZhuPosition> z = zdao.selectZhuPosition(sid);
					if (IsEmptyUtils.isEmpty(ids)) {
						out.print("false");
					} else {
						if (IsEmptyUtils.isEmpty(z)) {
							if (pDao.deleteProduct(ids) > 0) {
								out.print("true");
							} else {
								out.print("false");
							}
						} else {
							zdao.deleteZhuPosition(ids);
							if (pDao.deleteProduct(ids) > 0) {
								out.print("true");
							} else {
								out.print("false");
							}
						}
					}
				} else {
					List<ZhuPosition> z = zdao.selectZhuPosition(sid);
					if (IsEmptyUtils.isEmpty(ids)) {
						out.print("false");
					} else {
						if (IsEmptyUtils.isEmpty(z)) {
							if (pDao.deleteProduct(ids) > 0) {
								out.print("true");
							} else {
								out.print("false");
							}
						} else {
							zdao.deleteZhuPosition(ids);
							if (pDao.deleteProduct(ids) > 0) {
								out.print("true");
							} else {
								out.print("false");
							}
						}
					}
				}

			} else {
				spdao.delShoppings(sid);
				Review re = redao.getAllReview(sid);
				if (!IsEmptyUtils.isEmpty(re)) {
					redao.delAllReview(sid);
					List<ZhuPosition> z = zdao.selectZhuPosition(sid);
					if (IsEmptyUtils.isEmpty(ids)) {
						out.print("false");
					} else {
						if (IsEmptyUtils.isEmpty(z)) {
							if (pDao.deleteProduct(ids) > 0) {
								out.print("true");
							} else {
								out.print("false");
							}
						} else {
							zdao.deleteZhuPosition(ids);
							if (pDao.deleteProduct(ids) > 0) {
								out.print("true");
							} else {
								out.print("false");
							}
						}
					}
				} else {
					List<ZhuPosition> z = zdao.selectZhuPosition(sid);
					if (IsEmptyUtils.isEmpty(ids)) {
						out.print("false");
					} else {
						if (IsEmptyUtils.isEmpty(z)) {
							if (pDao.deleteProduct(ids) > 0) {
								out.print("true");
							} else {
								out.print("false");
							}
						} else {
							zdao.deleteZhuPosition(ids);
							if (pDao.deleteProduct(ids) > 0) {
								out.print("true");
							} else {
								out.print("false");
							}
						}
					}
				}
			}

		} else {// 如果有该订单则不可删除
			out.print("noos");
		}

		out.flush();
		out.close();
	}

	/**
	 * 多条件检索
	 */
	public void searchByName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int products = Integer.parseInt(request.getParameter("products"));
		String name = request.getParameter("pname");
		String priceFrom = request.getParameter("priceFrom");
		String priceTo = request.getParameter("priceTo");
		String saleTimeFrom = request.getParameter("onSaleTimeFrom");
		String saleTimeTo = request.getParameter("onSaleTimeTo");
		double from = 0, to = 0;
		Date timeFrom = null, timeTo = null;
		if (!IsEmptyUtils.isEmpty(priceFrom)) {
			from = Double.parseDouble(priceFrom);
		}
		if (!IsEmptyUtils.isEmpty(priceTo)) {
			to = Double.parseDouble(priceTo);
		}
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
		String orderBy = "order by Id asc";
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
		String data = pDao.getProductsByPage(products, name, from, to,
				timeFrom, timeTo, page, pageSize, orderBy);
		out.println(data);
		out.flush();
		out.close();
	}

	/**
	 * 修改商品信息
	 */
	public void searchById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		int pid = 0;
		if (id != null) {
			pid = Integer.parseInt(id);
		}
		Product p = pDao.getProductById(pid);
		TitleType tc = cdao.getTitleType(p.getTyId());
		System.out.println(tc.getName());
		p.setTc(tc);
		Specification pc = sdao.selectSpecification(p.getSid());
		p.setSc(pc);
		request.setAttribute("product", p);
		request.getRequestDispatcher("admin/productDetail.jsp").forward(
				request, response);
	}

	/**
	 * 保存修改到数据中
	 */
	@SuppressWarnings("unused")
	public void updateProduct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Product p = new Product();
		Specification s = new Specification();
		String sellPrice = request.getParameter("sellPrice");
		String name = request.getParameter("name");
		String picUrl = request.getParameter("picUrl");
		Integer categoryId = Integer.parseInt(request
				.getParameter("categoryId"));
		Integer productStore = Integer.parseInt(request
				.getParameter("productStore"));
		String size = request.getParameter("size");
		String type = request.getParameter("type");
		String color = request.getParameter("color");
		String canUse = request.getParameter("canUse");
		Integer scid = Integer.parseInt(request.getParameter("scid"));
		Double sellpic = null;
		if (IsEmptyUtils.isEmpty(name) || IsEmptyUtils.isEmpty(sellPrice)
				|| IsEmptyUtils.isEmpty(size) || IsEmptyUtils.isEmpty(color)
				|| IsEmptyUtils.isEmpty(type)
				|| IsEmptyUtils.isEmpty(productStore)
				|| IsEmptyUtils.isEmpty(canUse) || IsEmptyUtils.isEmpty(scid)) {
			out.println("修改信息不完整,请将每项填写完整<a href='javascript:history.back();'>重试</a>");
			return;
		} else {
			sellpic = Double.parseDouble(sellPrice);
			p.setId(Integer.parseInt(request.getParameter("id")));
			p.setPname(name);
			p.setPicUrl(picUrl);
			p.setTyId(categoryId);
			p.setProductStore(productStore);
			p.setSellPrice(sellpic);
			p.setSize(size);
			p.setColor(color);
			p.setType(type);
			p.setCanUse(canUse);
			p.setSid(scid);
			if (pDao.updateProduct(p) > 0) {
				response.sendRedirect("admin/gproduct.jsp");
			} else {
				response.sendRedirect("admin/error.jsp");
			}
		}
		out.flush();
		out.close();
	}

	/**
	 * 保存添加到数据中
	 */
	public void addProduct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Product p = new Product();
		String sellPrice = request.getParameter("sellPrice");
		String name = request.getParameter("name");
		String picUrl = request.getParameter("picUrl");
		Integer categoryId = Integer.parseInt(request
				.getParameter("categoryId"));
		Integer productStore = Integer.parseInt(request
				.getParameter("productStore"));
		String size = request.getParameter("size");
		String color = request.getParameter("color");
		String type = request.getParameter("type");
		String canUse = request.getParameter("canUse");
		Integer scid = Integer.parseInt(request.getParameter("scid"));
		Double sellpic = null;
		if (IsEmptyUtils.isEmpty(name) || IsEmptyUtils.isEmpty(sellPrice)
				|| IsEmptyUtils.isEmpty(size) || IsEmptyUtils.isEmpty(color)
				|| IsEmptyUtils.isEmpty(type)
				|| IsEmptyUtils.isEmpty(categoryId)
				|| IsEmptyUtils.isEmpty(productStore)
				|| IsEmptyUtils.isEmpty(canUse) || IsEmptyUtils.isEmpty(scid)) {
			out.println("添加信息不完整,请将必项填写完整<a href='javascript:history.back();'>重试</a>");
			return;
		} else {
			sellpic = Double.parseDouble(sellPrice);
			p.setPname(name);
			p.setPicUrl(picUrl);
			p.setTyId(categoryId);
			p.setProductStore(productStore);
			p.setSellPrice(sellpic);
			p.setSize(size);
			p.setColor(color);
			p.setType(type);
			p.setCanUse(canUse);
			p.setSid(scid);
			if (pDao.addProduct(p) > 0) {
				response.sendRedirect("admin/gproduct.jsp");
			} else {
				response.sendRedirect("admin/error.jsp");
			}
		}
	}

	/**
	 * 上传图片
	 */
	public void uploadPic(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		String filePath = "images/product/";
		String fname = new Date().getTime() + "";
		SmartUpload smart = new SmartUpload();
		smart.initialize(getServletConfig(), request, response);
		smart.setCharset("utf-8");
		try {
			smart.upload();
			smart.getFiles().getFile(0).saveAs(filePath + fname + ".png");
			// 缩放并存储
			String inputFoler = this.getServletContext().getRealPath(filePath)
					+ "\\" + fname + ".png"; // 这儿填写你存放要缩小图片的文件夹全地址

			String outputFolder2 = this.getServletContext().getRealPath(
					filePath)
					+ "\\" + fname + "-m.png"; // 这儿填写你转化后的图片存放的文件夹名
			// 将图片缩放成400x400的中图
			ImageHelp.writeHighQuality(
					ImageHelp.zoomImage(inputFoler, 500, 500), outputFolder2);// 缩放至50%
			out.println(Result.toClient(true, "图片上传成功", fname));
		} catch (SmartUploadException e) {
			e.printStackTrace();
			out.println(Result.toClient(false, "图片修改失败"));
		}
		out.flush();
		out.close();
	}

	// 上传图片
	@SuppressWarnings("unused")
	public void uploadImg(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		if (request.getMethod().equals("GET")) {
			return;
		}
		String id = request.getParameter("id");
		int pid = 0;
		if (!IsEmptyUtils.isEmpty(id)) {
			pid = Integer.parseInt(id);
		}
		// 图片保存目录
		String filePath = "/images/product";
		// 定义重命名后的文件名
		String fname = id + "-" + System.currentTimeMillis();
		String message = "上传失败";
		SmartUpload smart = new SmartUpload();
		smart.initialize(this.getServletConfig(), request, response);
		smart.setCharset("utf-8");
		try {
			smart.upload();
			// 重命名文件名并保存在指定路径
			smart.getFiles().getFile(0).saveAs(filePath + "/" + fname + ".png");
			if (pDao.updateProductPic(pid, fname) > 0) {
				// 将结果输出到客户端
				out.println(Result.toClient(true, "图片修改成功", "images/product/"
						+ fname));
			}

			// 缩放并存储
			String inputFoler = this.getServletContext().getRealPath(filePath)
					+ "\\" + fname + ".png";/* 这儿填写你存放要缩小图片的文件夹全地址 */

			String outputFolder2 = this.getServletContext().getRealPath(
					filePath)
					+ "\\" + fname + "-m.png";/* 这儿填写你转化后的图片存放的文件夹名 */
			// 将图片缩放成500x500的中图
			ImageHelp.writeHighQuality(
					ImageHelp.zoomImage(inputFoler, 500, 500), outputFolder2);// 缩放至50%

		} catch (SmartUploadException e) {
			e.printStackTrace();
			out.println(Result.toClient(false, "图片修改失败"));
		}
		out.flush();
		out.close();
	}

	/**
	 * 获取分类
	 */
	public void getAllCategory(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		List<TitleType> clist = cdao.getAllTitleTypes();
		String data = new Gson().toJson(clist);
		out.print(data);
	}

	/**
	 * 后台的推荐商品
	 */
	public void remmentProducts(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Integer pid = Integer.parseInt(request.getParameter("id"));
		Integer val = Integer.parseInt(request.getParameter("val"));
		Integer tex = Integer.parseInt(request.getParameter("tex"));
		int n = pDao.remmentProduct(pid, val, tex);
		if (n > 0) {
			out.print(Result.toClient(true, "商品推荐成功"));
		} else {
			out.print(Result.toClient(false, "商品推荐失败"));
		}

	}

	/**
	 * 是否上下架
	 */
	public void updateNo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String on = request.getParameter("on");
		String pid = request.getParameter("ids");
		int n = pDao.updateOn(pid, on);
		if (n > 0) {
			out.print("true");
		} else {
			out.print("false");
		}

	}

}
