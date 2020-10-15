package com.zhiyou.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Speaker;

public interface SpeakerDao {

	void add(Speaker speaker);

	void adds(Speaker speaker);
	
	void delete(int id);
	
	void deleteAll(@Param("ids") int[] id);

	void update(Speaker speaker);
	
	List<Speaker> selectAll();

	Speaker selectById(int id);
	
	List<Speaker> selectLikeAll(@Param("like")String like);
}
