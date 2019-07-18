package com.cyj.adidas.util;

import java.util.ArrayList;
import java.util.List;

/// <summary>
/// 自定义数据集中的行
/// </summary>
public class DataRow {
	public DataRow(DataTable parentTable) {
		this._table = parentTable;
		this._values = new ArrayList<String>();
		for (int i = 0; i < this._table.Columns.size(); i++) {
			this._values.add("");
		}
	}
	/**
	 * 当前行隶属的表对象
	 */
	public DataTable _table;
	/**
	 * 当前行的所有值
	 */
	List<String> _values;
	/**
	 * 获取所有的列名字
	 * @return 列名称构成的字符串集合
	 */
	List<String> getColumnNames() {
		List<String> names = new ArrayList<String>();
		for (DataColumn obj : _table.Columns) {
			names.add(obj.getName());
		}
		return names;
	}
	/**
	 * 获取指定索引下标的值
	 * @param index 索引下标（从0开始）
	 * @return 值（String）
	 */
	public String get(int index) {
		return _values.get(index);
	}
	/**
	 * 设置指定索引下标处的值为val
	 * @param index 索引下标（从0开始）
	 * @param val 值（String）
	 */
	public void set(int index, String val) {
		_values.set(index, val);
	}
	/**
	 * 获取对应列的值
	 * @param colName 指定的列名
	 * @return 值（String）
	 */
	public String get(String colName) {
		List<String> names = getColumnNames();
		for (int i = 0; i < names.size(); i++) {
			String str = names.get(i);
			if (str.equalsIgnoreCase(colName))
				return _values.get(i);
		}
		return "";
	}
	/**
	 * 设置指定指定列的值为val
	 * @param colName 索引下标（从0开始）
	 * @param val 值（String）
	 */
	public void set(String colName, String val) {
		List<String> names = getColumnNames();
		for (int i = 0; i < names.size(); i++) {
			String str = names.get(i);
			if (str.equalsIgnoreCase(colName)){				
				_values.set(i, val);
			}
				
		}
	}
}