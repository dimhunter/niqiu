package com.shen.app;

import com.shen.constant.Constant;
import com.shen.server.WebServer;
import org.eclipse.jetty.server.Server;

import java.io.File;

/**
 * 
 * @author shenluguo
 *
 */
public class NiqiuApp {
	
	public static void main(String[] args) {
		String productionMode = System.getProperty(Constant.PRODUCTION_MODE, "true");
		System.out.println(NiqiuApp.class.getResource("/") + "../../webapp");
    	int port = Integer.valueOf(System.getProperty(Constant.SERVER_PORT, "7777"));
    	String serverHome = "false".equals(productionMode) ? "D:\\git-repository\\niqiu\\webapp" : System.getProperty("server.home") + File.separator + "app";
	    Server jettyServer = null;
	    try{
	    	jettyServer = WebServer.createServer(serverHome + File.separator + "WEB-INF" + File.separator +"web.xml",serverHome, port, "/");
	    	jettyServer.start();
	    	System.out.println("server start ok at : "+port);
	    	jettyServer.join();
	    }catch(Exception e){
			e.printStackTrace();
	    	try {
				jettyServer.stop();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
	    }
	}

}
