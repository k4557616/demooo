package com.zhiyou.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.User;

public interface UserDao {
	void add(User user);

	void addRegister(User user);
	
	void delete(int id);

	void update(User user);
	
	void updateZ(User user);
	
	void updateT(@Param("img")String user,@Param("id")int id);
	
	void updateM(@Param("p")String password,@Param("i")int id);

	User selectByName(@Param("name")String email, @Param("password")String password);

	User selectById(int id);

	List<User> selectAll();
	
	//可以使用使用列进行模糊查询
	List<User> selectLikeAll(@Param("like")String like);
	
	List<User> selectName(String email);
	
	List<User> selectByPassword(String password);
	


}
