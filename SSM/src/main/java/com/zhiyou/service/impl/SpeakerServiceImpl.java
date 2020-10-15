package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.SpeakerDao;
import com.zhiyou.model.Speaker;
import com.zhiyou.service.SpeakerService;

@Service
public class SpeakerServiceImpl implements SpeakerService {

	@Autowired
	SpeakerDao dao;

	public void add(Speaker speaker) {
		// TODO Auto-generated method stub
		dao.add(speaker);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	public void update(Speaker speaker) {
		// TODO Auto-generated method stub
		dao.update(speaker);
	}

	public List<Speaker> selectAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	public Speaker selectById(int id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public List<Speaker> selectLikeAll(String like) {
		// TODO Auto-generated method stub
		return dao.selectLikeAll(like);
	}

	public void deleteAll(int[] id) {
		// TODO Auto-generated method stub
		dao.deleteAll(id);
	}

	public void adds(Speaker speaker) {
		// TODO Auto-generated method stub
		dao.adds(speaker);
	}
	
	
	

}
