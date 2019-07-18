package com.cyj.adidas.util;

import java.lang.reflect.Method;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class DBManager<T> {
	private static final String URL="jdbc:sqlserver://localhost;databaseName=Adidas";
	private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String USER="sa",PASSWORD="123@qwe";
	
	/**
	 * 获取一个数据库连接对象
	 * @return 数据库连接对象
	 */	
	public static  Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException e) {
			System.out.println("数据库连接失败");
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}	

	public static void closeAll(ResultSet set,Statement sta,Connection con){
		try {
			if(set != null)
				set.close();
			if(sta!=null)
				sta.close();
			if(con!=null)
				con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 执行增删改语句
	 * @param 要执行的sql语句
	 * @return 返回数据库受影响的行数
	 */
	public static int executeUpdate(String sql){
		Connection conn=null;
		Statement sta=null;
		try {
			conn = getConnection();
			sta = conn.createStatement();
			return sta.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return e.getErrorCode()*(-1);
		}
		finally{
			closeAll(null, sta, conn);
		}		
	}
	/**
	 * 在一个事务中，执行sql语句
	 * @param sqls 
	 * @return 数据库受影响的行数
	 */
	public static int executeUpdate(ArrayList<String> sqls){
		Connection conn=null;
		Statement sta=null;
		int c =0;
		try {
			conn = getConnection();
			conn.setAutoCommit(false);
			sta = conn.createStatement();
			for (int i = 0; i < sqls.size(); i++) {
				String sql = sqls.get(i);
				c+=sta.executeUpdate(sql);
			}
			conn.commit();
			return c;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return -1;
		}
		finally{
			closeAll(null, sta, conn);
		}
	}
	/**
	 * 以参数化的方式完成增删改操作
	 * @param 要执行的sql语句
	 * @param 参数列表
	 * @return 数据库受影响的行数
	 */
	@SuppressWarnings("rawtypes")
	public static int executeUpdate(String sql,ArrayList paras){
		Connection conn=null;
		PreparedStatement sta=null;
		try {
			conn = getConnection();
			sta = conn.prepareStatement(sql);
			for (int i = 0; i < paras.size(); i++) {
				sta.setObject(i+1, paras.get(i));
			}
			return sta.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return e.getErrorCode()*(-1);
		}
		finally{
			closeAll(null, sta, conn);
		}		
	}
	
	/*利用容器查询数据开始……   优点：不用关不连接，方法内部封装了jdbc代码，几乎不用编写jdbc代码，会sql即可工作*/
	
	/**
	 * 根据指定的sql语句，查询出一个数据表
	 * @param 要执行的sql语句
	 * @param 参数化paras
	 * @return 模拟的数据表
	 * @throws 重名异常
	 */
	@SuppressWarnings("rawtypes")
	public static DataTable executeQueryTable(String sql,ArrayList paras) throws Exception{
		Connection conn=null;
		PreparedStatement sta=null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			sta = conn.prepareStatement(sql);
			if(paras!= null)
				for (int i = 0; i < paras.size(); i++) {
					sta.setObject(i+1, paras.get(i));
				}
			rs = sta.executeQuery();			
			java.sql.ResultSetMetaData meta = rs.getMetaData();
			int colCount = meta.getColumnCount();
			DataTable dtData = new DataTable("data");
			for (int i = 1; i <= colCount; i++) {
				String cn = meta.getColumnName(i);
				dtData.newColumn(cn, "","String");
			}
			while(rs.next()){
				DataRow r = dtData.newRow();
				for (int i = 1; i <= colCount; i++) {
					String dx = "";
					Object obj = rs.getObject(meta.getColumnName(i));
					if(obj != null)
						dx=obj.toString();
					r.set(meta.getColumnName(i),dx);
				}
				dtData.Rows.add(r);
			}			
			return dtData;			
		} catch (SQLException e) {
			e.printStackTrace();			
			return null;
		}
		finally{
			closeAll(rs,sta,conn);
		}
	}	
	/**
	 * 
	 * @param 表、视图的名称
	 * @param 列名集合
	 * @param where 条件
	 * @param order 命令
	 * @param pageNum 页面
	 * @param pageSize 每页多少条数据
	 * @return 两张数据表(data,rc)构成的表集合
	 */
	public static DataSet executeQueryPagedDataSet(String objName,String colNames,String where,String order,int pageNum,int pageSize ){
		Connection conn = getConnection();
		CallableStatement cStatement = null;
		ResultSet rs = null;
		try {
			//部分代码省略
			//创建CallableStatement的对象，showStuByName是存储过程的名字
			cStatement = conn.prepareCall("{call proc_Data_Paged(?,?,?,?,?,?,?)}");	
			cStatement.setString(1, objName);
			cStatement.setString(2, colNames);
			cStatement.setInt(3, pageNum);
			cStatement.setInt(4, pageSize);
			cStatement.setString(5, where);					
			cStatement.setString(6, order);		
			cStatement.registerOutParameter(7, java.sql.Types.INTEGER);
			rs = cStatement.executeQuery();  //执行存储过程	

			java.sql.ResultSetMetaData meta = rs.getMetaData();
			int colCount = meta.getColumnCount();
			DataTable dtData = new DataTable("data");
			for (int i = 1; i <= colCount; i++) {
				String cn = meta.getColumnName(i);
				dtData.newColumn(cn, "","String");
			}
			while(rs.next()){
				DataRow r = dtData.newRow();
				for (int i = 1; i <= colCount; i++) {
					String dx = "";
					Object obj = rs.getObject(meta.getColumnName(i));
					if(obj != null)
						dx=obj.toString();
					r.set(meta.getColumnName(i),dx);
				}
				dtData.Rows.add(r);
			}
			int num = ((CallableStatement)cStatement).getInt(7);
			DataTable dtData2 = new DataTable("rc");
			dtData2.newColumn("rowCount","0");
			DataRow rx = dtData2.newRow();
			rx.set("rowCount", num+"");
			dtData2.Rows.add(rx);
			DataSet ds = new DataSet();
			ds.addTable(dtData);
			ds.addTable(dtData2);
			closeAll(rs,cStatement,conn);
			return ds;
		} catch (Exception sqlE) {
			sqlE.printStackTrace();
		} finally {
			//部分代码省略
		}
		return null;
	}
	
	
	/**
	 * 转换成通用分页所需要的Json字符串
	 * @param dt 数据表
	 * @param rowCount 记录总数
	 * @return json格式的字符串对象
	 */
     static String toJsonForEasyUI(DataTable dt,int rowCount)
     {
         return "{" + String.format("\"total\":%s,\"rows\":%s", rowCount, dt.toJson()) + "}";
     }
     /**
 	 * 进行分页查询，获取json字符串
 	 * @param 表、视图的名称
 	 * @param 列名集合
 	 * @param where 条件(eg:where 1=1 and ……)
 	 * @param order 命令(eg:order by Price)
 	 * @param pageNum 页面
 	 * @param pageSize 每页多少条数据
 	 * @return 符合easyui datagrid控件的json字符串
 	 */
 	public static String executeQueryPagedForEasyUI(String objName,String colNames,String where,String order,int pageNum,int pageSize ){
 		DataSet ds = executeQueryPagedDataSet(objName, colNames, where, order, pageNum, pageSize);
 		int rc = Integer.parseInt(ds.getTable(1).Rows.get(0).get(0));
 		DataTable dt = ds.getTable(0);
 		return toJsonForEasyUI(dt,rc);
 	}
 	/*利用容器查询数据结束   */
 	
 	/*利用自定义结果集查询数据开始……   */
	/**
	 * 获取指定sql语句查询到的自定义结果集(参数化方式)
	 * @param sql 参数化的查询语句
	 * @param paras 参数集合
	 * @return 自定义查询结果集
	 */
	@SuppressWarnings("rawtypes")
	public static QueryDataResult executeQuery(String sql, ArrayList paras) {
		Connection conn = null;
		PreparedStatement sta = null;
		ResultSet set = null;
		try {
			conn = getConnection();
			sta = conn.prepareStatement(sql);
			for (int i = 1; i <= paras.size(); i++) {
				sta.setObject(i, paras.get(i - 1));
			}// 循环加入参数，要求和占位符?个数相同，并一一对应
			set = sta.executeQuery();
			return new QueryDataResult(conn, sta, set);
		} catch (SQLException e) {
			e.printStackTrace();
			closeAll(set, sta, conn);
			return null;
		}
	}
	/**
	 * 获取指定sql语句查询到的自定义结果集
	 * @param sql 参数化的查询语句
	 * @return 自定义查询结果集
	 */
	public static QueryDataResult executeQuery(String sql) {
		Connection conn = null;
		Statement sta = null;
		ResultSet set = null;
		try {
			conn = getConnection();
			sta = conn.createStatement();
			set = sta.executeQuery(sql);
			return new QueryDataResult(conn, sta, set);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			closeAll(set, sta, conn);
			return null;
		}
	}
	/**
	 * 获取分页查询的结果集
	 * 
	 * @param objName 表或视图的名称
	 * @param colNames 要取的列用逗号分隔
	 * @param where 筛选条件
	 * @param order 排序
	 * @param pageNum 第几页
	 * @param pageSize 每页记录数
	 * @return 自定义结果集
	 */
	public static QueryDataResult executeQueryPaged(String objName,
			String colNames, String where, String order, int pageNum,
			int pageSize) {
		Connection conn = getConnection();
		CallableStatement cStatement = null;
		ResultSet rs = null;
		try {
			// 部分代码省略
			// 创建CallableStatement的对象，showStuByName是存储过程的名字
			cStatement = conn
					.prepareCall("{call proc_Data_Paged(?,?,?,?,?,?,?)}");
			cStatement.setString(1, objName);
			cStatement.setString(2, colNames);
			cStatement.setInt(3, pageNum);
			cStatement.setInt(4, pageSize);
			cStatement.setString(5, where);
			cStatement.setString(6, order);
			cStatement.registerOutParameter(7, java.sql.Types.INTEGER);
			rs = cStatement.executeQuery(); // 执行存储过程			
			QueryDataResult res = new QueryDataResult(conn, cStatement, rs);
			return res;
		} catch (Exception sqlE) {
			sqlE.printStackTrace();
		} finally {
			// 部分代码省略
		}
		return null;
	}
	/*利用自定义结果集查询数据结束   */
	
	/**
	 * 根据查询的语句获取一个封装好的对象集合（只支持常用的类型，大家可以自行扩展）
	 * 要求数据表在设计时必须规范，反射生成set方法时，才不会报错
	 * 使用示例：
	 * DBManager<GradeInfo> m = new DBManager<GradeInfo>();
	 * return m.getObjects(sql, "com.ysd.stumis.entity.GradeInfo");
	 * @param sql 查询语句
	 * @param cn 对象的完成名称
	 * @return 
	 */
	@SuppressWarnings("unchecked")
	public List<T> getObjects(String sql,String cn){
		   Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			try {
				conn = getConnection();
				stmt = conn.createStatement();
				 rs = stmt.executeQuery(sql);
				 ResultSetMetaData rmd = rs.getMetaData();
				 List<T> list=new ArrayList<T>();//定义泛型集合
				 Class<T> c = (Class<T>)Class.forName(cn);
				 while(rs.next()){
					 T obj = c.newInstance();
					 //
					 Method m = null;
					for (int i = 1; i <= rmd.getColumnCount(); i++) {
						String colName = rmd.getColumnName(i);
						int colType =rmd.getColumnType(i);
						String funName = "set"+(colName.substring(0,1)).toUpperCase()+(colName.substring(1));
							switch(colType){
							case Types.CHAR:
							case Types.VARCHAR:
							case Types.NCHAR:
							case Types.NVARCHAR:
								m = c.getMethod(funName, String.class);
								m.invoke(obj, rs.getString(colName));
								break;
							case Types.INTEGER:
								m = c.getMethod(funName, Integer.class);
								m.invoke(obj, rs.getInt(i));
								break;
							case Types.DOUBLE:
							case Types.FLOAT:
							case Types.DECIMAL://对应sqlserver中的money、decimal等
								m = c.getMethod(funName, Double.class);
								m.invoke(obj, rs.getDouble(i));
								break;
							case Types.DATE:
							case Types.TIMESTAMP:////对应sqlserver中的datetime
								m = c.getMethod(funName, java.sql.Timestamp.class);
								m.invoke(obj, rs.getTimestamp(i));
								break;
						}
					}
					list.add(obj);
				 }
				 return list;
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				closeAll( rs, stmt,conn);
			}
			return null;
	   }
}

