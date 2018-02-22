package com.jinlongfeng.mapper;

import java.util.List;

import com.jinlongfeng.base.IBaseDAO;
import com.jinlongfeng.pojo.SysFunction;
import com.jinlongfeng.pojo.SysModel;

public interface ISysModelMapper extends IBaseDAO<SysModel>{
	//得到绑定parentId绑定的孩子节点
	List<SysModel> getChildList(Integer parentId);
	//通过模块ID得到分配的功能
	List<SysFunction> getFunByModelIdList(Integer modelId);
}
