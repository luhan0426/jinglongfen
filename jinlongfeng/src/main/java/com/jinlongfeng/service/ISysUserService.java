package com.jinlongfeng.service;


import java.util.List;

import com.jinlongfeng.base.IBaseService;
import com.jinlongfeng.pojo.SysRole;
import com.jinlongfeng.pojo.SysUser;

public interface ISysUserService extends IBaseService<SysUser>{

	SysUser toLogin(SysUser user);

	Integer listCount();
	
	List<SysUser> retrieveRoleList();

	List<SysUser> retrieveModelList();

	List<SysRole> retrieveMiddleList(String rids, Integer mid);

	String getRoleById(Integer id);


}
