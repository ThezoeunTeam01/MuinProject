package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.command.BoardVO;
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
      System.out.println(vo);
      System.out.println("zzzzzzzzzzz");
      boardService.boardRegister(vo);
      
      return "redirect:/";
   }
   
   @GetMapping("/upload")
   public String upload() {
      return "upload/upload";
   }

}