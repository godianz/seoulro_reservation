package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Main_Controller {
	
    @GetMapping("/")
    public String root() {
        return "redirect:index";
    }
    
	@GetMapping("/index")
	public String index (Model model) {
		model.addAttribute("mainPage", "main.jsp");
		return"index";
	}
	//방소개
	@GetMapping("/section")
	public String section (Model model) {
		model.addAttribute("mainPage", "section.jsp");
		return"index";
	}

	//예약현황
	@GetMapping("/reserve")
	public String reserve(Model model) {
		model.addAttribute("mainPage", "reserve.jsp");
		return"index";
	}
	//장바구니
	@GetMapping("/res_status")
	public String res_status (Model model) {
		model.addAttribute("mainPage", "res_status.jsp");
		return"index";
	}
	@PostMapping("/reservation")
	
	
	
	

	

}
