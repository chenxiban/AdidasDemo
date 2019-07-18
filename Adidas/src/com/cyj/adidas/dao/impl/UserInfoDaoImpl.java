package com.cyj.adidas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cyj.adidas.daos.UserInfoDao;
import com.cyj.adidas.entity.Product;
import com.cyj.adidas.entity.UserInfo;
import com.cyj.adidas.util.DBManager;
import com.cyj.adidas.util.DateUtil;
import com.cyj.adidas.util.IsEmptyUtils;

public class UserInfoDaoImpl implements UserInfoDao {
	private DBManager<UserInfo> db = new DBManager<UserInfo>();
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	/**
	 * 实现UserDao中的方法（用户管理）
	 */
	public UserInfo loginUser(String nameorphone, String pwd) {
		UserInfo u = null;
		try {
			conn = DBManager.getConnection();
			String sql = "select * from UserInfo where (Pwd=? and Uname=?) or (Pwd=? and Phone=?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, nameorphone);
			pstmt.setString(3, pwd);
			pstmt.setString(4, nameorphone);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				u = new UserInfo();
				u.setUid(rs.getInt("Uid"));
				u.setUname(rs.getString("Uname"));
				u.setPwd(rs.getString("Pwd"));
				u.setPhone(rs.getString("Phone"));
				u.setEmail(rs.getString("Email"));
				u.setFlag(rs.getInt("Flag"));
				u.setAid(rs.getString("Aid"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeAll(rs, pstmt, conn);
		}
		return u;
	}

	// 根据name获取对象信息
	@Override
	public UserInfo getUser(String name) {
		String sql = "select * from UserInfo where Uname='" + name
				+ "' or Phone='" + name + "' ";
		List<UserInfo> list = db.getObjects(sql,
				"com.cyj.adidas.entity.UserInfo");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	// 注册用户添加
	@SuppressWarnings({ "unchecked", "rawtypes", "static-access" })
	public int addUser(UserInfo u) {
		String sql = "insert into UserInfo(Uname,Pwd,Sex,Birthday,Phone,CreateTime,Flag,Email) values(?,?,?,?,?,?,?,?)";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(u.getUname());
		params.add(u.getPwd());
		params.add(u.getSex());
		params.add(u.getBirthday());
		params.add(u.getPhone());
		params.add(u.getCreateTime());
		params.add(u.getFlag());
		params.add(u.getEmail());
		return db.executeUpdate(sql, params);
	}

	/**
	 * 根据id查询单个用户 (non-Javadoc)
	 */
	@Override
	public UserInfo selectUsers(int Uid) {
		String sql = "select * from UserInfo where Uid=" + Uid + "";
		List<UserInfo> list = db.getObjects(sql,
				"com.cyj.adidas.entity.UserInfo");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	/**
	 * 修改用户密码 (non-Javadoc)
	 */
	@SuppressWarnings("static-access")
	@Override
	public int updatePwd(Integer id, String pwd) {//根据当前用户id去修改密码
		String sql = "update UserInfo set Pwd=" + pwd + " where Uid=" + id;//修改操作根据uid修改pwd
		return db.executeUpdate(sql);//判断是否成功
	}

	/**
	 * 用户修改 (non-Javadoc)
	 */
	@SuppressWarnings({ "unchecked", "rawtypes", "static-access" })
	@Override
	public int updateUsers(UserInfo u) {
		String sql = "update UserInfo set Uname=?,Sex=?,Birthday=?,Phone=?,CreateTime=?,Email=?,Aid=? where Uid=?";
		ArrayList params = new ArrayList();// 用来保存添加的用户信息
		params.add(u.getUname());
		params.add(u.getSex());
		params.add(u.getBirthday());
		params.add(u.getPhone());
		params.add(u.getCreateTime());
		params.add(u.getEmail());
		params.add(u.getAid());
		params.add(u.getUid());
		return db.executeUpdate(sql, params);
	}

	// 禁用用户
	@SuppressWarnings({ "static-access", "unchecked", "rawtypes" })
	public int updateUserState(int Uid, int flag) {
		String sql = "update UserInfo set flag=? where Uid=?";
		ArrayList params = new ArrayList();
		params.add(flag);
		params.add(Uid);
		return db.executeUpdate(sql, params);
	}

	/**
	 * 根据id获取商品对象
	 */
	public UserInfo getUserInfoById(int id) {
		String sql = "select * from UserInfo where Uid=" + id;
		List<UserInfo> list = db.getObjects(sql,
				"com.cyj.adidas.entity.UserInfo");
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	/**
	 * 根据id获取对象信息数据
	 */
	public UserInfo getUserInfoById(String id) {
		String sql = "select * from UserInfo where Uid=" + id;
		List<UserInfo> list = db.getObjects(sql,
				"com.cyj.adidas.entity.UserInfo");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	public String getWhereByCons(String name, String sex) {
		String where = " where 1=1";
		if (!IsEmptyUtils.isEmpty(name)) {
			where += " and Uname like '%" + name + "%'";
		}
		if (!IsEmptyUtils.isEmpty(sex)) {
			where += " and Sex='"+ sex +"'" ;
		}
		return where;
	}
	
	/**
	 * 分页
	 */
	@SuppressWarnings("static-access")
	public String getUserInfosByPage(String name, String sex, int page,
			int pageSize, String orderBy) {
		String where = this.getWhereByCons(name, sex);
		return db.executeQueryPagedForEasyUI("UserInfo",
				"Uid,Uname,Sex,Birthday,Phone,CreateTime,Flag,Email,Aid", where,
				orderBy, page, pageSize);
	}

	/**
	 * 多条件
	 */
	public List<UserInfo> getUserInfo(String name, String sex) {
		String sql = "select * from product where 1=1 ";
		if (!IsEmptyUtils.isEmpty(name)) {
			sql += " and Uname like '%" + name + "%'";
		}
		if (!IsEmptyUtils.isEmpty(sex)) {
			sql += " and Sex='"+ sex +"'" ;
		}
		return db.getObjects(sql, "com.cyj.adidas.entity.UserInfo");
	}

	//根据用户id修改默认地址
	@SuppressWarnings("static-access")
	public int updateByAddress(String aid,int uid) {
		String sql="update UserInfo set Aid='"+ aid +"' where Uid="+uid;
		return db.executeUpdate(sql);
	}

}
