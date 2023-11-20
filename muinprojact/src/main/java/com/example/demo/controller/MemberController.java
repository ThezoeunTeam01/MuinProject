package com.example.demo.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.command.MemberVO;
import com.example.demo.service.MemberService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/*")
public class MemberController {
   
   @Autowired
   MemberService memberService;
   
   @GetMapping("memberUpdate")
   public String update(HttpSession session, Model model) {
	   
	   List<MemberVO> memberList = memberService.memberList((String)session.getAttribute("id"));
	   
	   model.addAttribute("memberList", memberList);
	   System.out.println(memberList);
	   return "myPage/update";
   }
   
   
   @PostMapping("register")
   public String muinRegister(MemberVO vo) {
	   if(vo.getFileList()!=null) {
		   vo.getFileList().forEach(list -> log.info(list));
	   }	   
      memberService.register(vo);
      return "redirect:/login";
   }
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
       // 로그아웃 후 리다이렉션할 페이지나 뷰 이름을 반환
       
}
   @GetMapping("/display")
   @ResponseBody
   public ResponseEntity<byte[]> getFile(String fileName){
       log.info("fileName : "+fileName);

       // 파일 경로를 지정하여 File 객체 생성
       File file = new File("/Users/eongdeong-ihaejeogdan/Desktop/springboot/test/"+fileName);
       log.info("file : "+file);

       // ResponseEntity 객체 생성
       ResponseEntity<byte[]> result = null;  // 반환값으로 전달할 빈 객체 생성

       try {
           // HTTP 응답의 헤더를 담당하는 HttpHeaders 객체 생성
           HttpHeaders headers = new HttpHeaders();

           // 파일의 MIME 타입을 추론하여 Content-Type 헤더에 추가
           headers.add("Content-Type", Files.probeContentType(file.toPath()));

           // 파일 데이터를 byte 배열로 복사하여 ResponseEntity에 담기
           result = new ResponseEntity<>(
                   FileCopyUtils.copyToByteArray(file),  // 파일 데이터를 byte 배열로 복사
                   headers,  // 설정한 헤더 정보 추가
                   HttpStatus.OK);  // HTTP 상태 코드 지정 (200 OK)

       } catch (Exception e) {
           e.printStackTrace();
       }

       return result;  // 완성된 ResponseEntity 반환
   }
   
}