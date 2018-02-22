package com.jinlongfeng.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinlongfeng.base.BaseServiceImpl;
import com.jinlongfeng.mapper.ISysPermitMapper;
import com.jinlongfeng.mapper.ISysRoleMapper;
import com.jinlongfeng.mapper.SysModelFunMapper;
import com.jinlongfeng.pojo.SysModelFun;
import com.jinlongfeng.pojo.SysPermit;
import com.jinlongfeng.pojo.SysRole;
import com.jinlongfeng.service.ISysRoleService;
@Service
public class SysRoleServiceImpl extends BaseServiceImpl<SysRole> implements ISysRoleService{
	@Autowired
	private ISysPermitMapper sysPermitMapper;
	@Autowired
	private SysModelFunMapper SysModelFunMapper;
	@Override
	public boolean savePermit(Integer roleId, String permitIds) {
		boolean result = false;
		
		try {
			//把当前角色分配权限清空
			sysPermitMapper.clearByRoleId(roleId);
			if(permitIds.equals("")) {
				return true;
			}
			String[] permitIdArray = permitIds.split("\\|");
			for (String permitId : permitIdArray) {
				String[] modelFunIdArry = permitId.split("_");
				Integer modelId = Integer.parseInt(modelFunIdArry[0]);
				Integer funId = Integer.parseInt(modelFunIdArry[1]);
				//System.out.println(modelId+"-----"+funId);;
				
				
				Integer modelFunId = SysModelFunMapper.getPKByModelAndFunId(modelId, funId);
				SysPermit sysPermit = new SysPermit();
				sysPermit.setRoleId(roleId);
				sysPermit.setModelFunId(modelFunId);
			//	System.out.println("挺好-----"+sysPermit);
				sysPermitMapper.insert(sysPermit);
			}
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	@Override
	public boolean savePermit(Integer roleId, String add_ids, String del_ids) {
		// TODO Auto-generated method stub
		boolean result = false;
		try {
			if(!add_ids.equals("")) {
				//增加权限
				String[] add_id_array = add_ids.split("\\|");
				for (String ids : add_id_array) {
					String[] ids_array = ids.split("_");
					Integer modelId =Integer.parseInt(ids_array[0]);
					Integer funId = Integer.parseInt(ids_array[1]);
					Integer modelFunId = SysModelFunMapper.getPKByModelAndFunId(modelId, funId);
					
					SysPermit sysPermit = new SysPermit();
					
					sysPermit.setRoleId(roleId);
					sysPermit.setModelFunId(modelFunId);
					sysPermitMapper.insert(sysPermit);
					
				}
			}
			
			if(!del_ids.equals("")) {
			//删除权限
			String[] del_id_array = del_ids.split("\\|");
			for (String ids : del_id_array) {
				String[] ids_array = ids.split("_");
				Integer modelId =Integer.parseInt(ids_array[0]);
				Integer funId = Integer.parseInt(ids_array[1]);
				Integer modelFunId = SysModelFunMapper.getPKByModelAndFunId(modelId, funId);
				
				SysPermit sysPermit = new SysPermit();
				
				sysPermit.setRoleId(roleId);
				sysPermit.setModelFunId(modelFunId);
				sysPermitMapper.deleteByRoleIdAndModelFunId(roleId,modelFunId);
				
				}
			}
			result = true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}

		
}
