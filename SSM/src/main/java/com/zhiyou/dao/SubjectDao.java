package com.zhiyou.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Speaker;
import com.zhiyou.model.Subject;

public interface SubjectDao {

	void add(Subject subject);
	
	void adds(Subject subject);

	void delete(int id);

	void update(Subject subject);
	
	List<Subject> selectAll();

	Subject selectById(int id);
	
	List<Subject> selectLikeAll(@Param("like")String like);
	
	List<Subject> selectCourseAndVideo(@Param("sid")int subjectId);
	
	List<Subject> selectAll2(@Param("all")Subject subject);
	
	List<Subject> selectid(int id);
}
