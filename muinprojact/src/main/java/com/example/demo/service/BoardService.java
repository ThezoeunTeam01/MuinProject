package com.example.demo.service;

import java.util.List;

import com.example.demo.command.BoardVO;

public interface BoardService {
   public void boardRegister(BoardVO vo);
   public List<BoardVO> getList();
}