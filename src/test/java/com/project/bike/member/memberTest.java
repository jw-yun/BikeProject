package com.project.bike.member;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
@SpringBootTest
class memberTest {

	@Autowired
	private MemberMapper memberMapper;
	
	@Test
	void setMemberJoinTest() throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setId("testId");
		memberVO.setPw("testPw");
		memberVO.setName("testName");
		memberVO.setAddr1("testAddr1");
		memberVO.setAddr2("testAddr2");
		memberVO.setAddr3("testAddr3");
		memberVO.setPhone("testPhone");
		
		int result=memberMapper.setMemberJoin(memberVO);
		
		assertEquals(1, result);
	}
	
	//@Test
	void getMemberLoginTest() throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setId("admin");
		memberVO.setPw("admin");
		
		memberVO = memberMapper.getMemberLogin(memberVO);
		assertNotNull(memberVO);
	}
	
	

}
