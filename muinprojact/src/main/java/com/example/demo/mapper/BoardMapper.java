package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.command.BoardFileVO;
import com.example.demo.command.BoardVO;

@Mapper
public interface BoardMapper {
   public void boardRegister(BoardVO vo);
   public List<BoardVO> boardList(String id);
   public List<BoardVO> indexBoardList();
}