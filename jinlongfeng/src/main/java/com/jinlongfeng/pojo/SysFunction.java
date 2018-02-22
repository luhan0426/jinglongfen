package com.jinlongfeng.pojo;

public class SysFunction {
	private Integer id;
	private String funName;
	private boolean isChecked;
	
	
	public boolean getIsChecked() {
		return isChecked;
	}
	public void setIsChecked(boolean isChecked) {
		this.isChecked = isChecked;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFunName() {
		return funName;
	}
	public void setFunName(String funName) {
		this.funName = funName;
	}
	@Override
	public String toString() {
		return "SysFunction [id=" + id + ", funName=" + funName + ", isChecked=" + isChecked + "]";
	}
	
}
