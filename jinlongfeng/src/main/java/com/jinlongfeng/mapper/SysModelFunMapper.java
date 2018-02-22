package com.jinlongfeng.mapper;

import org.apache.ibatis.annotations.Param;

import com.jinlongfeng.base.IBaseDAO;
import com.jinlongfeng.pojo.SysModelFun;

public interface SysModelFunMapper extends IBaseDAO<SysModelFun>{
	
	int getPKByModelAndFunId(@Param("modelId")Integer modelId,@Param("funId")Integer funId);
}
