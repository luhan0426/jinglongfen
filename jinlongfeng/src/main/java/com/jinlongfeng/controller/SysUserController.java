package com.jinlongfeng.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jinlongfeng.pojo.SysUser;
import com.jinlongfeng.service.ISysUserService;
import com.jinlongfeng.util.PageUtil;

@Controller
@RequestMapping("sysUser")
public class SysUserController {
	@Autowired
	private ISysUserService sysUserService;
	
	@ResponseBody
	@RequestMapping("login")
	public Integer toLogin(SysUser user,HttpSession session) {
		SysUser user2=sysUserService.toLogin(user);
		System.out.println(user2);
		if(user2 == null) {
			return 1;
		}else if (!user2.getPassword().equals(user.getPassword())) {
			return 2;
		}
		session.setAttribute("user", user2);
		return 3;
	}
	
	@RequestMapping("index")
	public String index() {
		return "/main/index";
	}
	@RequestMapping("head")
	public String head() {
		return "/main/head";
	}
	@RequestMapping("changepwd")
	public String changepwd() {
		return "/main/changepwd";
	}
	@RequestMapping("left")
	public String left() {
		return "/main/left";
	}
	@RequestMapping("main")
	public String main(HttpServletRequest request,Integer page) {
		if (page == null) {
		      page = 1;
		    }
		    Integer pageSize = 10;
		    List<SysUser> list = sysUserService.queryList(page, pageSize);
		    Integer listCount = sysUserService.listCount();
		    int[] pages = PageUtil.numPage(listCount, pageSize, page);
		    request.setAttribute("list", list);
		    request.setAttribute("listCount", listCount);
		    request.setAttribute("page", page);
		    request.setAttribute("pages", pages);
		return "/main/main";
	}
	//É¾³ý
	@RequestMapping("delete/{id}")
	public String delete(@PathVariable("id") Integer id) {
		sysUserService.delete(id);
		return "/main/main";
	}
	//ÍË³ö
	@RequestMapping("exit")
	public String exit(HttpSession session) {
		session.removeAttribute("user");
		session.invalidate();
		return "/login.jsp";
		
	}
	
	@RequestMapping("userList")
	public String queryList(HttpServletRequest request, Integer page) {
		if (page == null) {
		      page = 1;
		    }
		    Integer pageSize = 10;
		    List<SysUser> list = sysUserService.queryList(page, pageSize);
		    Integer listCount = sysUserService.listCount();
		    int[] pages = PageUtil.numPage(listCount, pageSize, page);
		    request.setAttribute("list", list);
		    request.setAttribute("listCount", listCount);
		    request.setAttribute("page", page);
		    request.setAttribute("pages", pages);
			return "/main/main";
		
	}
}
	
