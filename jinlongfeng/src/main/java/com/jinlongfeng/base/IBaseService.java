package com.jinlongfeng.base;

import java.util.List;

public interface IBaseService<E> {
	

	List<E> queryList(Integer page, int pagesize);
	
	List<E> retrieveList();
	
	void add(E e);
	
	void update(E e);
	
	void delete(Integer id);
}
