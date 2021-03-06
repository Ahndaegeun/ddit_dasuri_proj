package kr.or.ddit.cus.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.or.ddit.cus.vo.Member;

@Controller
public class CusController {

	@GetMapping("/cus/reg")
	public String reg(Model model) {
		Member member = new Member();
		member.setGender("female");
		

		model.addAttribute("member", member);
		
		
		
		return "cus/registerForm";
	}
	
	@PostMapping("/cus/reg")
	public String register(@Validated Member member, BindingResult result) {
		
		if(result.hasErrors()) {
			return "cus/registerForm";
		}
		
		return "cus/success";
	}
}
