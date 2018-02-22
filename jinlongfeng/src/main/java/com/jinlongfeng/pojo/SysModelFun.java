package com.jinlongfeng.pojo;

public class SysModelFun {
	private Integer id;
	private Integer modelId;
	private Integer funId;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getModelId() {
		return modelId;
	}
	public void setModelId(Integer modelId) {
		this.modelId = modelId;
	}
	public Integer getFunId() {
		return funId;
	}
	public void setFunId(Integer funId) {
		this.funId = funId;
	}
	@Override
	public String toString() {
		return "SysModelFun [id=" + id + ", modelId=" + modelId + ", funId=" + funId + "]";
	}
	
}
