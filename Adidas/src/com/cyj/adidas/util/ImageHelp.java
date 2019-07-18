package com.cyj.adidas.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;

import javax.imageio.ImageIO;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;



public class ImageHelp {
	
	/** 
	 * 
	 * 等比缩放
	 * 
     * @param im 
     *            原始图像 
     * @param resizeTimes 
     *            倍数,比如0.5就是缩小一半,0.98等等double类型 
     * @return 返回处理后的图像 
     */  
    public static  BufferedImage zoomImage(String src,float resizeTimes) {  
          
        BufferedImage result = null;  
  
        try {  
            File srcfile = new File(src);  
            if (!srcfile.exists()) {  
                System.out.println("文件不存在");  
                  
            }  
            BufferedImage im = ImageIO.read(srcfile);  
  
            /* 原始图像的宽度和高度 */  
            int width = im.getWidth();  
            int height = im.getHeight();  
              
              
            /* 调整后的图片的宽度和高度 */  
            int toWidth = (int) (width * resizeTimes);  
            int toHeight = (int) (height * resizeTimes);  
  
            /* 新生成结果图片 */  
            result = new BufferedImage(toWidth, toHeight,  
                    BufferedImage.TYPE_INT_RGB);  
  
            result.getGraphics().drawImage(  
                    im.getScaledInstance(toWidth, toHeight,  
                            java.awt.Image.SCALE_SMOOTH), 0, 0, null);  
              
  
        } catch (Exception e) {  
            System.out.println("创建缩略图发生异常" + e.getMessage());  
        }  
          
        return result;  
  
    }  
    
    
    
    
    /** 
     * 自由缩放(非等比缩放)，若宽度和高度只有一个值，以该值与原图的大小进行等比缩放
     * 
     * @param im 
     *            原始图像 
     * @param toWidth 
     *            目标宽度
     * @param toHeight
     * 				目标高度            
     * @return 返回处理后的图像 
     */  
    public static  BufferedImage zoomImage(String src,int toWidth,int toHeight) {  
          
        BufferedImage result = null;  
  
        try {  
            File srcfile = new File(src);  
            if (!srcfile.exists()) {  
                System.out.println("文件不存在");  
                  
            }  
            BufferedImage im = ImageIO.read(srcfile);  
            
            /* 原始图像的宽度和高度 */  
            float width = im.getWidth();  
            float height = im.getHeight();
            
            float resizeTimes = 1f;//倍率
            
            
            if(toWidth==0&&toHeight==0){
            	System.out.println("兄弟，别闹！");
            	return null;
            }
            
            if(toWidth==0&&toHeight!=0){
            	resizeTimes = toHeight/height;//如果没有宽度，以高度计算比率
            	toWidth = (int) (width*resizeTimes);
            }
            if(toHeight==0&&toWidth!=0){
            	resizeTimes = toWidth/width;//如果没有高度，以宽度计算比率
            	toHeight = (int) (height*resizeTimes);
            }
            
            
            /* 新生成结果图片 */  
            result = new BufferedImage(toWidth, toHeight,  
                    BufferedImage.TYPE_INT_RGB);  
  
            result.getGraphics().drawImage(  
                    im.getScaledInstance(toWidth, toHeight,  
                            java.awt.Image.SCALE_SMOOTH), 0, 0, null);  
              
  
        } catch (Exception e) {  
            System.out.println("创建缩略图发生异常" + e.getMessage());  
        }  
          
        return result;  
  
    }
    
    
    /** 
     * 输出高品质缩放图片
     * 
     * @param im 
     *            原始图像 
     * @param fileFullPath 
     *            输出路径
     * @return 返回处理结果 
     */  
     public static boolean writeHighQuality(BufferedImage im, String fileFullPath) {  
            try {  
                /*输出到文件流*/  
                FileOutputStream newimage = new FileOutputStream(fileFullPath);  
                JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(newimage);  
                JPEGEncodeParam jep = JPEGCodec.getDefaultJPEGEncodeParam(im);  
                /* 压缩质量 */  
                jep.setQuality(0.9f, true);  
                encoder.encode(im, jep);  
               /*近JPEG编码*/  
                newimage.close();  
                return true;  
            } catch (Exception e) {  
                return false;  
            }  
        }  
       
       

}
