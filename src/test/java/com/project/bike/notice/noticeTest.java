package com.project.bike.notice;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
@SpringBootTest
class noticeTest {

	@Autowired
	private NoticeMapper noticeMapper;
	
	@Test
	void setInsertTest() throws Exception{
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setTitle("테스트제목3333");
		noticeVO.setContents("테스트 내용333333333");
	
		int result = noticeMapper.setInsert(noticeVO);
		
		assertEquals(1, result);
	}
	
	
	void test() {
		
	}

}
