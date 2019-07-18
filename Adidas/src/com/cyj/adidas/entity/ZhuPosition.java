package com.cyj.adidas.entity;

public class ZhuPosition {
  
	private Integer id;
	private Integer pid;
	private String pirUrl;
	private Integer posid;
	private String type;
	private Integer weight;
	private Integer ext1;
	private String ext2;
	private Product pc;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPirUrl() {
		return pirUrl;
	}
	public void setPirUrl(String pirUrl) {
		this.pirUrl = pirUrl;
	}
	public Integer getPosid() {
		return posid;
	}
	public void setPosid(Integer posid) {
		this.posid = posid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
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
	public Product getPc() {
		return pc;
	}
	public void setPc(Product pc) {
		this.pc = pc;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	
	
}
