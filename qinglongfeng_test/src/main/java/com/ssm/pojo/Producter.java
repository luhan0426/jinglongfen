package com.ssm.pojo;

public class Producter {
	private Integer id;
	private String pname;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	@Override
	public String toString() {
		return "Producter [id=" + id + ", pname=" + pname + "]";
	}
	
}
