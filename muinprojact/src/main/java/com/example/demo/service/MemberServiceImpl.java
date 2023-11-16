package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.command.MemberVO;
import com.example.demo.mapper.FileMapper;
import com.example.demo.mapper.MemberMapper;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	
	@Autowired
	FileMapper fileMapper;
	
	@Transactional
	@Override
	public int register(MemberVO vo) {
		
		memberMapper.register(vo);
		
		if(vo.getFileList()==null || vo.getFileList().size()<=0) {
			return 1;
		}
		vo.getFileList().forEach(list -> {
			fileMapper.fileInsert(list);
		});
		
		return 1;
	}
	@Override
	   public int idCheck(String id) {
	      return memberMapper.idCheck(id);
	   }
	@Override
	public int login(MemberVO vo) {
		return memberMapper.login(vo);
	}
	
}
