package com.zhiyou.model;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

/**
 * 	@date 生成相对与setter,getter,tostring,equalsandhashcode合体
	@setter 生成set
	@getter 生成get
	@tostring 生成tostring
	@Allargsconstructor 生成所有参数的有参构造
	@NOArgconstructor 自动生成无参构造
	@EqualsAndHashCode 给生成equals与hashcode方法
	@NonNull 定义444451须的和参数构造器@RequiredArgsConstructor和配合
 */

@AllArgsConstructor //所有有参构造
@NoArgsConstructor  
@RequiredArgsConstructor
@Data
public class User implements Serializable{
	private Integer id;
	@NonNull
	private String name;
	@NonNull
	private String password;
	@NonNull
	private String qian;
	

	//用于格式化日期
	/*@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date date;*/
}
