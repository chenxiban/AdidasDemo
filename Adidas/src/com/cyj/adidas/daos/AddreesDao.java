package com.cyj.adidas.daos;

import java.util.List;

import com.cyj.adidas.entity.Addrees;

public interface AddreesDao {
	/**
	 * 收货地址
	 */
	// 添加收货地址
	public int addRess(Addrees a);

	// 根据用户Id查询用户的多个地址
	public List<Addrees> getAddressByUid(int Uid);

	// 根据Id查询一条数据
	public Addrees selectAddress(int Id);

	// 修改用户地址
	public int updateAddress(Addrees a);

	// 删除用户地址
	public int deleteAddress(String Id);

	// 根据Uid查找一条地址
	public Addrees selectByAddress(int uid);
	
}
