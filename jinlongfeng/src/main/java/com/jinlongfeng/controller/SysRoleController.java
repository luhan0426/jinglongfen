package com.jinlongfeng.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jinlongfeng.pojo.SysModel;
import com.jinlongfeng.pojo.SysRole;
import com.jinlongfeng.service.ISysModelService;
import com.jinlongfeng.service.ISysRoleService;

@Controller
@RequestMapping("sysRole")
public class SysRoleController {
	@Autowired
	private ISysRoleService sysRoleService;
	
	@Autowired 
	private ISysModelService sysModelService;
	
	@RequestMapping("roleList")
	public ModelAndView queryList() {
		ModelAndView mav = new ModelAndView("/sysPermit/roleList");
		List<SysRole> roleList = sysRoleService.retrieveList();
		mav.addObject("roleList",roleList);
		return mav;
	}
	@RequestMapping("toPermitPage")
	public ModelAndView toPermitPage(Integer roleId) {
		ModelAndView mav = new ModelAndView("/sysPermit/toPermitPage");
		List<SysModel> list = sysModelService.getPermitList(roleId);
		mav.addObject("list",list);
		mav.addObject("roleId",roleId);
		System.out.println(roleId);
		return mav;
	}

	@ResponseBody
	@RequestMapping("savePermit")
	public boolean savePermit(Integer roleId,String permitIds) {
		 return sysRoleService.savePermit(roleId, permitIds);
	}
	
	@ResponseBody
	@RequestMapping("savePermit2")
	public boolean savePermit2(Integer roleId,String add_ids,String del_ids) {
		 return sysRoleService.savePermit(roleId, add_ids,del_ids);
	}
}
