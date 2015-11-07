package com.shen.web.controller;

import com.shen.model.Blog;
import com.shen.model.Category;
import com.shen.model.Part;
import com.shen.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
public class BlogController {
	
	@Autowired
	private BlogService blogService;

	@RequestMapping(value="/toaddcategory",method=RequestMethod.GET)
	public ModelAndView toAddCategory(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("background/addcategory");
		List<Part> parts = blogService.getParts();
		mv.addObject("parts",parts);
		return mv;
	}


	@RequestMapping(value="/addcategory",method=RequestMethod.POST)
	public ModelAndView addCategory(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("hello");
		String cat_part = request.getParameter("cat_part");
		String cname = request.getParameter("cat_name");
		String cdesc = request.getParameter("desc");
		Category category = new Category();
		category.setName(cname);
		category.setDescription(cdesc);
		category.setPart_id(Integer.valueOf(cat_part));
		blogService.addCategory(category);
		return mv;
	}

	@RequestMapping(value="/toaddblog",method=RequestMethod.GET)
	public ModelAndView toAddBlog(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("background/addblog");
		List<Category> cats = blogService.getCategorys();
		mv.addObject("cats", cats);
		return mv;
	}

	@RequestMapping(value="/addblog",method=RequestMethod.POST)
	public ModelAndView addBlog(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("background/addblog");
		String bcat_id = request.getParameter("b_cat");
		String bname = request.getParameter("b_name");
		String bcontent = request.getParameter("b_content");
		Blog blog = new Blog();
		blog.setName(bname);
		blog.setContent(bcontent);
		blog.setCategory_id(Integer.valueOf(bcat_id));
		blogService.addBlog(blog);
		return mv;
	}

	@RequestMapping(value="/showblog",method=RequestMethod.GET)
	public ModelAndView showBlog(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("detail");
		String b_id = request.getParameter("b_id");
		Blog blog = blogService.getBlog(Integer.valueOf(b_id));
		mv.addObject("blog", blog);
		return mv;
	}
	
}
