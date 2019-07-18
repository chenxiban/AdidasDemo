package com.cyj.adidas.entity;

import java.sql.Timestamp;


public class Review {
  
	private Integer rid;
	private Integer uid;
	private Integer pid;
	private String content;
	private Timestamp createTime;
	private String hContent;
	private Timestamp hCreateTime;
	private Integer stars;
	private Integer ext1;
	private String ext2;
	private String uname;
	private Integer id;
	
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	public String gethContent() {
		return hContent;
	}
	public void sethContent(String hContent) {
		this.hContent = hContent;
	}
	public Timestamp gethCreateTime() {
		return hCreateTime;
	}
	public void sethCreateTime(Timestamp hCreateTime) {
		this.hCreateTime = hCreateTime;
	}
	public Integer getStars() {
		return stars;
	}
	public void setStars(Integer stars) {
		this.stars = stars;
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
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	
	
}
