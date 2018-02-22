package com.jinlongfeng.pojo;

import java.util.List;

public class SysModel {
	private Integer id;
	private String modelName;
	private Integer parentId;
	private List<SysModel> childList;
	private List<SysFunction> childFunList;
	
	public List<SysFunction> getChildFunList() {
		return childFunList;
	}
	public void setChildFunList(List<SysFunction> childFunList) {
		this.childFunList = childFunList;
	}
	public List<SysModel> getChildList() {
		return childList;
	}
	public void setChildList(List<SysModel> childList) {
		this.childList = childList;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getModelName() {
		return modelName;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	
	
}
