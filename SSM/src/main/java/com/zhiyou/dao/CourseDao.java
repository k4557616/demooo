package com.zhiyou.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Course;

public interface CourseDao {

	void add(Course course);

	void addss(Course course);
	
	void delete(int id);
	
	void deleteAll(@Param("ids")int[] id);

	void update(Course course);
	
	//void s(Map<String, String> map);
	
	List<Course> selectAll();

	Course selectById(int id);
	
	List<Course> selectLikeAll(@Param("like")String like);
       
	int deletes(int id);
}
