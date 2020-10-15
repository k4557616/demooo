package com.zhiyou.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.dao.UserDao;
import com.zhiyou.model.User;

public interface UserService {
	void add(User user);
	
	void addRegister(User user);

	void delete(int id);
	
	void update(User user);

	User selectByName(String email, String password);

	User selectById(int id);

	List<User> selectAll();
	
	int selectName(String email);
	
	//可以使用使用列进行模糊查询
	List<User> selectLikeAll(String like);
	
   void updateZ(User user);
	
   void updateM(String password,int id);
	
	void updateT(String user,int id);
	
	int selectByPassword(String password,int userId);
}
