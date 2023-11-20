package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.command.BoardVO;

@Mapper
public interface BoardMapper {
   public void boardRegister(BoardVO vo);
}