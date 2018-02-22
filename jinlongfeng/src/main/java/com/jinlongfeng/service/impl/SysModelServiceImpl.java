package com.jinlongfeng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinlongfeng.base.BaseServiceImpl;
import com.jinlongfeng.mapper.ISysModelMapper;
import com.jinlongfeng.mapper.ISysRoleMapper;
import com.jinlongfeng.pojo.SysFunction;
import com.jinlongfeng.pojo.SysModel;
import com.jinlongfeng.pojo.SysModelFun;
import com.jinlongfeng.service.ISysModelService;
@Service
public class SysModelServiceImpl extends BaseServiceImpl<SysModel> implements ISysModelService {
	@Autowired
	private ISysModelMapper sysModelMapper;
	@Autowired
	private ISysRoleMapper sysRoleMapper;
	
	@Override
	public List<SysModel> getPermitList(Integer roleId) {
		List<SysModelFun> sysModelFunList = sysRoleMapper.getPermitByRoleId(roleId);
		
		// 最上层 父亲
		 List<SysModel> parentList = sysModelMapper.getChildList(0);
		 for (SysModel sysModel : parentList) {
			List<SysModel> childList = sysModelMapper.getChildList(sysModel.getId());
			for (SysModel childModel : childList) {
				List<SysFunction> childFunList=sysModelMapper.getFunByModelIdList(childModel.getId());
				for (SysFunction sysFun : childFunList) {
					//模块下功能
					//System.out.println(childModel.getId() +" ---- ----"+ sysFun.getId());
					//已经分配的
					boolean isChecked = false;
					for (SysModelFun sysModelFun : sysModelFunList) {
						if(sysModelFun.getModelId().equals(childModel.getId()) && sysModelFun.getFunId().equals(sysFun.getId())) {
							isChecked = true;
						}
					}
					System.out.println(isChecked);
					sysFun.setIsChecked(isChecked);
				}
				childModel.setChildFunList(childFunList);
			}
			sysModel.setChildList(childList);
		} 
		 return parentList;
	}


}
