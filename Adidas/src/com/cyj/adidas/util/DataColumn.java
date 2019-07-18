package com.cyj.adidas.util;


/// <summary>
/// 自定义数据集中的列
/// </summary>
public class DataColumn
{
	String name,dataType;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public DataColumn(String name, String dataType) {
		super();
		this.name = name;
		this.dataType = dataType;
	}

	public DataColumn() {
		super();
	}
  
}

