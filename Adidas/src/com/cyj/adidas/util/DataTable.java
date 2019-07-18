package com.cyj.adidas.util;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

/**
 * 自定义数据表
 * @author Administrator
 */
public class DataTable{
    /**
     * 构造1个自定义数据表对象，结构类似于数据库中的表
     * @param tableName 表名称
     */
    public DataTable(String tableName){
        this.Columns = new ArrayList<DataColumn>();
        this.Rows = new ArrayList<DataRow>();
        this.Name = tableName;
    }
    /**
     * 表对象的名字
     */
    public String Name;
    /**
     * 表对象中的列集合
     */
    public List<DataColumn> Columns;
    /**
     * 表对象中的行集合
     */
    public List<DataRow> Rows;

    /**
     * 创建1个带结构的新行(自动加到表中)
     * @return
     */
    public DataRow newRow(){
        return new DataRow(this);
    }
    /**
     * 为当前表增加1个新列
     * @param columnName 新列对象的名字
     * @throws Exception 列名重名异常
     */
    public void newColumn(String columnName) throws Exception{
        newColumn(columnName, "");
    }
    /**
     * 为当前表增加1个新列
     * @param columnName 新列对象的名字
     * @param defValue 新列对象的默认值(暂时需要指定为String型)
     * @throws Exception 列名重名异常
     */
    public void newColumn(String columnName, String defValue) throws Exception{
        newColumn(columnName, defValue, "String");
    }
    /**
     * 为当前表增加1个新列
     * @param columnName 新列对象的名字
     * @param defValue 新列对象的默认值(暂时需要指定为String型)
     * @param  columnType 新列对象的类型(暂时没有去实现,默认都为String)
     * @throws Exception 列名重名异常
     */
    public void newColumn(String columnName, String defValue, String columnType) throws Exception{
    	boolean b = false;
    	for (int i = 0; i < this.Columns.size(); i++) {
			DataColumn pdc = this.Columns.get(i);
			if(pdc.getName().equalsIgnoreCase(columnName)){
				b=true;
				break;
			}
		}    	
        if (b)
            throw new Exception("您指定的"+columnName+"已经存在，无法创建新列");
        else{
        	DataColumn col = new DataColumn(columnName,columnType);         	
            this.Columns.add(col);
            for (DataRow r : this.Rows)//为所有行对应的新列填充默认值
                r._values.add(defValue);
        }
    }
   
    /**
	 * 将一个表的数据，直接转成一个json字符串
	 * @param 存储数据的模拟数据表
	 * @return json字符串
	 */
	 public String toJson(){       
		 DataTable dt = this;
		 com.google.gson.Gson tool = new Gson();
         StringBuilder sb = new StringBuilder("[");
         int colCount = dt.Columns.size(), rowCount = dt.Rows.size();
         for (int j = 0; j < rowCount; j++){
             if (j == 0)
                 sb.append("{");
             else
                 sb.append(",{");

             for (int i = 0; i < colCount; i++){
                 if (i == 0)
                     sb.append(String.format("\"%s\":%s", dt.Columns.get(i).getName(), tool.toJson(dt.Rows.get(j).get(i)) ));
                 else
                     sb.append(String.format(",\"%s\":%s", dt.Columns.get(i).getName(), tool.toJson(dt.Rows.get(j).get(i))));
             }
             sb.append("}");
         }
         sb.append("]");           
         return sb.toString();
     }
}

