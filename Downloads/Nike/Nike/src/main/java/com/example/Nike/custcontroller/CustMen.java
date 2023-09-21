package com.example.Nike.custcontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.Nike.model.Product;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.servicecust.Mensecurity;

@Controller
@RequestMapping("/nike/men")
public class CustMen {
	@Autowired
	Mensecurity service;
	
	@GetMapping("/allmen")
	public String viewmen(Model m,HttpSession session)
	{
		
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);

		List<Product> li=service.findallmen();
		
		m.addAttribute("men", li);
		return "CustAllMen";
	}
	@GetMapping("/shoe")
	public String shoemen(Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
		List<Product> li=service.findmenshoe();
		
		m.addAttribute("men", li);
		return "CustMencloth";
	}
	
	@GetMapping("/cloth")
	public String clothmen(Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
		List<Product> li=service.findmencloth();
		
		m.addAttribute("men", li);
		return "CustMencloth";
	}
	

}
