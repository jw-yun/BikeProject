package com.project.bike.notice;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.project.bike.util.Pager;

@SpringBootTest
class noticeTest {

	@Autowired
	private NoticeMapper noticeMapper;
		
	@Test
	void getOneTest() throws Exception{
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setNum(99);
		noticeVO=noticeMapper.getOne(noticeVO);
		assertNotNull(noticeVO);
		}
		
	
/*	@Test
	void getListTest() throws Exception{
		long curPage=1;
		Pager pager = new Pager();
		pager.setPerPage(10);
		pager.setCurPage(curPage);
		pager.makeRow();
		//pager.setKind("writer");
		//pager.setSearch("r9");
		List<NoticeVO> ar = noticeMapper.getList(pager);
		assertEquals(10, ar.size());
	}
*/	
	//@Test
	void setInsertTest() throws Exception{
		for(int i=4; i<100;i++) {
			NoticeVO noticeVO = new NoticeVO();
			
			noticeVO.setTitle("테스트 제목"+i);
			noticeVO.setContents("테스트 내용"+i);
			
			
			int result = noticeMapper.setInsert(noticeVO);
			
			if(i%10==0) {
				Thread.sleep(1000);
			}
			
		}
		
		System.out.println("Finish");
	}
	
	void test() {
		
	}

}
