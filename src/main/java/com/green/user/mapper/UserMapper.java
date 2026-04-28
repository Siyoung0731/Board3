package com.green.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.green.menus.dto.MenuDTO;
import com.green.user.dto.UserDto;

@Mapper
public interface UserMapper {	
	
	List<UserDto> getUserList();

	void insertUser(UserDto dto);

	void deleteUser(UserDto dto);

	void updateUser(UserDto dto);

	UserDto getUser(UserDto dto);
}
