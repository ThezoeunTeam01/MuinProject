package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.command.MemberVO;

@ResponseBody
@Mapper
public interface MemberMapper {
	public void register(MemberVO vo);	//회원가입
	public int idCheck(String id); // 아이디 체크
	public int login(MemberVO vo);
	public List<MemberVO> memberList(String id);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(String id);
}
