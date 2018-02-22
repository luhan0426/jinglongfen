package com.jinlongfeng.service;

import java.util.List;

import com.jinlongfeng.base.IBaseService;
import com.jinlongfeng.pojo.SysFunction;
import com.jinlongfeng.pojo.SysModel;

public interface ISysModelService extends IBaseService<SysModel>{
	//得到某一个角色下的所有模块及对应功能
	List<SysModel> getPermitList(Integer roleId);
	

}
