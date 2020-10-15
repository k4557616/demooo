package com.zhiyou.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import com.zhiyou.model.Video;

import lombok.val;

public interface VideoDao {

	void add(Video video);

	void delete(int id);
	
	void deleteAll(@Param("ids")int[] id);

	void update(Video video);
	
	List<Video> selectAll();

	Video selectById(int id);
	
	List<Video> selectLikeAll(@Param("like")String like);
	
	List<Video> selectLikeSS(@Param("name")String name,@Param("title")String title,@Param("tit")String string);
	
    int NameSum(@Param("name")String name,@Param("title")String title );
	List<Video> selectAllMH(@Param("name")String name,@Param("title")String title ,@Param("page")int page);
	
//	List<Video> selectLike(@Param("")String speaker_name,@Param("")String like2);
	
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
		Video selectByVideooId(int videooId);
		
		List<Video> selectAll2(Video video);
}
