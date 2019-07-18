package com.cyj.adidas.entity;

public class OrdersDetail {
	/*
	 * OrdersDetail实体类包含(编号，订单iD，商品id(Product)，购买数量，备注)
	 */
	private Integer Id;
	private String Oid;
	private Integer Pid;
	private Integer Quantity;
	private String Remark;
	private Integer Ext1;
	private String Ext2;
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getOid() {
		return Oid;
	}
	public void setOid(String oid) {
		Oid = oid;
	}
	public Integer getPid() {
		return Pid;
	}
	public void setPid(Integer pid) {
		Pid = pid;
	}
	public Integer getQuantity() {
		return Quantity;
	}
	public void setQuantity(Integer quantity) {
		Quantity = quantity;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String remark) {
		Remark = remark;
	}
	public Integer getExt1() {
		return Ext1;
	}
	public void setExt1(Integer ext1) {
		Ext1 = ext1;
	}
	public String getExt2() {
		return Ext2;
	}
	public void setExt2(String ext2) {
		Ext2 = ext2;
	}
	
}
