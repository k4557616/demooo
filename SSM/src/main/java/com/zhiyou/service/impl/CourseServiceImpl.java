package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.zhiyou.dao.AdminDao;
import com.zhiyou.dao.CourseDao;
import com.zhiyou.model.Course;
import com.zhiyou.service.CourseService;

@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	CourseDao dao;

	public void add(Course course) {
		// TODO Auto-generated method stub
		dao.add(course);
	}
	// 用来标记需要清除缓存的方法,以及指定需要清除的缓存		allEntries：代表是否清除缓存中的所有元素
	//@CacheEvict(value="courseSelect",allEntries=true)
	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	public void update(Course course) {
		// TODO Auto-generated method stub
		dao.update(course);
	}

	public List<Course> selectAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	//@Cacheable(value="courseSelect",key="T(String).valueOf(#id).concat('course')")
	public Course selectById(int id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}
	// 指定下面这个方法需要使用缓存,使用缓存的名字叫userSelect,缓存的key为 传入的page的值
	//@Cacheable(value="courseSelect",key="#page")
	public List<Course> selectLikeAll(String like) {
		// TODO Auto-generated method stub
		
		return dao.selectLikeAll(like);
	}

	//@CacheEvict(value="courseSelect",allEntries=true)
	public void deleteAll(int[] id) {
		// TODO Auto-generated method stub
		dao.deleteAll(id);
	}

	public int deletes(int id) {
		// TODO Auto-generated method stub
		return dao.deletes(id);
	}
	
	
}
