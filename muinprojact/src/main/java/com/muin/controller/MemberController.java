package com.muin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.muin.command.MemberVO;

@Controller
@RequestMapping("/*")
public class MemberController {
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String muinRegister(MemberVO vo, RedirectAttributes RA) {
			System.out.println(vo);
		return null;
		
	}
	
}
