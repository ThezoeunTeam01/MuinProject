package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.command.BoardVO;
import com.example.demo.mapper.BoardMapper;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
   
   @Autowired
   BoardMapper boardMapper;
   
   @Override
   public void boardRegister(BoardVO vo) {
      boardMapper.boardRegister(vo);
   }
   
   @Override
   public List<BoardVO> getList() {
      // TODO Auto-generated method stub
      return null;
   }
}