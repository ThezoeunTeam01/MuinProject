package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.command.BoardFileVO;
import com.example.demo.command.BoardVO;
import com.example.demo.command.BoardDTO;
import com.example.demo.command.MemberFileVO;
import com.example.demo.command.MemberVO;
import com.example.demo.service.BoardService;
import com.example.demo.service.FileService;
import com.example.demo.service.MemberService;

@Controller
public class mainController {
	
	@Autowired FileService fileService;
	@Autowired MemberService memberService;
	@Autowired BoardService boardService;
	
   // 홈페이지
   @GetMapping("/")
   public String index(){
	   
//	  List<BoardVO> boardList = 
	  
      return "index";
      }
   
   // 카테고리 페이지
   @GetMapping("/categoryPage")
   public String categoryPage() {
      return "cate/categoryPage";
   }
   
   // 회원정보 수정 페이지
   @GetMapping("memberUpdate")
   public String update(HttpSession session, Model model) {
	   
	   String id = (String)session.getAttribute("id");	   
	   
	   List<MemberFileVO> fileList =  fileService.fileList(id);
	   
	   List<MemberVO> memberList = memberService.memberList(id);	   	   	   	   
	   
	   model.addAttribute("memberList", memberList);	   	   
	   model.addAttribute("fileList",fileList);

	   return "myPage/update";
   }
   
   // 카테고리 뷰 페이지
   @GetMapping("/view")
   public String content() {
      return "cate/view";
   }
   
   // 컨텐츠 업로드 페이지
   @GetMapping("/upload")
   public String upload() {
      return "upload/upload";
   }
   // 로그인 페이지
   @GetMapping("/login")
   public String login() {
	   return "login/login";
   }
   @GetMapping("/register")
   public String register() {
	   return "register/register";
   }
   // 마이 페이지
   @GetMapping("myPage")
   public String myPage(HttpSession session,Model model) {
	   
	   String id = (String)session.getAttribute("id");
	   
	   List<BoardVO> boardList = boardService.boardList(id);
	   System.out.println(boardList );
	   
	   List<MemberFileVO> memberFileVO = fileService.fileList(id);	   	   
	   
	   List<BoardDTO> dtos = new ArrayList<BoardDTO>();
	   
	   for(BoardVO file : boardList) {
		   List<BoardFileVO> boardFileList = boardService.boardFileList(file.getBno());
		   System.out.println(boardFileList);
		   BoardDTO boards = new BoardDTO();
		   boards.setBoardVO(file);
		   boards.setBoardFileVO(boardFileList);
		   dtos.add(boards);

	   }
	   System.out.println("dddddddddddddddddddddddddddd"+dtos);
	   
	   model.addAttribute("memberFileVO", memberFileVO);
	   model.addAttribute("boardList", dtos);
	   
	   return "myPage/myPage";
   }
   
}