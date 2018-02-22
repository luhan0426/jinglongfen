package com.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.service.HouTaiService;

@Controller
@RequestMapping("houtai")
public class HouTaiController {
	@Autowired
	private HouTaiService hService;
	
	/*@RequestMapping("show")
	public String show() {
		return "main/show";
	}*/
	
	@RequestMapping("daoHangList")
	public String daoHangList(ModelMap map) {
		map.put("daoHangList", hService.daoHangList());
		System.out.println(hService.daoHangList());
		return "main/show";
	}

}
