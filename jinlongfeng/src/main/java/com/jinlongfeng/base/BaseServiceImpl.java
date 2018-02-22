package com.jinlongfeng.base;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

public class BaseServiceImpl<E> implements IBaseService<E> {
	
	@Autowired
	private IBaseDAO<E> baseDAO;
	
	@Override
	public List<E> queryList(Integer page, int pagesize) {
		Integer startPage = (page - 1)*pagesize;
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("startPage", startPage);
		map.put("pagesize", pagesize);
		return baseDAO.queryList(map);
	}

	@Override
	public void add(E e) {
		baseDAO.add(e);
	}

	@Override
	public void update(E e) {
		baseDAO.update(e);
	}

	@Override
	public void delete(Integer id) {
		baseDAO.delete(id);
	}

	@Override
	public List<E> retrieveList() {
		// TODO Auto-generated method stub
		return baseDAO.retrieveList();
	}

}
