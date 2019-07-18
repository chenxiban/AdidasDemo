package com.cyj.adidas.util;

import java.util.ArrayList;
import java.util.List;
/**
 * 自定义数据集，相当于与1个内存数据库;这是1个装载数据的容器;
 * 主要用在数据访问程序中，从数据库中提取出的数据可以快速放到此容器中，然后尽快释放数据库连接资源;
 * 通过编码可以方便地将容器转换成json等，我们需要的格式。
 * 1个DataSet对象中包含多个DataTable对象
 * 1个DataTable对象中包含多个DataColumn对象和多个DataRow对象
 * @author Administrator
 */
public class DataSet
{
    public DataSet()
    {
    	this.Tables = new ArrayList<DataTable>();
    }
    private List<DataTable> Tables ;
    /**
     * 获取数据集中表对象的个数
     * @return 个数（int）
     */
    public int getTableCount(){
    	return Tables.size();
    }
    public void addTable(DataTable dt){
    	this.Tables.add(dt);
    }
   
    public DataTable getTable(String tableName)
    {
        for (DataTable dt : Tables)
        {
            if (dt.Name.equalsIgnoreCase(tableName))
                return dt;
        }
        return null;
    }
    public DataTable getTable(int index)
    {
        return this.Tables.get(index);
    }
}