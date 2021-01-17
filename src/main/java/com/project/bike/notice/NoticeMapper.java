package com.project.bike.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.bike.util.Pager;

@Mapper
public interface NoticeMapper {
	public int setDelete(NoticeVO noticeVO) throws Exception;
	
	public NoticeVO getOne(NoticeVO noticeVO) throws Exception;

	public int setInsert(NoticeVO noticeVO) throws Exception;
	
	public List<NoticeVO> getList(Pager pager) throws Exception;

	public long getCount(Pager pager) throws Exception;
	
}
