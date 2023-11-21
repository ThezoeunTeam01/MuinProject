package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.command.MemberFileVO;

@Mapper
public interface FileMapper {
	public void fileInsert(MemberFileVO vo);
	public List<MemberFileVO> fileList(String id);
	public void fileUpdate(MemberFileVO vo);
	public void fileDelete(String id);
}
