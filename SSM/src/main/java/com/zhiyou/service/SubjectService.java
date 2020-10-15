package com.zhiyou.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Subject;

public interface SubjectService {

	void add(Subject subject);
	void adds(Subject subject);

	void delete(int id);

	void update(Subject subject);
	
	List<Subject> selectAll();

	Subject selectById(int id);
	
	List<Subject> selectLikeAll(String like);
	
	
	List<Subject> selectCourseAndVideo(int subjectId);
	
	Subject selectById2(Integer subjectId);
	
	List<Subject> selectid(int id);
}
