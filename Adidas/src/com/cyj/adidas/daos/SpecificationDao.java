package com.cyj.adidas.daos;

import com.cyj.adidas.entity.Specification;

public interface SpecificationDao {
	/**
	 * 商品规格表接口
	 */
	public Specification selectSpecification(int Pid);// 根据分类id获取规格对象
}
