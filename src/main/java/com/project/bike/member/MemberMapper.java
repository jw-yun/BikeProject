package com.project.bike.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception;
}
