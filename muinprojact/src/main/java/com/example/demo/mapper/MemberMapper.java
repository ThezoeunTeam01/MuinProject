package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.command.MemberVO;

@ResponseBody
@Mapper
public interface MemberMapper {
	public int register(MemberVO vo);	//회원가입
	public int idCheck(String id); // 아이디 체크
	public int login(MemberVO vo); 
}
