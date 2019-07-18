package com.cyj.adidas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cyj.adidas.daos.ShoppingDao;
import com.cyj.adidas.entity.Shopping;
import com.cyj.adidas.util.DBManager;

public class ShoppingDaoImpl implements ShoppingDao {
	private DBManager<Shopping> db = new DBManager<Shopping>();

	/**
	 * 实现ShopingDao中的方法
	 */

	/**
	 * 添加商品到购物车 (non-Javadoc)
	 */
	@SuppressWarnings({ "unchecked", "rawtypes", "static-access" })
	@Override
	public int addProShopping(Shopping s) {
		String sql = "insert into Shopping(Pid,Uid,Num) values(?,?,?)";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(s.getPid());
		params.add(s.getUid());
		params.add(s.getNum());
		return db.executeUpdate(sql, params);

	}

	/**
	 * 查询某个用户购物车中的所有商品 (non-Javadoc)
	 */
	@Override
	public List<Shopping> getAllProByUid(int Uid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Shopping> Shopping = new ArrayList<Shopping>();
		try {
			conn = DBManager.getConnection();
			String sql = "select s.*,p.PicUrl,p.Pname,p.SellPrice,p.ProductStore from shopping s,Product p where s.Pid=p.Id and s.Uid="
					+ Uid;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Shopping pt = new Shopping();
				pt.setId(rs.getInt("Id"));
				pt.setPid(rs.getInt("Pid"));
				pt.setUid(rs.getInt("Uid"));
				pt.setNum(rs.getInt("Num"));
				pt.setPicUrl(rs.getString("Picurl"));
				pt.setPname(rs.getString("Pname"));
				pt.setSellPrice(rs.getDouble("SellPrice"));
				pt.setPoductStore(rs.getInt("ProductStore"));
				Shopping.add(pt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeAll(rs, pstmt, conn);
		}
		return Shopping;
	}

	/**
	 * 修改购物车中的商品 (non-Javadoc)
	 */
	@SuppressWarnings({ "static-access", "unchecked", "rawtypes" })
	@Override
	public int updateShopping(int pid, int num) {
		String sql = "update Shopping set Num=Num+? where Id=?";
		ArrayList params = new ArrayList();// 用来存储修改后的数据
		params.add(num);
		params.add(pid);
		return db.executeUpdate(sql, params);
	}

	/**
	 * 删除购物车中的商品 (non-Javadoc)
	 */
	@SuppressWarnings("static-access")
	@Override
	public int deleteShopping(String Id) {
		String sql = "delete Shopping where Id in (" + Id + ")";
		return db.executeUpdate(sql);
	}

	/**
	 * 查询某个用户的商品是否存在 (non-Javadoc)
	 */
	@Override
	public Shopping selectShopping(int Uid, int Pid) {
		String sql = "select * from Shopping where Uid=" + Uid + " and Pid="
				+ Pid;
		List<Shopping> list = db.getObjects(sql,
				"com.cyj.adidas.entity.Shopping");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	/**
	 * 根据Id查询一条记录 (non-Javadoc)
	 */
	@Override
	public Shopping selectById(int Id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shopping pt = new Shopping();
		try {
			conn = DBManager.getConnection();
			String sql = "select s.*,p.PicUrl,p.Pname,p.SellPrice,p.ProductStore from shopping s,Product p where s.Pid=p.Id and s.Id="
					+ Id;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				pt.setId(rs.getInt("Id"));
				pt.setPid(rs.getInt("Pid"));
				pt.setUid(rs.getInt("Uid"));
				pt.setNum(rs.getInt("Num"));
				pt.setPicUrl(rs.getString("Picurl"));
				pt.setPname(rs.getString("Pname"));
				pt.setSellPrice(rs.getDouble("SellPrice"));
				pt.setPoductStore(rs.getInt("ProductStore"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeAll(rs, pstmt, conn);
		}
		return pt;
	}

	/**
	 * 根据UId删除购物车数据(non-Javadoc)
	 */
	@SuppressWarnings("static-access")
	public int delShopping(int Uid) {
		String sql = "delete Shopping where Uid=" + Uid;
		return db.executeUpdate(sql);
	}
	
	/**
	 * 根据Pid删除购物车数据(non-Javadoc)
	 */
	@SuppressWarnings("static-access")
	public int delShoppings(int pid) {
		String sql = "delete Shopping where Pid=" + pid;
		return db.executeUpdate(sql);
	}

	/**
	 * 根据Id购物车数据(non-Javadoc)
	 */
	@SuppressWarnings({ "unchecked", "static-access", "rawtypes" })
	@Override
	public int updateShoppings(Shopping s) {
		String sql = "update Shopping set Num=? where Id=?";
		ArrayList params = new ArrayList();// 用来存储修改后的数据
		params.add(s.getNum());
		params.add(s.getId());
		return db.executeUpdate(sql, params);
	}

	//根据商品id查询购物车中是否有该商品信息
	public Shopping selectByIds(int pid) {
		String sql="select * from shopping where Pid="+pid;
		List<Shopping> list = db.getObjects(sql,
				"com.cyj.adidas.entity.Shopping");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

}
