package com.cyj.adidas.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.cyj.adidas.daos.ZhuPositionDao;
import com.cyj.adidas.entity.ZhuPosition;
import com.cyj.adidas.util.DBManager;
import com.cyj.adidas.util.IsEmptyUtils;

public class ZhuPositionDaoImpl implements ZhuPositionDao {
	/**
	 * 实现ZhuPositionDao中的方法
	 */
	private DBManager<ZhuPosition> db = new DBManager<ZhuPosition>();

	// 获取位置?的推荐
	public List<ZhuPosition> selectZhuPosition(int sid) {
		String sql = "select * from ZhuPosition where Posid=" + sid
				+ " order by Weight DESC";
		List<ZhuPosition> list = db.getObjects(sql,
				"com.cyj.adidas.entity.ZhuPosition");// 将数据存入对象集合中
		return list;
	}

	public String getWhereByCons(String posid) {
		String where = " where 1=1";
		if (!IsEmptyUtils.isEmpty(posid)) {
			where += " and Posid in (" + posid + ")";
		}
		return where;
	}

	// 分页
	@SuppressWarnings("static-access")
	public String getZhuPositionsByPage(String posid, int page, int pageSize,
			String orderBy) {
		String where = this.getWhereByCons(posid);
		return db.executeQueryPagedForEasyUI("ZhuPosition",
				"Id,Pid,PirUrl,Posid,Type,Weight", where, orderBy, page,
				pageSize);
	}

	// 条件检索
	public List<ZhuPosition> getZhuPosition(String posid) {
		String sql = "select * from ZhuPosition where 1=1 ";
		if (!IsEmptyUtils.isEmpty(posid)) {
			sql += " and Posid in (" + posid + ")";
		}

		return db.getObjects(sql, "com.cyj.adidas.entity.ZhuPosition");

	}

	// 根据id获取推荐信息
	public ZhuPosition getZhuPositionById(int id) {
		String sql = "select * from ZhuPosition where Id=" + id;
		List<ZhuPosition> list = db.getObjects(sql,
				"com.cyj.adidas.entity.ZhuPosition");
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	// 修改商品
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public int updateZhuPosition(ZhuPosition p) {
		String sql = "update ZhuPosition set Pid=?,PirUrl=?,Posid=?,Type=?,Weight=? where Id=?";
		ArrayList params = new ArrayList();// 用来存储修改后的数据
		params.add(p.getPid());
		params.add(p.getPirUrl());
		params.add(p.getPosid());
		params.add(p.getType());
		params.add(p.getWeight());
		params.add(p.getId());
		return DBManager.executeUpdate(sql, params);
	}

	/**
	 * 删除推荐表中的商品 (non-Javadoc)
	 */
	@SuppressWarnings("static-access")
	@Override
	public int deleteZhuPosition(String Id) {
		String sql = "delete ZhuPosition where Id in (" + Id + ")";
		return db.executeUpdate(sql);
	}

}
