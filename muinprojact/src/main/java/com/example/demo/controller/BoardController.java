package com.example.demo.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.command.BoardFileVO;
import com.example.demo.command.BoardVO;
import com.example.demo.command.DTO;
import com.example.demo.service.BoardService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/*")
public class BoardController {
   
   @Autowired
   BoardService boardService;
   
   @GetMapping("/categoryPage")
   public String categoryPage() {
      return "cate/categoryPage";
   }
   
   @PostMapping("/boardRegister")
   public String boardRegister(BoardVO vo) {
      
      System.out.println(vo.getBoardFileList());
      // BoardVO에 boardFileList를 만들어 board.js에서 보낸 file을 잘 받아왔는지 확인
      
      boardService.boardRegister(vo);
      
      // 확인 후 잘 받아 왔으면 boardService의 boardRegister 실행
      return "redirect:/";
   }
   
   @GetMapping("/upload")
   public String upload() {
      return "upload/upload";
   }
   
   @GetMapping("myPage")
   public String myPage(HttpSession session,Model model) {
	   
	   List<BoardVO> boardList = boardService.boardList((String)session.getAttribute("id"));
	   System.out.println(boardList );
	   
	   List<DTO> dtos = new ArrayList<DTO>();
	   
	   for(BoardVO file : boardList) {
		   List<BoardFileVO> boardFileList = boardService.boardFileList(file.getBno());
		   System.out.println(boardFileList);
		   DTO boards = new DTO();
		   boards.setBoardVO(file);
		   boards.setFileVOs(boardFileList);
		   dtos.add(boards);

	   }
	   
	   
	   model.addAttribute("boardList", dtos);
	   
	   return "myPage/myPage";
   }

}