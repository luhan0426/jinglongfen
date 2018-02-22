package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.util.PageUtil;

@Controller
@RequestMapping("student")
public class PageController {
	@RequestMapping("list")
	public String list(Model model) {
		return list(model,1);
	}
	@RequestMapping("list/{page}")
	private String list(Model model, @PathVariable("page") Integer page) {
		// TODO Auto-generated method stub
		int listSize = 115;
		int pageSize = 10;
		

		int[] pages = PageUtil.numberPage(listSize, pageSize, page);
		System.out.println(page);
		model.addAttribute("pages", pages);
		model.addAttribute("page", page);
		
		return "/index.jsp";
	}
}
