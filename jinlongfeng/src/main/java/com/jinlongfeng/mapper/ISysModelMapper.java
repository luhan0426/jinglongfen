package com.jinlongfeng.mapper;

import java.util.List;

import com.jinlongfeng.base.IBaseDAO;
import com.jinlongfeng.pojo.SysFunction;
import com.jinlongfeng.pojo.SysModel;

public interface ISysModelMapper extends IBaseDAO<SysModel>{
	//�õ���parentId�󶨵ĺ��ӽڵ�
	List<SysModel> getChildList(Integer parentId);
	//ͨ��ģ��ID�õ�����Ĺ���
	List<SysFunction> getFunByModelIdList(Integer modelId);
}
