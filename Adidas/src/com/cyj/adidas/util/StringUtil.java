package com.cyj.adidas.util;

import java.util.UUID;

public class StringUtil {
	public static String getUUID(){
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	public static void main(String[] args) {
		System.out.println(getUUID());
	}
}
