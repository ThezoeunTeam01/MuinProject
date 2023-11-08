package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.command.MemberVO;

@Mapper
public interface MemberMapper {
	public int register(MemberVO vo);	//회원가입
	
}
