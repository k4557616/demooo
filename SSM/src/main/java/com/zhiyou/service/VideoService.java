package com.zhiyou.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Video;

public interface VideoService {

	void add(Video video);

	void delete(int id);
	
	void deleteAll(int[] id);

	void update(Video video);
	
	List<Video> selectAll();

	Video selectById(int id);
	
	List<Video> selectLikeAll(String like);
	
	List<Video> selectLikeSS(@Param("name")String name,@Param("title")String title,@Param("tit")String string);
	
	List<Video> selectAllMH(String name,String title ,int page);
	
	int NameSum(String name,String title );
	
	List<Video> selectSubject(@Param("name")String name);
	
	
	List<Video> selectweb();
	List<Video> selectui();
	List<Video> selectPython();
	
	List<Video> selectPhp();
	List<Video> selectJava();
	List<Video> selectda();
	
	Video selectBYID(int id);
	
	List<Video> selectSpeaker();
	void updatePlay(@Param("play_num")int play_num,@Param("id")int id);
	
	
	List<Video> selectvideoid(int id);
	
	//播放次数加一
	void addPlayNum(Integer videooId);
}
