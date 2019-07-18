package com.cyj.adidas.util;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/**
 * date convert methods.
 * 
 * @author outworld
 * date 2009-06-02
 * 
 */
public class DateUtil {

    private static String DATETIME_FORMAT = "yyyy-MM-dd HH:mm";
    private static String SIMPLE_DATETIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static String DATE_FORMAT = "yyyy-MM-dd";
    private static String DATE_TIME_FORMAT = "HH:mm:ss";
    private static String ICBC_DATE_TIME_FORMAT="yyyyMMddHHmmss";
    
    
    /**
     * Get the previous time, from how many days to now.
     * 
     * @param days How many days.
     * @return The new previous time.
     */
    public static Date previous(int days) {
        return new Date(System.currentTimeMillis() - days * 3600000L * 24L);
    }

    /**
     * Convert date and time to string like "yyyy-MM-dd HH:mm".
     */
    public static String formatDateTime(Date d) {
        return new SimpleDateFormat(DATETIME_FORMAT).format(d);
    }
    
    
    
    /**
     * 
     * @param d
     * @return HH:mm:ss
     */
    public static String formatTime(Date d) {
        return new SimpleDateFormat(DATE_TIME_FORMAT).format(d);
    }
    
    /**
     * Convert date and time to string like "yyyy-MM-dd HH:mm:ss".
     */
    public static String formatLongDateTime(Date d) {
        return new SimpleDateFormat(SIMPLE_DATETIME_FORMAT).format(d);
    }
    /**
     * Convert date and time to string like "yyyy-MM-dd HH:mm".
     */
    public static String formatDateTime(long d) {
        return new SimpleDateFormat(DATETIME_FORMAT).format(d);
    }

    /**
     * Convert date to String like "yyyy-MM-dd".
     */
    public static String formatDate(Date d) {
        return new SimpleDateFormat(DATE_FORMAT).format(d);
    }

    /**
     * Parse date like "yyyy-MM-dd".
     */
    public static Date parseDate(String d) {
        try {
            return new SimpleDateFormat(DATE_FORMAT).parse(d);
        }
        catch(Exception e) {}
        return null;
    }

    /**
     * Parse date and time like "yyyy-MM-dd hh:mm".
     */
    public static Date parseDateTime(String dt) {
        try {
            return new SimpleDateFormat(DATETIME_FORMAT).parse(dt);
        }
        catch(Exception e) {}
        return null;
    }

    /**
     * Parse date and time like "yyyy-MM-dd hh:mm:ss".
     */
    public static Date parseDateTime2(String dt) {
        try {
            return new SimpleDateFormat(SIMPLE_DATETIME_FORMAT).parse(dt);
        }
        catch(Exception e) {}
        return null;
    }
    /**
     * Convert date to String like "yyyyMMddHHmmssSS".
     */
    public static String getDateTimeString(Date d) {
        return new SimpleDateFormat("yyyyMMddHHmmssSS").format(d);
    }
    public static String getDateString(Date d) {
    	return new SimpleDateFormat("yyyyMMdd").format(d);
    }

