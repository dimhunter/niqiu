package com.shen.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.google.common.collect.Maps;
import com.shen.model.Blog;
import com.shen.model.Category;
import com.shen.model.User;
import com.shen.service.BlogService;
import com.shen.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shen.service.UserService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {
	
	@Autowired
	private UserService userService;

	@Autowired
	private IndexService indexService;

	@Autowired
	private BlogService blogService;
	
	@RequestMapping(value="/hello",method=RequestMethod.GET)
	public ModelAndView hello(){
		//指定要返回的页面为hello.jsp
		ModelAndView mv = new ModelAndView("hello");
		//将参数返回给页面
		mv.addObject("username","啊啊啊");
		mv.addObject("password", "123");
		
		List<User> users = userService.getUsers();
		mv.addObject("users", users);
		
		return mv;
	}

	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView index(){
		ModelAndView mv = new ModelAndView("index");
		List<Blog> topBlogs = blogService.getTopBlogs();
		mv.addObject("TopBlogs",topBlogs);
		return mv;
	}



	@RequestMapping(value="/pictures",method=RequestMethod.GET)
	public ModelAndView pictures(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("pictures");
		String part_id = request.getParameter("part_id");
		List<Category> cats = blogService.getCategorys();
		List<Category> lastcats = new ArrayList<Category>();
		for(Category cat : cats){
			if(part_id.equals(String.valueOf(cat.getPart_id())))
				lastcats.add(cat);
		}
		mv.addObject("categorys", lastcats);
		return mv;
	}

	@RequestMapping(value="/mylife",method=RequestMethod.GET)
	public ModelAndView mylife(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("mylife");
		String part_id = request.getParameter("part_id");
		List<Category> cats = blogService.getCategorys();
		List<Blog> blogs = blogService.getBlogs();
		List<Category> lastcats = new ArrayList<Category>();
		for(Category cat : cats){
			if(part_id.equals(String.valueOf(cat.getPart_id())))
				lastcats.add(cat);
		}
		Map<Integer,String> catmap = Maps.newHashMap();
		for(Category ct : lastcats){
			catmap.put(ct.getId(),ct.getName());
		}
		mv.addObject("categorys", lastcats);
		mv.addObject("blogs", blogs);
		mv.addObject("catmap", catmap);
		return mv;
	}
	
}
