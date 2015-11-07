package com.shen.web.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;

/**
 * 初始化资源配置文件的servlet
 * @author 申路国
 */
public class InitServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	Logger logger = LoggerFactory.getLogger(InitServlet.class);
	private ServletContext context;
//	private ConsoleService consoleService;

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		context = this.getServletContext();
		context.setAttribute("Context", "/" + context.getServletContextName());
		context.setAttribute("Title", "Niqiu"); 
	}
	
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	@Override
	public void init() throws ServletException {
		context = this.getServletContext();
		context.setAttribute("Context", "/" + context.getServletContextName());
		context.setAttribute("Title", "泥鳅啊");
	}
	
	/**
	 * 取得WebApplicationContext
	 * @return
	 * @throws RuntimeException
	 */
	protected WebApplicationContext getWebApplicationContext()
			throws RuntimeException {
		// 通过初始化时取得的ServletContext来获取WebApplicationContext。
		Object ob = context
				.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
		WebApplicationContext context = (WebApplicationContext) ob;
		return context;
	}
	
	/**
	 * 根据spring配置的名字取得spring中配置的bean
	 * 
	 * @param name
	 * @return
	 */
	protected Object getBean(String name) {
		return this.getWebApplicationContext().getBean(name);
	}

	@Override
	public void destroy() {
		super.destroy();
	}
}
