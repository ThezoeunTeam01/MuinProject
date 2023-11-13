package com.example.demo.controller;

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
      System.out.println(vo.toString());
      int result = memberService.login(vo);
      System.out.println(result);
      if(result == 1) {
         session.setAttribute("id", vo.getId()); 
         
         return "redirect:/";
      }else {
         
         return "login/login";
      }
   }
}