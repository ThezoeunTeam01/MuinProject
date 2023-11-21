package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.command.MemberFileVO;
import com.example.demo.command.MemberVO;

@Service
public interface MemberService {
	public int register(MemberVO vo);
	public int idCheck(String id);
	public int login(MemberVO vo);
	public List<MemberVO> memberList(String id);
	public void memberUpdate(MemberVO vo);
	public void memberDelete(String id,List<MemberFileVO> fileList);
}
