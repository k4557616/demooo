package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.SpeakerDao;
import com.zhiyou.dao.SubjectDao;
import com.zhiyou.model.Subject;
import com.zhiyou.service.SubjectService;

@Service
public class SubjectServiceImpl implements SubjectService {

	@Autowired
	SubjectDao dao;

	public void add(Subject subject) {
		// TODO Auto-generated method stub
		dao.add(subject);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	public void update(Subject subject) {
		// TODO Auto-generated method stub
		dao.update(subject);
	}

	public List<Subject> selectAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	public Subject selectById(int id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public List<Subject> selectLikeAll(String like) {
		// TODO Auto-generated method stub
		return dao.selectLikeAll(like);
	}

	public void adds(Subject subject) {
		// TODO Auto-generated method stub
		dao.adds(subject);
	}

	public List<Subject> selectCourseAndVideo(int subjectId) {
		// TODO Auto-generated method stub
		return dao.selectCourseAndVideo(subjectId);
	}
	
	public Subject selectById2(Integer subjectId) {
		Subject subject = new Subject(subjectId,null,null);
		List<Subject> list = dao.selectAll2(subject);
		return list.size()==0?null:list.get(0);
	}

	public List<Subject> selectid(int id) {
		// TODO Auto-generated method stub
		return dao.selectid(id);
	}
	
	
}
