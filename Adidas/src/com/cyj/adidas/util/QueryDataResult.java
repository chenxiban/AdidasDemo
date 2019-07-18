package com.cyj.adidas.util;

import java.sql.*;
/**
 * 自定义结果集（为了能关闭数据连接）
 * 在查询中使用ResultSet时，数据连接必须处于打开状态，在用完后，需要关闭。
 * 此自定义结果集中包含了ResultSet、Statement、Connection在使用完ResultSet后，可以通过调用close关闭连接。
 * @author Administrator
 */
public class QueryDataResult {
	public Connection Conn;
	public Statement Sta;
	public ResultSet Set;
	
	public QueryDataResult(Connection conn, Statement sta, ResultSet set) {
		super();
		Conn = conn;
		Sta = sta;
		Set = set;
	}
	/**
	 * 关闭并释放资源
	 */
	public void close() {
		DBManager.closeAll(this.Set, this.Sta, this.Conn);
	}
}
