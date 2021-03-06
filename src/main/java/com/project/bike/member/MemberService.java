package com.project.bike.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	public MemberVO getIdCheck(MemberVO memberVO) throws Exception{
		
		return memberMapper.getIdCheck(memberVO);
	}
	
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception{
		
		return memberMapper.getMemberLogin(memberVO);
	}
	
	public int setMemberJoin(MemberVO memberVO) throws Exception{
		
		return memberMapper.setMemberJoin(memberVO);
	}
	
}
