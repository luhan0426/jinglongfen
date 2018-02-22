package com.jinlongfeng.service;

import com.jinlongfeng.base.IBaseService;
import com.jinlongfeng.pojo.SysRole;

public interface ISysRoleService extends IBaseService<SysRole>{
	
	boolean savePermit(Integer roleId, String permitIds);
	boolean savePermit(Integer roleId,String add_ids,String del_ids);
}
