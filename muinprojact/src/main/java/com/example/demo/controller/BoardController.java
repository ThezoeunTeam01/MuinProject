package com.example.demo.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.command.BoardVO;
import com.example.demo.service.BoardService;
import com.example.demo.service.FileService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/*")
public class BoardController {
   
   @Autowired
   BoardService boardService;   
   
   @Autowired
   FileService fileService;
   
   @PostMapping("/boardRegister")
   public String boardRegister(BoardVO vo) {
      
      System.out.println(vo.getBoardFileList());
      // BoardVO에 boardFileList를 만들어 board.js에서 보낸 file을 잘 받아왔는지 확인
      
      boardService.boardRegister(vo);
      
      // 확인 후 잘 받아 왔으면 boardService의 boardRegister 실행
      return "redirect:/";
   }

}