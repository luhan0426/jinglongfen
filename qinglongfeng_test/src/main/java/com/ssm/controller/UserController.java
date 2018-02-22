package com.ssm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.pojo.User;
import com.ssm.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService service;
	
	/*@RequestMapping("Tologin")
	@ResponseBody
	public Integer Tologin(ModelMap map,User user,HttpSession session) {
		User user2=service.Tologin(user);
		if(user!= null) {
			return 1;
		}else if(!user2.getPwd().equals(user.getPwd())){
			return 2;
		}
		session.setAttribute("user", user2);
		return 3;
			
	}*/
	@RequestMapping("login")
	public String login(ModelMap map,User user) {
		map.put("user", service.Tologin(user));
		return "redirect:/houtai/daoHangList";
	}
}
