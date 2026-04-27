package com.green.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.dto.UserDto;
import com.green.user.mapper.UserMapper;

@Controller
@RequestMapping("/Users/")
public class UserController {
	
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping("/List")
	public String list(Model model) {
		List<UserDto> userList = userMapper.getUserList();
		System.out.println(userList);
		
		model.addAttribute("msg", "List");
		model.addAttribute("userList", userList);
		
		return "users/list";
	}
	@RequestMapping("/WriteForm")
	public String WriteForm() {
		return "users/write";
	}
	@RequestMapping("/write")
	public String write(UserDto dto) {
		
		System.out.println("userid=" + dto.getUserid());
		System.out.println("pwd=" + dto.getPwd());
		System.out.println("username=" + dto.getUsername());
		System.out.println("email=" + dto.getEmail());
		System.out.println("upoint=" + dto.getUpoint());
		System.out.println("regdate=" + dto.getRegdate());
		
		userMapper.insertMenu(dto);
		
		List<UserDto> userList = userMapper.getUserList();
		return "redirect:/users/list";
	}
}
