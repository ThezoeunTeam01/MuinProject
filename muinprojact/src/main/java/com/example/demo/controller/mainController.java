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
   public String index(Model model){
	   
	  List<BoardVO> boardList = boardService.boardIndexList();
	  
	  System.out.println(boardList);
	  
	  List<BoardDTO> dtos = new ArrayList<BoardDTO>();
	   
	   for(BoardVO board : boardList) {
		   List<BoardFileVO> boardFileList = boardService.boardFileList(board.getBno());
		   System.out.println(boardFileList);
		   BoardDTO boards = new BoardDTO();
		   boards.setBoardVO(board);
		   boards.setBoardFileVO(boardFileList);
		   dtos.add(boards);
	   }
	   System.out.println("----------------dtos--------------");
	   System.out.println(dtos);
	  
	  model.addAttribute("boardList", dtos);
      return "index";
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
   
   // 마이 페이지
   @GetMapping("myPage")
   public String myPage(HttpSession session,Model model) {
	   
	   String id = (String)session.getAttribute("id");
	   
	   List<BoardVO> boardList = boardService.boardList(id);
	   
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
	   
	   model.addAttribute("memberFileVO", memberFileVO);
	   model.addAttribute("boardList", dtos);
	   
	   return "myPage/myPage";
   }
   
   // 카테고리 페이지
   @GetMapping("/digital")
   public String digital(Model model) {
	  
	  List<BoardVO> boardDigitalList = boardService.boardDgitalList();
	  
	  List<BoardDTO> dtos = new ArrayList<BoardDTO>();
	   
	   for(BoardVO board : boardDigitalList) {
		   List<BoardFileVO> boardFileList = boardService.boardFileList(board.getBno());
		   System.out.println(boardFileList);
		   BoardDTO boards = new BoardDTO();
		   boards.setBoardVO(board);
		   boards.setBoardFileVO(boardFileList);
		   dtos.add(boards);
	   }
	   System.out.println("---------------------digital------------------");
	   System.out.println(dtos);
	  model.addAttribute("boardDigitalList", dtos);
      return "cate/digital";
   }
   
//   @GetMapping("/fashion")
//   public String fashion(Model model) {
//	   List<BoardVO> boardDigitalList = boardService.boardFashionList();
//		  
//		  List<BoardDTO> dtos = new ArrayList<BoardDTO>();
//		   
//		   for(BoardVO board : boardDigitalList) {
//			   List<BoardFileVO> boardFileList = boardService.boardFileList(board.getBno());
//			   System.out.println(boardFileList);
//			   BoardDTO boards = new BoardDTO();
//			   boards.setBoardVO(board);
//			   boards.setBoardFileVO(boardFileList);
//			   dtos.add(boards);
//		   }
//		   
//		  model.addAttribute("boardDigitalList", dtos);
//	   
//      return "cate/fashion";
//   }
//   
//   @GetMapping("/etc")
//   public String etc(Model model) {
//	   
//	   List<BoardVO> boardDigitalList = boardService.boardETCList();
//		  
//		  List<BoardDTO> dtos = new ArrayList<BoardDTO>();
//		   
//		   for(BoardVO board : boardDigitalList) {
//			   List<BoardFileVO> boardFileList = boardService.boardFileList(board.getBno());
//			   System.out.println(boardFileList);
//			   BoardDTO boards = new BoardDTO();
//			   boards.setBoardVO(board);
//			   boards.setBoardFileVO(boardFileList);
//			   dtos.add(boards);
//		   }
//		   
//		  model.addAttribute("boardDigitalList", dtos);
//      return "cate/etc";
//   }
   
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
   
}