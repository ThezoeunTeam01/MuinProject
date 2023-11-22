package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.command.BoardFileVO;

@Mapper
public interface BoardFileMapper {
	public void boardFileInsert(BoardFileVO vo);
}