    public static Date getYesterday() {
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH);
		int day = calendar.get(Calendar.DAY_OF_MONTH);
		calendar.clear();
		calendar.set(year, month, day-1);
		return calendar.getTime();
    }
    
    /**
     * 计算两个日期的小时差
     * @param startTime
     * @param endTime
     * @return
     */
    public static int getTimeDifference(Date startTime,Date endTime){
    	if(startTime==null || endTime==null){
    		return 0;
    	}
    	SimpleDateFormat timeformat = new SimpleDateFormat(SIMPLE_DATETIME_FORMAT);
    	 long t1 = 0L;
         long t2 = 0L;
         try {
        	  t1 = timeformat.parse(getTimeStampNumberFormat(startTime)).getTime();
         } catch (ParseException e) {
          //   e.printStackTrace();
         }
         try {
             t2 = timeformat.parse(getTimeStampNumberFormat(endTime)).getTime();
         } catch (ParseException e) {
           //  e.printStackTrace();
         }
         
         //因为t1-t2得到的是毫秒级,所以要初3600000得出小时.算天数或秒同理
//         int hours=(int) ((t1 - t2)/3600000);
//         int minutes=(int) (((t1 - t2)/1000-hours*3600)/60);
//         int second=(int) ((t1 - t2)/1000-hours*3600-minutes*60);
         return (int) ((t2 - t1)/3600000);
    }
    
    /**
     * 格式化时间
     * Locale是设置语言敏感操作
     * @param formatTime
     * @return
     */
    public static String getTimeStampNumberFormat(Date formatTime) {
           SimpleDateFormat m_format = new SimpleDateFormat(SIMPLE_DATETIME_FORMAT, new Locale("zh", "cn"));
           return m_format.format(formatTime);
       }
    
    /**
     * 判断date1是否比date2早i个小时
     * @param date1
     * @param date2
     * @param i (单位小时)
     * @return true(date1比date2早i个小时）,false相反
     */
    public static boolean sizeComparison(Date date,int i){
    	return sizeComparison(date,i,"");
    }
    
    /**
     * 判断date1是否比date2早i个小时
     * @param date1
     * @param date2
     * @param i (单位小时)
     * @param addTime 为date2添加时间字符串
     * @return true(date1比date2早i个小时）,false相反
     */
    public static boolean sizeComparison(Date date,int i,String addTime){
    	return sizeComparison(new Date(),date,i,addTime);
    }

    /**
     * 判断date1是否比date2早i个小时
     * @param date1
     * @param date2
     * @param i (单位小时)
     * @return true(date1比date2早i个小时）,false相反
     */
    public static boolean sizeComparison(Date date1,Date data2,int i,String addTime){
	boolean b=false;
    	long dateLong1=date1.getTime();
    	long dateLong2=data2.getTime();
    	if(addTime!=null && !addTime.equals("")){
    		try{
    			String[] strTimes=addTime.split("\\.");
        		dateLong2+=(Long.parseLong(strTimes[0])*60+Long.parseLong(strTimes[1]))*60*1000;
    		}catch(Exception e){
    			return b;
    		}
    	}
    	long dateResult=dateLong2-dateLong1;
    	if(dateResult>=i*60*60*1000){
    		b=true;
    	}
    	return b;
    }
    
    /**
     * 格式化日期为YYYYMMDDHHmmss格式
     * @param d
     * @return
     */
    public static String icbcFormatDate(Date d) {
        return new SimpleDateFormat(ICBC_DATE_TIME_FORMAT).format(d);
    }
    /**
     * 将日期时间字符串转为Timestamp类型
     * 数据库中的日期时间数据，到java程序中，一般使用Timestamp对象表达
     * @param timeStr 格式应为 "2011-05-09 11:49:45[.123]"
     * @return Timestamp对象
     */
    @SuppressWarnings("unused")
	public static Timestamp toTimestamp(String timeStr){
        Timestamp ts = new Timestamp(System.currentTimeMillis());          
        return  Timestamp.valueOf(timeStr);  
    }    
    /**
     * 将Timestamp对象转换为字符串对象
     * 格式为：yyyy-MM-dd HH:mm:ss
     * @param ts Timestamp
     * @return 格式为：yyyy-MM-dd HH:mm:ss的字符串对象
     */
    public static String toDateString(Timestamp ts){
    	SimpleDateFormat sdf = new SimpleDateFormat(SIMPLE_DATETIME_FORMAT);  
    	return sdf.format(ts);
    }
    /**
     * Date对象转Timestamp对象(Timestamp is a Data)
     * @param d Date对象
     * @return Timestamp对象
     */
    public static Timestamp toTimestamp(Date d){
    	//通常利用毫米数转换
        Timestamp ts = new Timestamp(d.getTime());       
        return  ts; 
    }
    /**
     * Timestamp对象转Date对象(Timestamp is a Data)
     * 此方法不需要定义，此处纯粹是为了告诉大家他们之前的关系。
     * @param ts Timestamp对象
     * @return Date对象
     */
    public static Date toDate(Timestamp ts){              
        return  ts; 
    }
}
