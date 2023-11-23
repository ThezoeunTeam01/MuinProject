package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.command.BoardFileVO;
import com.example.demo.command.BoardVO;
import com.example.demo.mapper.BoardFileMapper;
import com.example.demo.mapper.BoardMapper;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
   
   @Autowired
   BoardMapper boardMapper;
   
   @Autowired
   BoardFileMapper boardFileMapper;
   
   @Transactional	
   @Override
   public void boardRegister(BoardVO vo) {
	   
	   boardMapper.boardRegister(vo);
	   System.out.println("bno : "+vo.getBno());
      if(vo.getBoardFileList()==null || vo.getBoardFileList().size()<=0) {
    	  return;
      }	// 파일에 아무것도 없으면 리턴 있으면 아래 실행
      
      vo.getBoardFileList().forEach(file ->{
    	  file.setBno(vo.getBno());
    	  System.out.println(file);
    	  boardFileMapper.boardFileInsert(file);
      });	// 파일 하나씩 boardFileMapper랑 연결해서 insert 실행 interface를 통해 xml로 이동
      
   }
   @Override
   public List<BoardVO> boardList(String id) {     
      return boardMapper.boardList(id);
   }
   
   @Override
	public List<BoardFileVO> boardFileList(int bno) {
		return boardFileMapper.boardFileList(bno);
	}
   
   @Override
	public List<BoardVO> boardIndexList() {
		return boardMapper.boardIndexList();
	}
   
   @Override
	public List<BoardVO> boardDgitalList() {
		
		return boardMapper.boardDigitalList();
	}
   
   @Override
	public List<BoardVO> boardFashionList() {		
		return boardMapper.boardFashionList();
	}
   
   @Override
	public List<BoardVO> boardETCList() {		
		return boardMapper.boardETCList();
	}
  
}