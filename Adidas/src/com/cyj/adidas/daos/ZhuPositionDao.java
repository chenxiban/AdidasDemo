package com.cyj.adidas.daos;

import java.util.List;

import com.cyj.adidas.entity.ZhuPosition;

public interface ZhuPositionDao {
	/**
	 * 位置推荐接口
	 */
	public List<ZhuPosition> selectZhuPosition(int sid);// 获取推荐位置

	public String getZhuPositionsByPage(String posid,int page,int pageSize,String orderBy);
	
	public List<ZhuPosition> getZhuPosition(String posid);
	
	public ZhuPosition getZhuPositionById(int id);//根据id获取推荐信息
	
	public int updateZhuPosition(ZhuPosition p);//修改推荐信息
	
	public int deleteZhuPosition(String Id);// 删除购物车中的某个商品
	
}
