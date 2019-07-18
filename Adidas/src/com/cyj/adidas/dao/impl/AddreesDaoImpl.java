package com.cyj.adidas.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.cyj.adidas.daos.AddreesDao;
import com.cyj.adidas.entity.Addrees;
import com.cyj.adidas.util.DBManager;

public class AddreesDaoImpl implements AddreesDao {
	private DBManager<Addrees> db = new DBManager<Addrees>();

	/**
	 * 实现AddreesDao中的方法
	 */
	// 添加收货地址
	@SuppressWarnings({ "static-access", "unchecked", "rawtypes" })
	public int addRess(Addrees a) {
		String sql = "insert into Addrees(Uid,ShengFen,City,Name,Addrees,Phone,Postcode) values(?,?,?,?,?,?,?)";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(a.getUid());
		params.add(a.getShengFen());
		params.add(a.getCity());
		params.add(a.getName());
		params.add(a.getAddrees());
		params.add(a.getPhone());
		params.add(a.getPostcode());
		return db.executeUpdate(sql, params);
	}

	// 根据用户Id查询用户的多个地址
	public List<Addrees> getAddressByUid(int Uid) {
		String sql = "select * from Addrees where Uid=" + Uid;
		List<Addrees> list = db
				.getObjects(sql, "com.cyj.adidas.entity.Addrees");// 将数据存入对象集合中
		return list;
	}

	// 根据Id查询一条地址数据
	public Addrees selectAddress(int Id) {
		String sql = "select * from Addrees where Id=" + Id;
		List<Addrees> list = db
				.getObjects(sql, "com.cyj.adidas.entity.Addrees");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	// 修改用户地址
	@SuppressWarnings({ "unchecked", "rawtypes", "static-access" })
	public int updateAddress(Addrees a) {
		String sql;
		int b = Integer.parseInt(a.getPostcode());
		if (b > 0) {
			sql = "update Addrees set ShengFen=?,City=?,Name=?,Addrees=?,Phone=?,Postcode=? where Id=?";
			ArrayList params = new ArrayList();// 用来保存添加的用户信息
			params.add(a.getShengFen());
			params.add(a.getCity());
			params.add(a.getName());
			params.add(a.getAddrees());
			params.add(a.getPhone());
			params.add(a.getPostcode());
			params.add(a.getId());
			return db.executeUpdate(sql, params);
		} else {
			sql = "update Addrees set ShengFen=?,City=?,Name=?,Addrees=?,Phone=? where Id=?";
			ArrayList params = new ArrayList();// 用来保存添加的用户信息
			params.add(a.getShengFen());
			params.add(a.getCity());
			params.add(a.getName());
			params.add(a.getAddrees());
			params.add(a.getPhone());
			params.add(a.getId());
			return db.executeUpdate(sql, params);
		}
	}

	// 删除用户地址
	@SuppressWarnings("static-access")
	public int deleteAddress(String Id) {
		String sql = "delete Addrees where Id in(" + Id + ")";
		return db.executeUpdate(sql);
	}

	// 根据Uid查找一条地址
	public Addrees selectByAddress(int uid) {
		String sql = "select top 1 * from Addrees where Uid=" + uid;
		List<Addrees> list = db
				.getObjects(sql, "com.cyj.adidas.entity.Addrees");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

}
