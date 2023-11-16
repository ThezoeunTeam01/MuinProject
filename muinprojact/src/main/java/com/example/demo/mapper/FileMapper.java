package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.command.FileVO;

@Mapper
public interface FileMapper {
	public void fileInsert(FileVO vo);
}
