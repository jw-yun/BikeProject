package com.project.bike.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.bike.util.Pager;

@Service
public class NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	
	public int setDelete(NoticeVO noticeVO) throws Exception{
		return noticeMapper.setDelete(noticeVO);
	}
	
	public NoticeVO getOne(NoticeVO noticeVO) throws Exception{
		noticeVO = noticeMapper.getOne(noticeVO);
		return noticeVO;
	}
	
	public int setInsert(NoticeVO noticeVO) throws Exception{
		int result = noticeMapper.setInsert(noticeVO);
		
		return result;
	}
	
	public List<NoticeVO> getList(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount=noticeMapper.getCount(pager);
		pager.makePage(totalCount);
		
		return noticeMapper.getList(pager);
	}
}
