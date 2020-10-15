package com.zhiyou.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import org.w3c.dom.Text;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Video implements Serializable{

    private Integer id;
	
	private String  title;
	private String  detail;
	private Integer  time;
	
	private Integer  speaker_id;
	private Integer  course_id;

	private String  video_url;
	private String  image_url;
	private Integer  play_num;
	
	private Speaker speaker;
	
	private Course course;
	
	private Subject subject;
	
	//代表一个部门下有多个员工
    //private List<Speaker> speakers;
	
    //private List<Subject> subjects;
}
