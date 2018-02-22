package com.ssm.mapper;

import java.util.List;

import com.ssm.pojo.Liuyan;
import com.ssm.pojo.Product;
import com.ssm.pojo.Producter;

public interface ProducterMapper {

	List<Producter> retrieveList();

	void toLiuyan(Liuyan liuyan);

	void toAdd(Product product);

}
