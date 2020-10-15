package com.zhiyou.model;

import java.io.Serializable;
import java.util.List;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Subject implements Serializable{

private Integer  id;
	
private String  subject_name;

private List<Course> courseList;
}
