package com.project.bike.notice;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeMapper {

	public int setInsert(NoticeVO noticeVO) throws Exception;
	
	
}
