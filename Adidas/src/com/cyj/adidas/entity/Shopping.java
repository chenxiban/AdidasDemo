package com.cyj.adidas.entity;

public class Shopping {  
	private Integer id;
	private Integer pid;
	private Integer uid;
	private Integer num;
	private Integer ext1;
	private String ext2;
	private String pname;
	private Double sellPrice;
	private String picUrl;
	private Integer poductStore;
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Double getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(Double sellPrice) {
		this.sellPrice = sellPrice;
	}
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Integer getExt1() {
		return ext1;
	}
	public void setExt1(Integer ext1) {
		this.ext1 = ext1;
	}
	public String getExt2() {
		return ext2;
	}
	public void setExt2(String ext2) {
		this.ext2 = ext2;
	}
	public Integer getPoductStore() {
		return poductStore;
	}
	public void setPoductStore(Integer poductStore) {
		this.poductStore = poductStore;
	}
	
	
	
	
}
