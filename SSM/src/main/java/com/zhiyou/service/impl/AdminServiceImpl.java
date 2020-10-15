package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.AdminDao;

import com.zhiyou.model.Admin;
import com.zhiyou.service.AdminService;
import com.zhiyou.service.UserService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao dao;

	public Admin selectByName(String username, String password) {
		// TODO Auto-generated method stub
		return dao.selectByName(username, password);
	}

	public void add(Admin admin) {
		// TODO Auto-generated method stub
		dao.add(admin);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	public void update(Admin admin) {
		// TODO Auto-generated method stub
		dao.update(admin);
	}

	public List<Admin> selectAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	public Admin selectById(int id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public List<Admin> selectLikeAll(String like) {
		// TODO Auto-generated method stub
		return dao.selectLikeAll(like);
	}

	
}
