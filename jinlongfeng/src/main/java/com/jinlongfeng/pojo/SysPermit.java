package com.jinlongfeng.pojo;

public class SysPermit {
	private Integer id;
	private Integer roleId;
	private Integer modelFunId;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public Integer getModelFunId() {
		return modelFunId;
	}
	public void setModelFunId(Integer modelFunId) {
		this.modelFunId = modelFunId;
	}
	@Override
	public String toString() {
		return "SysPermit [id=" + id + ", roleId=" + roleId + ", modelFunId=" + modelFunId + "]";
	}
	
}
