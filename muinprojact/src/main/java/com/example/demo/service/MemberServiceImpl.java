package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.command.MemberVO;
import com.example.demo.mapper.MemberMapper;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	
	@Override
	public int register(MemberVO vo) {
		return memberMapper.register(vo);
	}
}
