package com.project.bike.member;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {

	private String id;
	private String pw;
	private String name;
	private String sex;
	private String addr1;
	private String addr2;
	private String addr3;
	private String phone;
	private int auth;
	private String path;
	private Date regDate;
	
}
