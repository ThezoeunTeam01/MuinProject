package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.command.BoardFileVO;

@Mapper
public interface BoardFileMapper {
	public void boardFileInsert(BoardFileVO vo);
	public List<BoardFileVO> boardFileList(int id);
	public void deleteBoardFile(int bno);
}
