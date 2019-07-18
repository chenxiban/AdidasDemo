package com.cyj.adidas.dao.impl;

import java.util.List;

import com.cyj.adidas.daos.SpecificationDao;
import com.cyj.adidas.entity.Specification;
import com.cyj.adidas.util.DBManager;

public class SpecificationDaoImpl implements SpecificationDao {
	/**
	 * 实现SepecificationDao中的方法
	 */
	private DBManager<Specification> db = new DBManager<Specification>();

	/**
	 * 根据分类id获取规格对象
	 */
	public Specification selectSpecification(int Pid) {
		String sql = "select * from Specification where Id=" + Pid + "";
		List<Specification> list = db.getObjects(sql,
				"com.cyj.adidas.entity.Specification");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}
}
