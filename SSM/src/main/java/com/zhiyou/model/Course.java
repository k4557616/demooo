package com.zhiyou.model;

import java.io.Serializable;
import java.util.List;

import org.w3c.dom.Text;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Course implements Serializable{

	private Integer id;
	
	private String  course_title;
	
	private String  course_desc;

	private Integer subject_id;
	
	private Subject subject;
	
	private List<Video> videooList;
}
