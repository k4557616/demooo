package com.zhiyou.model;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

/**
 * 	@date ���������setter,getter,tostring,equalsandhashcode����
	@setter ����set
	@getter ����get
	@tostring ����tostring
	@Allargsconstructor �������в������вι���
	@NOArgconstructor �Զ������޲ι���
	@EqualsAndHashCode ������equals��hashcode����
	@NonNull ����444451��ĺͲ���������@RequiredArgsConstructor�����
 */

@AllArgsConstructor //�����вι���
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
	

	//���ڸ�ʽ������
	/*@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date date;*/
}
