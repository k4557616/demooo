package com.zhiyou.model;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Admin implements  Serializable{
    private Integer id;
	@NonNull
	private String  username;
	@NonNull
	private String  password;
	private String  roles;
}
