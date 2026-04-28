package com.green.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.menus.dto.MenuDTO;
import com.green.user.dto.UserDto;
import com.green.user.mapper.UserMapper;

@Controller
@RequestMapping("/Users")
public class UserController {

	@Autowired
	private UserMapper userMapper;

	@RequestMapping("/List")
	public ModelAndView list() {
		// DB 에서 사용자 목록을 조회
		List<UserDto> userList = userMapper.getUserList();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/list");
		mv.addObject("userList", userList);
		return mv;
	}
//	 // WriteForm2
//	@RequestMapping("/WriteForm2")
//	public ModelAndView writeForm() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("users/write2");
//		mv.addObject("msg", "시영");
//
//		return mv;
//	}
	// write1
//	// write2
//	@RequestMapping("/Write2")
//	public ModelAndView write2(UserDto dto) {
//		System.out.println("UserController write() userDto: " + dto);
//				
//		// 넘어온 데이터로 DB 에 저장
//		
//				
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("redirect:List");
//		
//		return mv;
//	}
	// WriteForm1
	@RequestMapping("/WriteForm") 
	public String WriteForm() {
		return "users/write"; 
	}
	@RequestMapping("/Write")
	public String write(UserDto dto, Model model) {

		String userid = dto.getUserid();
		String pwd = dto.getPwd();
		String username = dto.getUsername();
		String email = dto.getEmail();
		int upoint = dto.getUpoint();
		String regdate = dto.getRegdate();

		System.out.println("userid=" + userid);
		System.out.println("pwd=" + pwd);
		System.out.println("username=" + username);
		System.out.println("email=" + email);
		System.out.println("upoint=" + upoint);
		System.out.println("regdate=" + regdate);
		// DB 에 저장
		// userMapper.getUserList 에 추가할 값들을 넣어 줌
		userMapper.insertUser(dto);

		List<UserDto> userList = userMapper.getUserList();
		model.addAttribute("userList", userList);

		return "redirect:List";
	}
	// Delete
	@RequestMapping("/Delete")
	public ModelAndView delete(UserDto dto) {
		System.out.println("UserDto: " + dto);
		
		// db 의 자료를 삭제
		userMapper.deleteUser(dto);
		
		// 목록으로 이동
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:List");
		return mv;
	}
	@RequestMapping("/UpdateForm")
	public ModelAndView updateform(UserDto dto) {
		// 넘어온 DTO
		System.out.println("넘어온 DTO: " + dto);
		
		// 수정을 위해 DB 에서 조회한 정보
		UserDto user = userMapper.getUser(dto);
		
		// 조회한 DTO
		System.out.println("조회한 DTO: " + user);
			
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/update");	
		mv.addObject("user", user);				
		return mv;
	}
	// ModelAndView : Controller 가 처리한 데이터(Model)와 보여줄 뷰 페이지(View)를 
	// 한 객체에 담아 반환하는 컨테이너, addObject() 로 데이터를, setViewName() 으로 뷰 이름을 
	// 설정하여 응답을 한번에 구성하는 방식
	@RequestMapping("/Update")
	public ModelAndView update(UserDto dto) {

		userMapper.updateUser(dto);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:List");
		return mv;
	}
}
