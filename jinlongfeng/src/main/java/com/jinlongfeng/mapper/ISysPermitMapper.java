package com.jinlongfeng.mapper;

import org.apache.ibatis.annotations.Param;

import com.jinlongfeng.base.IBaseDAO;
import com.jinlongfeng.pojo.SysPermit;

public interface ISysPermitMapper extends IBaseDAO<SysPermit> {

	void clearByRoleId(Integer roleId);

	void insert(SysPermit sysPermit);

	//boolean savePermit(Integer roleId, String permitIds);

	void deleteByRoleIdAndModelFunId(@Param("roleId")Integer roleId,@Param("modelFunId") Integer modelFunId);
	
}
