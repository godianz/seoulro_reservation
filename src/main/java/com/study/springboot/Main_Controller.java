package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	@GetMapping("/section")
	public String section (Model model) {
		model.addAttribute("mainPage", "section.jsp");
		return"index";
	}
	
	@GetMapping("/reserve")
	public String reserve(Model model) {
		model.addAttribute("mainPage", "reserve.jsp");
		return"index";
	}
	
	@GetMapping("/res_status")
	public String res_status (Model model) {
		model.addAttribute("mainPage", "res_status.jsp");
		return"index";
	}
	

}
