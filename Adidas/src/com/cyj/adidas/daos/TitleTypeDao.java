package com.cyj.adidas.daos;

import java.util.List;

import com.cyj.adidas.entity.TitleType;

public interface TitleTypeDao {
	/**
	 * 商品分类接口
	 */
	public TitleType getTitleType(int cid);// 根据分类id获取分类对象

	public List<TitleType> getAllTitleTypes();// 获取所有分类

}
