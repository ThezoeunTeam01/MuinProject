package com.example.demo.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.command.MemberFileVO;
import com.example.demo.command.MemberVO;
import com.example.demo.service.FileService;
import com.example.demo.service.MemberService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/*")
public class MemberController {
   
   @Autowired
   MemberService memberService;
   
   @Autowired
   FileService fileService;
   
   @Value("${upload.path}") // application.properties의 변수
   private String uploadFolder;
   
   // 회원 수정
   @PostMapping("/memberUpdate")
   public String memberUpdate(MemberVO vo) {
	   memberService.memberUpdate(vo);
	   return "redirect:/";
   }
  
   // 회원 등록
   @PostMapping("register")
   public String muinRegister(MemberVO vo) {	  	   
      memberService.register(vo);
      return "redirect:/login";
   }
   
   // 회원 탈퇴
   @GetMapping("memberDelete")
   public String memberDelete(HttpSession session) {
	   
	   String id = (String)session.getAttribute("id");	   
	   List<MemberFileVO> fileList = fileService.fileList(id);
	   
	   memberService.memberDelete(id,fileList);
	   session.invalidate();
	   
	   return "redirect:/";
   }
   // 로그인
   @PostMapping("login")
   public String muinLogin(MemberVO vo, HttpSession session) {
      int result = memberService.login(vo);
      if(result == 1) {
         session.setAttribute("id", vo.getId());
         return "redirect:/";
      }else {         
         return "login/login";
      }
   }
   // 로그아웃
   @PostMapping("/logout")
   public String logout(HttpServletRequest request) {
       // 현재 요청의 세션을 가져옴	   
	   HttpSession session = request.getSession(false);
	   if (session != null) {
	       session.invalidate();
	       System.out.println("로그아웃 성공");
	       return "redirect:/"; 
	   } else {
	       System.out.println("로그아웃 실패: 세션이 이미 만료되었습니다.");
	       return "";
	   }
       
  }
   // 디스플레이
   @GetMapping("/display")
   @ResponseBody
   public ResponseEntity<byte[]> getFile(String fileName){
       log.info("fileName : "+fileName);
       System.out.println("가나다라마사아ㅏ라자자잦자자자잦");
       System.out.println(fileName);
       // 파일 경로를 지정하여 File 객체 생성
       File file = new File(uploadFolder+"/"+fileName);
       System.out.println("가나다라마사아ㅏ라자자잦자자자잦");
       log.info("file : "+file);

       // ResponseEntity 객체 생성
       ResponseEntity<byte[]> result = null;  

       try {
           HttpHeaders headers = new HttpHeaders();

           headers.add("Content-Type", Files.probeContentType(file.toPath()));

           result = new ResponseEntity<>(
                   FileCopyUtils.copyToByteArray(file),
                   headers,
                   HttpStatus.OK);

       } catch (Exception e) {
           e.printStackTrace();
       }
       return result;  
   }
   
}