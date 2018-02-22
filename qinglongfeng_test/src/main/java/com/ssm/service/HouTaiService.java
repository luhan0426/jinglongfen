package com.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.HouTaiMapper;
import com.ssm.pojo.Daohang;

@Service
public class HouTaiService {
	@Autowired
	private HouTaiMapper hMapper;
	public List<Daohang> daoHangList() {
		// TODO Auto-generated method stub
		return hMapper.daoHangList();
	}

}
