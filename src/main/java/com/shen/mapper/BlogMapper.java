package com.shen.mapper;

import com.shen.model.Blog;
import com.shen.model.Category;
import com.shen.model.Part;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by shenge on 2015/11/7.
 */
public interface BlogMapper {

    void addCategory(Category category);

    List<Part> getParts();

    List<Category> getCatogorys();

    void addBlog(Blog blog);

    List<Blog> getBlogs();

    Blog getBlog(@Param("id") int id);
}
