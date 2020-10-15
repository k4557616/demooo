package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.zhiyou.dao.UserDao;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;



@Service
public class UserServiceImpl implements UserService{

	/**
	 * @Autowired
	UserDao userdao;
	@Autowired
	RedisTemplate<String, String> redis;
	
	public void add(User user) {
		userdao.add( user);
	}
	public void update(User user) {
		userdao.update( user);	
	}
	// 用来标记需要清除缓存的方法,以及指定需要清除的缓存		allEntries：代表是否清除缓存中的所有元素
	@CacheEvict(value="userSelect",allEntries=true)
	public void delete(int id) {
		userdao.delete(id);
	}

	// 指定下面这个方法需要使用缓存,使用缓存的名字叫userSelect,缓存的key为 传入的page的值
	@Cacheable(value="userSelect",key="#page")
	public List<User> select(int page) {
		PageHelper.startPage(page,5);
		return  userdao.select();
	}
	
	
	@Cacheable(value="userSelect",key="T(String).valueOf(#id).concat('heihei')")
	public User selectById(int id) {
		return userdao.selectById(id);
	}
	 */
	
	
	@Autowired
	UserDao dao;
	
	public void add(User user) {
		// TODO Auto-generated method stub
		dao.add(user);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	public void update(User user) {
		// TODO Auto-generated method stub
		dao.update(user);
	}

	public User selectById(int id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public List<User> SelectAll(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	public int sum() {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<User> selectAllMH(String name, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	public int NameSum(String name) {
		// TODO Auto-generated method stub
		return 0;
	}

	public User selectByName(String username, String password) {
		// TODO Auto-generated method stub
		return dao.selectByName(username, password);
	}

	public int selectByName(String name) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<User> selectAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	

	public List<User> selectLikeAll(String username) {
		// TODO Auto-generated method stub
		return dao.selectLikeAll(username);
	}

	public void addRegister(User user) {
		// TODO Auto-generated method stub
		dao.addRegister(user);
	}

	public int selectName(String email) {
		// TODO Auto-generated method stub
		List<User> list = dao.selectName(email);
		System.out.println(email);
		for (User user : list) {
			if (email.equals(user.getEmail())) {
				return 0;
			}
		}
		return 1;
		
		/*for (User u : list) {
			if (email.equals(u.getEmail())) {
				return 0;
			}
		}
		return 1;*/
	
	}

	public void updateZ(User user) {
		// TODO Auto-generated method stub
		dao.updateZ(user);
	}

	

	public void updateT(String user, int id) {
		// TODO Auto-generated method stub
		dao.updateT(user, id);
	}

	public void updateM(String password, int id) {
		// TODO Auto-generated method stub
		dao.updateM(password, id);
	}

	public int selectByPassword(String password,int userId) {
		// TODO Auto-generated method stub
		User user = selectById(userId);
		System.out.println(password+"?"+userId+"?"+user);
		if (password.equals(user.getPassword())) {
			return 1;
		}else {
			return 0;
		}
	}

	

	

	

}
