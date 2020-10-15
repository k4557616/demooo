package com.zhiyou.model;

import java.io.Serializable;
import java.sql.Date;

import org.w3c.dom.Text;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Speaker implements Serializable{

	private Integer  speaker_id;
	
	private String  speaker_name;
	private String  speaker_desc;
	private String  speaker_job;
	private String  head_img_url;
}
