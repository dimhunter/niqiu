package com.shen.mapper;

import java.util.List;

import com.shen.model.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
	
	List<User> getUsers(@Param("user") User user);
	
}
