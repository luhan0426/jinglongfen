package com.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.ProducterMapper;
import com.ssm.pojo.Liuyan;
import com.ssm.pojo.Producter;

@Service
public class ProducterService {
	@Autowired
	private ProducterMapper mapper;
	public List<Producter> retrieveList() {
		// TODO Auto-generated method stub
		return mapper.retrieveList();
	}
	public void toLiuyan(Liuyan liuyan) {
		// TODO Auto-generated method stub
		mapper.toLiuyan(liuyan);
	}

}
