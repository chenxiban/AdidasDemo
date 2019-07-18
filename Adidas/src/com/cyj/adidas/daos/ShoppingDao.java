package com.cyj.adidas.daos;

import java.util.List;

import com.cyj.adidas.entity.Shopping;

public interface ShoppingDao {
	/**
	 * 购物车接口
	 */
	// 添加商品到购物车
	public int addProShopping(Shopping s);

	// 查询某个用户购物车中的所有商品
	public List<Shopping> getAllProByUid(int Uid);

	// 修改购物车中的商品
	public int updateShoppings(Shopping s);

	// 修改购物车中的商品
	public int updateShopping(int pid, int num);

	// 删除购物车中的某个商品
	public int deleteShopping(String Id);

	// 查询某个用户的商品是否存在
	public Shopping selectShopping(int Uid, int Pid);

	// 根据Id查询一条记录
	public Shopping selectById(int Id);

	// 根据Pid查询一条记录
	public Shopping selectByIds(int pid);
	
	// 根据用户id清空购物车
	public int delShopping(int Uid);

	// 根据商品id删除购物车
	public int delShoppings(int pid);
}
