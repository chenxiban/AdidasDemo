package com.cyj.adidas.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.cyj.adidas.daos.Orderdetail;
import com.cyj.adidas.entity.OrdersDetail;
import com.cyj.adidas.util.DBManager;

public class OrderdetailImpl implements Orderdetail {
	private DBManager<OrdersDetail> db = new DBManager<OrdersDetail>();

	/**
	 * 实现订单详情接口
	 */

	public List<OrdersDetail> selectIs(int pid) {
		String sql = "select * from OrdersDetail where Pid="+pid;
		List<OrdersDetail> list = db
				.getObjects(sql, "com.cyj.adidas.entity.OrdersDetail");// 将数据存入对象集合中
		return list;
	}

	// 批量删除
	@SuppressWarnings({ "static-access", "unchecked", "rawtypes" })
	public int deleteOrderdetail(String Oid) {
		String sql = "delete from OrdersDetail where Oid=?";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(Oid);
		return db.executeUpdate(sql, params);
	}

	// 根据商品id删除
	@SuppressWarnings({ "static-access", "unchecked", "rawtypes" })
	public int deleteOrderdetails(String id) {
		String sql = "delete from OrdersDetail where Pid=?";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(id);
		return db.executeUpdate(sql, params);
	}

}
