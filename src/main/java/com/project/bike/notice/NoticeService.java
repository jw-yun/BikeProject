package com.project.bike.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	
	public int setInsert(NoticeVO noticeVO) throws Exception{
		int result = noticeMapper.setInsert(noticeVO);
		
		return result;
	}
	
}
