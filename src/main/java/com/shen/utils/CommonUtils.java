package com.shen.utils;

/**
 * 常用工具类
 * @author shen
 *
 */
public class CommonUtils {
	/**
	 * 判断给定的字符串是否为空,以及空字符串
	 * 
	 * @param input
	 *            输入字符串
	 * @return 是否为空,空则返回true，反之亦反
	 * @since 0.1
	 */
	public static boolean blank(String input) {
		return input == null || "".equals(input) || input.length() == 0 || input.trim().length() == 0;
	}
}
