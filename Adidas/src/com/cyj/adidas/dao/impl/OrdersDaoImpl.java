package com.cyj.adidas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cyj.adidas.daos.OrdersDao;
import com.cyj.adidas.entity.Orders;
import com.cyj.adidas.util.DBManager;
import com.cyj.adidas.util.DateUtil;
import com.cyj.adidas.util.IsEmptyUtils;
import com.cyj.adidas.util.StringUtil;

public class OrdersDaoImpl implements OrdersDao {
	private DBManager<Orders> db = new DBManager<Orders>();

	/**
	 * 实现OrdersDao中的方法
	 */
	// 添加订单
	@SuppressWarnings({ "rawtypes", "static-access", "unchecked" })
	public int addOrders(Orders o) {
		String sql = "insert into Orders(Id,OrderTime,Uid,TotalMoney,Status,Aid,Remark) values(?,?,?,?,?,?,?)";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(o.getId());
		params.add(o.getOrderTime());
		params.add(o.getUid());
		params.add(o.getTotalMoney());
		params.add(o.getStatus());
		params.add(o.getAid());
		params.add(o.getRemark());
		return db.executeUpdate(sql, params);
	}

	// 修改订单
	@SuppressWarnings({ "unchecked", "rawtypes", "static-access" })
	public int updateOrders(Orders o) {
		String sql = "update Orders set Status=? Shipname=?,ShipOrder=?,ShipTime=? where Id=?";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(o.getStatus());
		params.add(o.getShipName());
		params.add(o.getShipOrder());
		params.add(o.getShipTime());
		params.add(o.getId());
		return db.executeUpdate(sql, params);
	}

	// 根据用户Id查找订单
	public List<Orders> selectOrders(Integer Uid) {
		String sql = "select * from Orders where Uid=" + Uid;
		List<Orders> list = db.getObjects(sql, "com.cyj.adidas.entity.Orders");
		return list;
		/*Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Orders> Orders = new ArrayList<Orders>();
		try {
			conn = DBManager.getConnection();
			String sql = "select o.*,os.Pid from Orders o,OrdersDetail os where o.Id=os.Oid and o.Uid="+Uid;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Orders pt = new Orders();
				pt.setId(rs.getString("Id"));
				pt.setOrderTime(rs.getTimestamp("OrderTime"));
				pt.setUid(rs.getInt("Uid"));
				pt.setTotalMoney(rs.getDouble("TotalMoney"));
				pt.setStatus(rs.getString("Status"));
				pt.setShipName(rs.getString("ShipName"));
				pt.setShipTime(rs.getTimestamp("ShipTime"));
				pt.setAid(rs.getInt("Aid"));
				pt.setRemark(rs.getString("Remark"));
				pt.setShipOrder(rs.getString("ShipOrder"));
				pt.setPid(rs.getInt("Pid"));
				Orders.add(pt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeAll(rs, pstmt, conn);
		}
		return Orders;*/
	}

	// 根据订单Id修改收货地址
	@SuppressWarnings({ "rawtypes", "static-access", "unchecked" })
	public int updateAddress(int oid, String address) {
		String sql = "update Addrees set Addrees=? where Uid=(select Uid from Orders where Id=? )";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(address);
		params.add(oid);
		return db.executeUpdate(sql, params);
	}

	// 删除订单
	@SuppressWarnings({ "static-access", "rawtypes", "unchecked" })
	public int deleteOrders(String Oid) {
		String sql="delete from Orders where id=?";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(Oid);
		return db.executeUpdate(sql, params);
	}

