package com.example.Nike.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Admin")
public class AdminDash {
	@GetMapping("/AdminDash")
	public String Dashboard(HttpSession session)
	{
	
		session.getAttribute("log");
		return "AdminHome";
	}

}
