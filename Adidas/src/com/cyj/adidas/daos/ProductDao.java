package com.cyj.adidas.daos;

import java.util.Date;
import java.util.List;

import com.cyj.adidas.entity.Product;

public interface ProductDao {
	/**
	 * 商品接口
	 */
	public Product selectProduct(int Pid);// 根据Id查找单个商品

	public List<Product> getPosProducts(int posid);// 子查询查找推荐商品
	
	public int updateProduct(Product p);//根据商品对象修改信息2
	
	public Product getProductById(int id);//根据id获得商品信息2
	
	/**
	 * 分页查询
	 * @param name 商品名称
	 * @param priceFrom 商品最低价格
	 * @param priceTo 商品最高价格
	 * @param saleTimeFrom 商品发布开始时间
	 * @param saleTimeTo 商品发布结束时间
	 * @param page	页码  商品显示的页码
	 * @param pageSize	每页记录录
	 * @param orderBy	排序条件
	 * @return
	 */
	public String getProductsByPage(int prodcuts,String name,double priceFrom,
			double priceTo,Date saleTimeFrom,Date saleTimeTo,
			int page,int pageSize,String orderBy);
	
	public List<Product> getProduct(int prodcuts,String pname, Float priceFrom,
			Float priceTo, Date onSellTimeFrom, Date onSellTimeTo);
	
	public int deleteProduct(String ids);//批量删除商品2
	
	public int addProduct(Product p);//根据商品对象添加信息2
	
	public int updateProductPic(int id, String pic);//修改图片

	public Product getProductById(String id);
	
	//是否上下架
	public int updateOn(String pid,String on);
	
	//后台推荐商品
	public int remmentProduct(int pid,int posid,int weid);
	
	
	
}
