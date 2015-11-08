package com.shen.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.locks.ReentrantLock;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SysConfigPropertyUtil {
	private static final Logger logger = LoggerFactory.getLogger(SysConfigPropertyUtil.class);
	private static Map<String, SysConfigPropertyUtil> instanceMap = new HashMap<String, SysConfigPropertyUtil>();
	private static ReentrantLock locker = new ReentrantLock();
	private Properties properties;

	// 构造方法私有
	private SysConfigPropertyUtil(String file) {
		InputStream in = getClass().getResourceAsStream("/" + file);
		if (in != null) {
			properties = new Properties();
			try {
				logger.info("加载sysconfig配置！");
				properties.load(in);
			} catch (IOException e) {
				logger.error(e.getMessage());
			} finally {
				try {
					in.close();
				} catch (IOException e) {
				}
			}
		}
	}

	// 构造方法私有
	private SysConfigPropertyUtil(File file) {
		InputStream in = null;
		try {
			in = new FileInputStream(file);
		} catch (FileNotFoundException e1) {
			throw new RuntimeException(e1);
		}
		if (in != null) {
			properties = new Properties();
			try {
				properties.load(in);
			} catch (IOException e) {
				logger.error(e.getMessage());
			} finally {
				try {
					in.close();
				} catch (IOException e) {
				}
			}
		}
	}

	public static SysConfigPropertyUtil getInstance() {
		return getInstance("");
	}

	public static SysConfigPropertyUtil getInstance(String file) {
		if (CommonUtils.blank(file)) {
			file = "sysconfig.properties";
		}
		SysConfigPropertyUtil instance = instanceMap.get(file);
		if (instance == null) {
			try {
				locker.lock();
				if (instance == null) {
					instance = new SysConfigPropertyUtil(file);
					instanceMap.put(file, instance);
				}
			} finally {
				locker.unlock();
			}
		}
		return instance;
	}

	public static SysConfigPropertyUtil getInstance(File file) {
		SysConfigPropertyUtil instance = instanceMap.get(file.getName());
		if (instance == null) {
			try {
				locker.lock();
				if (instance == null) {
					instance = new SysConfigPropertyUtil(file);
					instanceMap.put(file.getName(), instance);
				}
			} finally {
				locker.unlock();
			}
		}
		return instance;
	}

	public String getPropertyValue(String key) {
		if (CommonUtils.blank(key)) {
			return null;
		}
		if(properties!=null){
			String value = properties.getProperty(key);
			if(CommonUtils.blank(value)){
				return null;
			}
			try {
				return new String(value.getBytes("ISO-8859-1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				throw new RuntimeException(e);
			}
		}
		return null;
	}
}
