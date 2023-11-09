package com.example.demo.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.service.MemberService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/ajax/*")
public class AjaxController {
   
   @Autowired
   MemberService memberService;
   
   @PostMapping("/idCheck")
   public int idCheck(@RequestParam("id") String id) {
      System.out.println(id);
      int result = memberService.idCheck(id);
      return result;
   }

}