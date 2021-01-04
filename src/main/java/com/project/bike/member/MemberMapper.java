package com.project.bike.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	public MemberVO getIdCheck(MemberVO memberVO) throws Exception;
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception;

	public int setMemberJoin(MemberVO memberVO) throws Exception;
}

