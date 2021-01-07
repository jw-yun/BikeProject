package com.project.bike.notice;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {

	private long num;
	private String title;
	private String contents;
	private Date regDate;
	private long hit;
}
