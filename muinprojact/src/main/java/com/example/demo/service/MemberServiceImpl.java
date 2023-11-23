package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.command.MemberFileVO;
import com.example.demo.command.MemberVO;
import com.example.demo.mapper.FileMapper;
import com.example.demo.mapper.MemberMapper;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	
	@Autowired
	FileMapper fileMapper;
	
	@Transactional
	@Override
	public void register(MemberVO vo) {
		
		memberMapper.register(vo);
		
		if(vo.getFileList()==null || vo.getFileList().size()<=0) {
			return;
		}
		vo.getFileList().forEach(list -> {
			log.info("list의 id값 확인 : "+list.getId());
			log.info("list의 id값 확인 : "+list.getFileName());
			list.setId(vo.getId());
			fileMapper.fileInsert(list);
		});		
	}
	@Override
	public int idCheck(String id) {
	      return memberMapper.idCheck(id);
	}
	@Override
	public int login(MemberVO vo) {
		return memberMapper.login(vo);
	}
	@Override
	public List<MemberVO> memberList(String id) {
		List<MemberVO> memberList =  memberMapper.memberList(id);
		return memberList;
	}
	
	@Transactional
	@Override
	public void memberUpdate(MemberVO vo) {
		
		memberMapper.memberUpdate(vo);
		
		if(vo.getFileList()==null || vo.getFileList().size()<=0) {
			return;
		}
		vo.getFileList().forEach(list -> {
			fileMapper.fileUpdate(list);
		});
		
	}
	
	@Override
	public void memberDelete(String id,List<MemberFileVO> fileList) {
				
		if(fileList==null || fileList.size()<=0) {
			return;
		}
		fileMapper.fileDelete(id);
		
		memberMapper.memberDelete(id);
	}
	
}
