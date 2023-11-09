package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		int result = memberService.register(vo);
		return null;
	}

	
}