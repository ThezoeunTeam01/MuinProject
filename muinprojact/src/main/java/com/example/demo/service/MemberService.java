package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.command.MemberVO;

@Service
public interface MemberService {
	public int register(MemberVO vo);
	public int idCheck(String id);
	public int login(MemberVO vo);
}
