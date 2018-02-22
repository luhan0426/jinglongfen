package com.jinlongfeng.mapper;


import java.util.List;

import com.jinlongfeng.base.IBaseDAO;
import com.jinlongfeng.pojo.SysModelFun;
import com.jinlongfeng.pojo.SysRole;

public interface ISysRoleMapper extends IBaseDAO<SysRole> {
	List<SysModelFun> getPermitByRoleId(Integer roleId);
}
