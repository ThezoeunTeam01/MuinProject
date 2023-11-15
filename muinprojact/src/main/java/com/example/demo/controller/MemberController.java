package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.command.MemberVO;
import com.example.demo.service.MemberService;

@Controller
@RequestMapping("/*")
public class MemberController {
   
   @Autowired
   MemberService memberService;
   
   @PostMapping("register")
   public String muinRegister(MemberVO vo, RedirectAttributes RA) {
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
   
}