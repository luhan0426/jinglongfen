package com.jinlongfeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jinlongfeng.base.IBaseDAO;
import com.jinlongfeng.pojo.SysRole;
import com.jinlongfeng.pojo.SysUser;

public interface ISysUserMapper extends IBaseDAO<SysUser>{

	SysUser toLogin(SysUser user);

	Integer listCount();

	List<SysUser> retrieveRoleList();

	List<SysUser> retrieveModelList();

	List<SysRole> retrieveMiddleList(@Param("rids") String rids, @Param("mid") Integer mid);

	String getRoleById(@Param("id")Integer id);
	
}
