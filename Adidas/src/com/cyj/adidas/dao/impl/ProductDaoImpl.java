package com.cyj.adidas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cyj.adidas.daos.ProductDao;
import com.cyj.adidas.entity.Product;
import com.cyj.adidas.util.DBManager;
import com.cyj.adidas.util.DateUtil;
import com.cyj.adidas.util.IsEmptyUtils;

public class ProductDaoImpl implements ProductDao {
	private DBManager<Product> db = new DBManager<Product>();

	/**
	 * 实现ProductDao中的方法
	 */
	@Override
	/**
	 * 根据id查询单个商品 (non-Javadoc)
	 * 
	 * @see com.cyj.adidas.daos.ProductDao#selectProduct(int)
	 */
	public Product selectProduct(int Pid) {
		String sql = "select * from Product where Id=" + Pid + "";
		List<Product> list = db
				.getObjects(sql, "com.cyj.adidas.entity.Product");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	/**
	 * 子查询查找推荐商品 (non-Javadoc)
	 * 
	 * @see com.cyj.adidas.daos.ProductDao#getPosProducts()
	 */
	@Override
	public List<Product> getPosProducts(int posid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Product> Product = new ArrayList<Product>();
		try {
			conn = DBManager.getConnection();
			String sql = "select p.*,z.Weight from Product p,ZhuPosition z where p.CanUse='是' and p.Id=z.Pid and Posid="
					+ posid + " order by z.Weight desc ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Product pt = new Product();
				pt.setId(rs.getInt("Id"));
				pt.setPicUrl(rs.getString("Pname"));
				pt.setTyId(rs.getInt("TyId"));
				pt.setSellPrice(rs.getDouble("SellPrice"));
				pt.setDisPrice(rs.getDouble("DisPrice"));
				pt.setType(rs.getString("Type"));
				pt.setPicUrl(rs.getString("Picurl"));
				pt.setSize(rs.getString("Size"));
				pt.setColor(rs.getString("Color"));
				pt.setCanUse(rs.getString("CanUse"));
				pt.setOnsaleTime(rs.getTimestamp("OnsaleTime"));
				pt.setProductStore(rs.getInt("ProductStore"));
				pt.setSid(rs.getInt("Sid"));
				pt.setWeight(rs.getInt("Weight"));
				Product.add(pt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeAll(rs, pstmt, conn);
		}
		return Product;
	}

	public String getWhereByCons(int products,String name, double priceFrom, double priceTo,
			Date saleTimeFrom, Date saleTimeTo) {
		String where="";
		if (products==2) {
			where = " where 1=1";
		} else if(products==1) {
			where = " where 1=1 and CanUse='是'";
		}
		if (!IsEmptyUtils.isEmpty(name)) {
			where += " and Pname like '%" + name + "%'";
		}
		if (!IsEmptyUtils.isEmpty(priceFrom)) {
			where += " and SellPrice >=" + priceFrom;
		}
		if (!IsEmptyUtils.isEmpty(priceTo) && priceTo != 0) {
			where += " and SellPrice <=" + priceTo;
		}
		if (saleTimeFrom != null && !IsEmptyUtils.isEmpty(saleTimeFrom)) {
			where += " and OnsaleTime >='" + DateUtil.formatDate(saleTimeFrom)
					+ "'";
		}
		if (saleTimeTo != null && !IsEmptyUtils.isEmpty(saleTimeTo)) {
			where += " and OnsaleTime <='" + DateUtil.formatDate(saleTimeTo)
					+ "'";
		}
		return where;
	}

	// 修改商品
	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public int updateProduct(Product p) {
		Date date = new Date();
		Timestamp nousedate = new Timestamp(date.getTime());
		String sql = "update product set Pname=?,TyId=?,SellPrice=?,Type=?,PicUrl=?,Size=?,Color=?,CanUse=?,OnsaleTime=?,ProductStore=?,Sid=? where Id=?";
		ArrayList params = new ArrayList();// 用来存储修改后的数据
		System.out.println(p.getTyId()+"---"+p.getSid());
		params.add(p.getPname());
		params.add(p.getTyId());
		params.add(p.getSellPrice());
		params.add(p.getType());
		params.add(p.getPicUrl());
		params.add(p.getSize());
		params.add(p.getColor());
		params.add(p.getCanUse());
		params.add(nousedate);
		params.add(p.getProductStore());
		params.add(p.getSid());
		params.add(p.getId());
		return DBManager.executeUpdate(sql, params);
	}

	// 根据id获取商品对象
	public Product getProductById(int id) {
		String sql = "select * from Product where id=" + id;
		List<Product> list = db
				.getObjects(sql, "com.cyj.adidas.entity.Product");
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	// 批量删除
	@SuppressWarnings("static-access")
	public int deleteProduct(String ids) {
		String sql = "delete from product where id in (" + ids + ")";
		return db.executeUpdate(sql);
	}

	public Product getProductById(String id) {// 根据id获取对象信息数据
		String sql = "select * from product where id=" + id;
		List<Product> list = db
				.getObjects(sql, "com.cyj.adidas.entity.Product");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	// 添加商品
	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public int addProduct(Product p) {
		Date date = new Date();
		Timestamp nousedate = new Timestamp(date.getTime());
		String sql = "insert into product (Pname,TyId,SellPrice,Type,PicUrl,Size,Color,CanUse,OnsaleTime,ProductStore,Sid)"
				+ " values (?,?,?,?,?,?,?,?,?,?,?)";
		ArrayList params = new ArrayList();// 用来存储修改后的数据
		params.add(p.getPname());
		params.add(p.getTyId());
		params.add(p.getSellPrice());
		params.add(p.getType());
		params.add(p.getPicUrl());
		params.add(p.getSize());
		params.add(p.getColor());
		params.add(p.getCanUse());
		params.add(nousedate);
		params.add(p.getProductStore());
		params.add(p.getSid());
		return DBManager.executeUpdate(sql, params);
	}

	@SuppressWarnings("static-access")
	@Override
	public String getProductsByPage(int products,String name, double priceFrom,
			double priceTo, Date saleTimeFrom, Date saleTimeTo, int page,
			int pageSize, String orderBy) {
		String where = this.getWhereByCons(products,name, priceFrom, priceTo,
				saleTimeFrom, saleTimeTo);
		return db
				.executeQueryPagedForEasyUI(
						"Product",
						"Id,Pname,TyId,SellPrice,Type,PicUrl,Size,Color,CanUse,OnsaleTime,ProductStore,Sid",
						where, orderBy, page, pageSize);
	}

	@Override
	public List<Product> getProduct(int prodcuts,String pname, Float priceFrom,
			Float priceTo, Date onSellTimeFrom, Date onSellTimeTo) {
		String sql="";
		if (prodcuts==2) {
			sql = "select * from product where 1=1 ";
		} else {
			sql = "select * from product where 1=1 and CanUse='是' ";
		}
		if (!IsEmptyUtils.isEmpty(pname)) {
			sql += " and name like '%" + pname + "%'";
		}
		if (!IsEmptyUtils.isEmpty(priceFrom)) {
			sql += " and DiscountPrice>=" + priceFrom;
		}
		if (!IsEmptyUtils.isEmpty(priceTo)) {
			sql += " and DiscountPrice<=" + priceTo;
		}
		if (onSellTimeFrom != null && !IsEmptyUtils.isEmpty(onSellTimeFrom)) {
			sql += " and onSaleTime>='" + DateUtil.formatDate(onSellTimeFrom)
					+ "'";
		}
		if (onSellTimeTo != null && !IsEmptyUtils.isEmpty(onSellTimeTo)) {
			sql += " and onSaleTime<='" + DateUtil.formatDate(onSellTimeTo)
					+ "'";
		}
		return db.getObjects(sql, "com.cyj.adidas.entity.Product");
	}

	// 修改图片
	@SuppressWarnings("static-access")
	public int updateProductPic(int id, String pic) {
		String sql = "update Product set PicUrl='" + pic + "'" + " where id="
				+ id;
		return db.executeUpdate(sql);
	}

	// 后台推荐商品
	@SuppressWarnings({ "unchecked", "rawtypes", "unused" })
	public int remmentProduct(int pid, int posid,int weid) {
		String sqls = "select * from Product where Id=" + pid;
		Product p = null;
		String url = null;
		String sql = "insert into ZhuPosition (Pid,PirUrl,Posid,Type,Weight) values(?,?,?,?,?)";
		ArrayList params = new ArrayList();// 用来存储修改后的数据
		params.add(pid);
		params.add(url);
		params.add(posid);
		params.add("商品");
		params.add(weid);
		return DBManager.executeUpdate(sql, params);
	}

	// 是否上下架
	@SuppressWarnings("static-access")
	public int updateOn(String pid, String on) {
		String sql = "update Product set CanUse='"+ on +"' where Id in (" + pid + ")";
		return db.executeUpdate(sql);
	}
}
