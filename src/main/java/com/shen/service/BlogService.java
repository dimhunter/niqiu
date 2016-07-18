package com.shen.service;

import com.shen.model.Blog;
import com.shen.model.Category;
import com.shen.model.Part;

import java.util.List;

/**
 * Created by shenge on 2015/11/7.
 */
public interface BlogService {

    List<Part> getParts();

    void addCategory(Category category);

    List<Category> getCategorys();

    void addBlog(Blog blog);

    List<Blog> getBlogs();

    Blog getBlog(int id);

    /**
     * 最新文章，按时间倒序。
     * @return
     */
    List<Blog> getTopBlogs();
}
