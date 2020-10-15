package com.zhiyou.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Admin;


public interface AdminDao {
	
	Admin selectByName(@Param("username")String Adminname, @Param("password")String password);


	void add(Admin admin);

	void delete(int id);

	void update(Admin admin);
	
	List<Admin> selectAll();

	Admin selectById(int id);
	
	List<Admin> selectLikeAll(@Param("like")String like);

}