	// 根据下订单时间查询订单信息
	public Orders selectOrderByBeginTime(Timestamp OrderTime) {
		String sql = "select * from Orders where OrderTime='" + OrderTime + "'";
		List<Orders> list = db.getObjects(sql, "com.cyj.adidas.entity.Orders");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	// 语句拼接
	public String getWhereByCons(String id,String Status,Date saleTimeFrom, Date saleTimeTo) {
		String where = " where 1=1";
		if (!IsEmptyUtils.isEmpty(id)) {
			where += " and Id like '%" + id + "%'";
		}
		if (!IsEmptyUtils.isEmpty(Status)) {
			where += " and Status='" + Status + "'";
		}
		if (saleTimeFrom != null && !IsEmptyUtils.isEmpty(saleTimeFrom)) {
			where += " and OrderTime >='" + DateUtil.formatDate(saleTimeFrom)
					+ "'";
		}
		if (saleTimeTo != null && !IsEmptyUtils.isEmpty(saleTimeTo)) {
			where += " and OrderTime <='" + DateUtil.formatDate(saleTimeTo)
					+ "'";
		}
		return where;
	}

	// 分页
	@SuppressWarnings("static-access")
	public String getOrdersByPage(String id, String Status,Date saleTimeFrom, Date saleTimeTo, int page,
			int pageSize, String orderBy) {
		String where = this.getWhereByCons(id,Status,saleTimeFrom,saleTimeTo);
		return db.executeQueryPagedForEasyUI("Orders",
				"Id,OrderTime,Uid,TotalMoney,Status,ShipName,ShipTime,Aid,Remark", where,
				orderBy, page, pageSize);
	}

	// 多条件检索
	public List<Orders> getUserInfo(String id, String Status,Date saleTimeFrom, Date saleTimeTo) {
		String sql = "select * from Orders where 1=1 ";
		if (!IsEmptyUtils.isEmpty(id)) {
			sql += " and Id like '%" + id + "%'";
		}
		if (!IsEmptyUtils.isEmpty(Status)) {
			sql += " and Status='" + Status + "'";
		}
		if (saleTimeFrom != null && !IsEmptyUtils.isEmpty(saleTimeFrom)) {
			sql += " and OrderTime >='" + DateUtil.formatDate(saleTimeFrom)
					+ "'";
		}
		if (saleTimeTo != null && !IsEmptyUtils.isEmpty(saleTimeTo)) {
			sql += " and OrderTime <='" + DateUtil.formatDate(saleTimeTo)
					+ "'";
		}
		return db.getObjects(sql, "com.cyj.adidas.entity.Orders");
	}

	//根据订单id修改发货状态
	@SuppressWarnings({ "static-access", "rawtypes", "unchecked" })
	public int updateState(String id, String state) {
		String sql="update Orders set Status=? where id=?";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(state);
		params.add(id);
		return db.executeUpdate(sql, params);
	}

	//添加发货单号以及物流公司
	@SuppressWarnings({ "static-access", "rawtypes", "unchecked" })
	public int insertFaInfo(Orders o) {
		String sql = "update Orders set ShipName=?,ShipOrder=? where Id=?";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(o.getShipName());
		params.add(StringUtil.getUUID());
		params.add(o.getId());
		return db.executeUpdate(sql, params);
	}

	//根据id查询订单
	public Orders selectOrder(String id) {
		String sql = "select * from Orders where Id='"+ id +"'" ;
		List<Orders> list = db.getObjects(sql, "com.cyj.adidas.entity.Orders");
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	//根据aid查询订单表
	public Orders selectOrder2(String aid) {
		String sql = "select * from Orders where Aid in("+ aid +")" ;
		List<Orders> list = db.getObjects(sql, "com.cyj.adidas.entity.Orders");
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	//根据id查询订单
	public List<Orders> selectOrder3(String oid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Orders> Orders = new ArrayList<Orders>();
		try {
			conn = DBManager.getConnection();
			String sql ="select o.Id,o.TotalMoney,p.Pname,os.Quantity,a.Name,a.Phone,u.Aid,u.Uname from Orders o,OrdersDetail os,Addrees a,UserInfo u,Product p where '"+ oid +"'=o.Id and os.Oid='"+ oid +"' and o.Uid=a.Uid and o.Aid=a.Id and u.Uid=o.Uid and os.Pid=p.Id" ;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Orders pt = new Orders();
				pt.setId(rs.getString("Id"));
				pt.setTotalMoney(rs.getDouble("TotalMoney"));
				pt.setPname(rs.getString("Pname"));
				pt.setQuantity(rs.getInt("Quantity"));
				pt.setName(rs.getString("Name"));
				pt.setPhone(rs.getString("Phone"));
				pt.setUaid(rs.getString("Aid"));
				pt.setUname(rs.getString("Uname"));
				Orders.add(pt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeAll(rs, pstmt, conn);
		}
		return Orders;
	}
}
