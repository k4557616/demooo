package com.zhiyou.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Course;

public interface CourseService {

	void add(Course course);

	void delete(int id);
	void deleteAll(@Param("ids")int[] id);

	void update(Course course);
	
	List<Course> selectAll();

	Course selectById(int id);
	
	List<Course> selectLikeAll(String like);
	
	int deletes(int id);
}
