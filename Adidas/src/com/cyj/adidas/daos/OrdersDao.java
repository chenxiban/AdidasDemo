package com.cyj.adidas.daos;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.cyj.adidas.entity.Orders;

public interface OrdersDao {
	/**
	 * 订单管理接口
	 */
	// 添加订单
	public int addOrders(Orders o);

	// 修改订单
	public int updateOrders(Orders o);

	// 根据用户Id查找订单
	public List<Orders> selectOrders(Integer Uid);
	
	// 根据订单Id查找订单
	public Orders selectOrder(String id);
	
	// 根据订单Id修改收获地址
	public int updateAddress(int oid, String address);

	// 删除订单
	public int deleteOrders(String Oid);
	
	// 根据下订单时间查询订单信息
	public Orders selectOrderByBeginTime(Timestamp BeginTime);
	
	// 根据下订单时间查询订单信息
	public int updateState(String id,String state);
	
	// 根据下订单时间查询订单信息
	public int insertFaInfo(Orders o);
	
	// 根据地址aid查询订单信息
	public Orders selectOrder2(String aid);
	
	//根据订单id查询订单详情信息
	public List<Orders> selectOrder3(String oid);
	
	//分页显示
	public String getOrdersByPage(String id,String Status,Date saleTimeFrom, Date saleTimeTo,
			int page,int pageSize,String orderBy);
	
	public List<Orders> getUserInfo(String id,String Status,Date saleTimeFrom, Date saleTimeTo);//多条件查询
}
