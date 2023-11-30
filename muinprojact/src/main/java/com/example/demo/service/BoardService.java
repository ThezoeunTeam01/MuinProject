package com.example.demo.service;

import java.util.List;

import com.example.demo.command.BoardFileVO;
import com.example.demo.command.BoardVO;

public interface BoardService {
   public void boardRegister(BoardVO vo);
   public List<BoardVO> boardList(String id);
   public List<BoardVO> boardViewList(int bno);
   public List<BoardFileVO> boardFileList(int bno);
   public List<BoardVO> boardIndexList();
   public List<BoardVO> boardDgitalList();
   public List<BoardVO> boardFashionList();
   public List<BoardVO> boardETCList();
   public List<BoardVO> boardSearch(String search);
   public BoardVO updateList(int bno);
   public void updateBoard(BoardVO vo);
   public void deleteBoard(int bno);
}