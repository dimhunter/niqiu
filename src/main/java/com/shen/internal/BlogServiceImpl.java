package com.shen.internal;

import com.shen.mapper.BlogMapper;
import com.shen.mapper.UserMapper;
import com.shen.model.Blog;
import com.shen.model.Category;
import com.shen.model.Part;
import com.shen.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by shenge on 2015/11/7.
 */
@Service("blogService")
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogMapper blogMapper;

    public List<Part> getParts() {
        return blogMapper.getParts();
    }

    public void addCategory(Category category) {
        blogMapper.addCategory(category);
    }

    public List<Category> getCategorys() {
        return blogMapper.getCatogorys();
    }

    public void addBlog(Blog blog) {
        blogMapper.addBlog(blog);
    }

    public List<Blog> getBlogs() {
        return blogMapper.getBlogs();
    }

    public Blog getBlog(int id) {
        return blogMapper.getBlog(id);
    }
}
