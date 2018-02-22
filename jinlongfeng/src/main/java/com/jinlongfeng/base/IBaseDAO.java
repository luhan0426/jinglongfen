package com.jinlongfeng.base;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

/**
 * DAO »ù´¡Àà
 * 
 * @author lianze
 *  123123-111
 * @param <E>
 */
public interface IBaseDAO<E> {

	List<E> queryList(Map<Object, Object> map);
	
	void add(E e);
	
	void update(E e);
	
	void delete(@Param("id")Integer id);

	List<E> retrieveList();
}
