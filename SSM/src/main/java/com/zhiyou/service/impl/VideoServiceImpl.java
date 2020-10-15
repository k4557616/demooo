package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.zhiyou.dao.SubjectDao;
import com.zhiyou.dao.VideoDao;
import com.zhiyou.model.Video;
import com.zhiyou.service.VideoService;

@Service
public class VideoServiceImpl implements VideoService {

	@Autowired
	VideoDao dao;

	public void add(Video video) {
		// TODO Auto-generated method stub
		dao.add(video);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	public void update(Video video) {
		// TODO Auto-generated method stub
		dao.update(video);
	}

	public List<Video> selectAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	public Video selectById(int id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public List<Video> selectLikeAll(String like) {
		// TODO Auto-generated method stub
		return dao.selectLikeAll(like);
	}

	public void deleteAll(int[] id) {
		// TODO Auto-generated method stub
		dao.deleteAll(id);
	}

	

	public List<Video> selectAllMH(String name, String title, int page) {
		// TODO Auto-generated method stub
		return dao.selectAllMH(name, title, (page-1)*5);
	}

	public int NameSum(String name, String title) {
		// TODO Auto-generated method stub
		return dao.NameSum(name, title);
	}

	public List<Video> selectLikeSS(String name, String title, String string) {
		// TODO Auto-generated method stub
		return dao.selectLikeSS(name, title, string);
	}

	public List<Video> selectSubject(String name) {
		// TODO Auto-generated method stub
		return dao.selectSubject(name);
	}

	public List<Video> selectweb() {
		// TODO Auto-generated method stub
		return dao.selectweb();
	}

	public List<Video> selectui() {
		// TODO Auto-generated method stub
		return dao.selectui();
	}

	public List<Video> selectPython() {
		// TODO Auto-generated method stub
		return dao.selectPython();
	}

	public List<Video> selectPhp() {
		// TODO Auto-generated method stub
		return dao.selectPhp();
	}

	public List<Video> selectJava() {
		// TODO Auto-generated method stub
		return dao.selectJava();
	}

	public List<Video> selectda() {
		// TODO Auto-generated method stub
		return dao.selectda();
	}

	public Video selectBYID(int id) {
		// TODO Auto-generated method stub
		return dao.selectBYID(id);
	}

	public List<Video> selectSpeaker() {
		// TODO Auto-generated method stub
		return dao.selectSpeaker();
	}

	public void updatePlay(int play_num, int id) {
		// TODO Auto-generated method stub
		dao.updatePlay(play_num, id);
	}

	public List<Video> selectvideoid(int id) {
		// TODO Auto-generated method stub
		return dao.selectvideoid(id);
	}

	public void addPlayNum(Integer videooId) {
		// TODO Auto-generated method stub
		Video videoo = selectByVideooId(videooId);
		videoo.setPlay_num(videoo.getPlay_num()+1);
		dao.update(videoo);
	}
	
	//视频播放次数加一
	public Video selectByVideooId(int videooId) {
		Video videoo = new Video();
		videoo.setId(videooId);
		List<Video> list = dao.selectAll2(videoo);
		return list.size()==0?null:list.get(0);
		
	}
	
	
}
