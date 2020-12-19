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
	void getMemberLoginTest() throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setId("admin");
		memberVO.setPw("admin");
		
		memberVO = memberMapper.getMemberLogin(memberVO);
		assertNotNull(memberVO);
	}

}
