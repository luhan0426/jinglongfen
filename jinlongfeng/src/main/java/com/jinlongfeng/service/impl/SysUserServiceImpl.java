package com.jinlongfeng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinlongfeng.base.BaseServiceImpl;
import com.jinlongfeng.mapper.ISysUserMapper;
import com.jinlongfeng.pojo.SysRole;
import com.jinlongfeng.pojo.SysUser;
import com.jinlongfeng.service.ISysUserService;
@Service
public class SysUserServiceImpl extends BaseServiceImpl<SysUser> implements ISysUserService{
	@Autowired
	private ISysUserMapper sysUserMapper;
	
	public SysUser toLogin(SysUser user) {
		// TODO Auto-generated method stub
		return sysUserMapper.toLogin(user);
	}

	@Override
	public Integer listCount() {
		// TODO Auto-generated method stub
		return sysUserMapper.listCount();
	}

	@Override
	public List<SysUser> retrieveRoleList() {
		// TODO Auto-generated method stub
		return sysUserMapper.retrieveRoleList();
	}

	@Override
	public List<SysUser> retrieveModelList() {
		// TODO Auto-generated method stub
		return sysUserMapper.retrieveModelList();
	}


	@Override
	public List<SysRole> retrieveMiddleList(String rids, Integer mid) {
		// TODO Auto-generated method stub
		return sysUserMapper.retrieveMiddleList(rids,mid);
	}

	
	@Override
	public String getRoleById(Integer id) {
		// TODO Auto-generated method stub
		return sysUserMapper.getRoleById(id);
	}

	

}
