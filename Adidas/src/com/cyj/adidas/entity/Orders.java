package com.cyj.adidas.entity;

import java.sql.Timestamp;

public class Orders {
	/*
	 * Orders实体类包含(编号，订单时间，用户id(UserInfo)，总价，付款状态，物流，单号，发货时间，地址(Ordress id),备注)
	 */
	private String id;
	private Timestamp orderTime;
	private Integer uid;
	private Double totalMoney;
	private String status;
	private String shipName;
	private String shipOrder;
	private Timestamp shipTime;
	private Integer aid;
	private String remark;
	private Integer ext1;
	private Integer pid;
	private String pname;
	private Integer quantity;
	private String name;
	private String phone;
	private String uaid;
	private String uname;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public Timestamp getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Timestamp orderTime) {
		this.orderTime = orderTime;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Double getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(Double totalMoney) {
		this.totalMoney = totalMoney;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getShipName() {
		return shipName;
	}
	public void setShipName(String shipName) {
		this.shipName = shipName;
	}
	public Timestamp getShipTime() {
		return shipTime;
	}
	public void setShipTime(Timestamp shipTime) {
		this.shipTime = shipTime;
	}
	
	public String getShipOrder() {
		return shipOrder;
	}
	public void setShipOrder(String shipOrder) {
		this.shipOrder = shipOrder;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getExt1() {
		return ext1;
	}
	public void setExt1(Integer ext1) {
		this.ext1 = ext1;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUaid() {
		return uaid;
	}
	public void setUaid(String uaid) {
		this.uaid = uaid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	
}
