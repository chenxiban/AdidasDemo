package com.cyj.adidas.dao.impl;

import java.util.List;

import com.cyj.adidas.daos.TitleTypeDao;
import com.cyj.adidas.entity.TitleType;
import com.cyj.adidas.util.DBManager;

public class TitleTypeDaoImpl implements TitleTypeDao {
	/**
	 * 实现TitleType中的方法
	 */
	private DBManager<TitleType> db = new DBManager<TitleType>();

	/**
	 * 根据分类id获取分类对象
	 */
	public TitleType getTitleType(int cid) {
		String sql = "select * from TitleType where id=" + cid;
		List<TitleType> list = db.getObjects(sql,
				"com.cyj.adidas.entity.TitleType");
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	/**
	 * 获取所有分类
	 */
	public List<TitleType> getAllTitleTypes() {
		String sql = "select * from TitleType";
		return db.getObjects(sql, "com.cyj.adidas.entity.TitleType");
	}

}
