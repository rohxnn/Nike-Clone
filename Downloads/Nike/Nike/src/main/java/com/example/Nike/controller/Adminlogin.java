package com.example.Nike.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.Nike.model.AdminUser;
import com.example.Nike.service.AdminLoginSecurity;
import com.example.Nike.service.AdminloginService;

@Controller
@RequestMapping("/Admin")
public class Adminlogin {
	@Autowired
	AdminLoginSecurity service;
	
	@GetMapping("/login")
	public String log(Model m)
	{
		AdminUser ad=(AdminUser) m.getAttribute("empty");
		m.addAttribute("mpty", ad);
		m.addAttribute("login", new AdminUser());
		return "AdminLogin";
	}
	
	@PostMapping("/sublogin")
	public String findByUsernameAndPassword(@ModelAttribute("login") AdminUser u,Model m,RedirectAttributes redirect,HttpSession session)
	{
		AdminUser exist=service.login(u.getUsername(), u.getPassword());
	
	
		if(exist==null)
		{
			redirect.addFlashAttribute("empty",u);
			return "redirect:/Admin/login";
		}
		else
			session.setAttribute("log", u);
//			m.addAttribute("log", u);
			return "redirect:/Admin/AdminDash";
	}
	@GetMapping("/logout")
	public String logout(HttpServletRequest request)
	{
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			session.invalidate();
		}
		return "redirect:/Admin/login";
	}

}
