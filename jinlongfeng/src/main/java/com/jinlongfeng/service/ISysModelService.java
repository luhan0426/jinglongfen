package com.jinlongfeng.service;

import java.util.List;

import com.jinlongfeng.base.IBaseService;
import com.jinlongfeng.pojo.SysFunction;
import com.jinlongfeng.pojo.SysModel;

public interface ISysModelService extends IBaseService<SysModel>{
	//�õ�ĳһ����ɫ�µ�����ģ�鼰��Ӧ����
	List<SysModel> getPermitList(Integer roleId);
	

}
