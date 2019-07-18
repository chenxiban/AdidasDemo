package com.cyj.adidas.daos;

import java.util.List;

import com.cyj.adidas.entity.UserInfo;

public interface UserInfoDao {
	/**
	 * 用户操作接口
	 */
	// 根据用户名字或者密码登录
	public UserInfo loginUser(String nameorpwd, String pwd);

	// 根据姓名查看是否存在此用户
	public UserInfo getUser(String name);

	// 添加注册用户数据
	public int addUser(UserInfo u);

	// 根据Id查找单个用户
	public UserInfo selectUsers(int Uid);

	// 修改用户密码
	public int updatePwd(Integer id, String pwd);

	// 用户修改
	public int updateUsers(UserInfo u);
	
	//禁用用户
	public int updateUserState(int Uid,int flag);
	
	public UserInfo getUserInfoById(int id);//根据id获得商品信息2
	
	// 根据Uid查找一条地址
	public int updateByAddress(String aid,int uid);
	
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
	public String getUserInfosByPage(String name,String sex,
			int page,int pageSize,String orderBy);
	
	public List<UserInfo> getUserInfo(String name,String sex);//多条件查询
	

}
