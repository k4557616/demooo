package com.zhiyou.model;

import java.sql.Date;
import java.sql.Timestamp;
import java.io.Serializable;
import java.lang.Integer;
import javafx.scene.chart.PieChart.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@AllArgsConstructor
@NoArgsConstructor
@lombok.Data
public class User implements Serializable{
private Integer id;
	
	private String  email;
	@NonNull
	private String  phoneNum;
	@NonNull
	private String  password;
	private String  code;
	private String  nickname;
	private String  sex;
	private String  birthday;
	private String  address;
	private String  imgUrl;
	private Date  createTime;
	

	//���ڸ�ʽ������
	/*@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date date;*/
	
	
	

}
