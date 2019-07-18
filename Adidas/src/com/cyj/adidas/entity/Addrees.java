package com.cyj.adidas.entity;

public class Addrees {
	/*
	 * Addrees实体类包含(编号，用户id(UserInfo)，省份，城市，收货人，详细地址，收货人联系电话手机号，邮编)
	 */
	private Integer Id;
	private Integer Uid;
	private String ShengFen;
	private String City;
	private String Name;
	private String Addrees;
	private String Phone;
	private String Postcode;
	private String County;
	private String Ext2;
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public Integer getUid() {
		return Uid;
	}
	public void setUid(Integer uid) {
		Uid = uid;
	}
	public String getShengFen() {
		return ShengFen;
	}
	public void setShengFen(String shengFen) {
		ShengFen = shengFen;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAddrees() {
		return Addrees;
	}
	public void setAddrees(String addrees) {
		Addrees = addrees;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getPostcode() {
		return Postcode;
	}
	public void setPostcode(String postcode) {
		Postcode = postcode;
	}
	
	public String getCounty() {
		return County;
	}
	public void setCounty(String county) {
		County = county;
	}
	public String getExt2() {
		return Ext2;
	}
	public void setExt2(String ext2) {
		Ext2 = ext2;
	}
	
	 
}
