package com.cyj.adidas.daos;

import java.util.List;

import com.cyj.adidas.entity.OrdersDetail;

public interface Orderdetail {
	/**
	 * 订单详情接口
	 */
	
	//根据商品id是否存在
	public List<OrdersDetail> selectIs(int pid);
	
	// 删除订单
	public int deleteOrderdetail(String Oid);
		
	// 删除订单
	public int deleteOrderdetails(String pid);
}
