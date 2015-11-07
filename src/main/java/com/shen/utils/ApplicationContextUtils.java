package com.shen.utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
/**
 * 获取ApplicationContext的工具类
 * @author shenluguo
 *
 */
public class ApplicationContextUtils implements ApplicationContextAware {
	//声明一个静态变量保存
	private static ApplicationContext context;
	
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		context = applicationContext;
	}
	
	/**
	 * 获取ApplicationContext
	 * @return
	 */
	public static ApplicationContext getContext(){
		return context;
	}
	
	/**
	 * 获取spring中配置的bean。
	 * @param beanName
	 * @return
	 */
	public static Object getBean(String beanName){
		return context.getBean(beanName);
	}
	
}
