package com.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.ProducterMapper;
import com.ssm.pojo.Product;

@Service
public class ProductService {
	@Autowired
	private ProducterMapper pdMapper;

	public void toAdd(Product product) {
		// TODO Auto-generated method stub
		pdMapper.toAdd(product);
	}
	
	
}
