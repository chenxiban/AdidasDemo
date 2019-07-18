package com.cyj.adidas.entity;

import java.sql.Timestamp;

public class Product {
	/*
	 * Product实体类包含(编号，商品名称，商品种类id(分类表)，正常价格，折扣价格，商品类型，默认图片，是否上架，上架时间，库存，规格Id(规格表
	 * ))
	 */
	private Integer id;
	private String pname;
	private Integer tyId;
	private Double sellPrice;
	private Double disPrice;
	private String type;
	private String picUrl;
	private String size;
	private String color;
	private String canUse;
	private Timestamp onsaleTime;
	private Integer productStore;
	private Integer sid;
	private Integer ext1;
	private String ext2;
	private Integer weight;
	private TitleType tc;
	private Specification sc;
	
	
	
	
	public TitleType getTc() {
		return tc;
	}
	public void setTc(TitleType tc) {
		this.tc = tc;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getTyId() {
		return tyId;
	}
	public void setTyId(Integer tyId) {
		this.tyId = tyId;
	}
	public Double getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(Double sellPrice) {
		this.sellPrice = sellPrice;
	}
	public Double getDisPrice() {
		return disPrice;
	}
	public void setDisPrice(Double disPrice) {
		this.disPrice = disPrice;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getCanUse() {
		return canUse;
	}
	public void setCanUse(String canUse) {
		this.canUse = canUse;
	}
	public Timestamp getOnsaleTime() {
		return onsaleTime;
	}
	public void setOnsaleTime(Timestamp onsaleTime) {
		this.onsaleTime = onsaleTime;
	}
	public Integer getProductStore() {
		return productStore;
	}
	public void setProductStore(Integer productStore) {
		this.productStore = productStore;
	}
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
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
	public Specification getSc() {
		return sc;
	}
	public void setSc(Specification sc) {
		this.sc = sc;
	}
	
}
