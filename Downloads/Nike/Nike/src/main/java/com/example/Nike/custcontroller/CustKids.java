package com.example.Nike.custcontroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.Nike.model.Product;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.servicecust.Kidssecurity;

@Controller
@RequestMapping("/nike/kids")
public class CustKids {
	
	@Autowired
	Kidssecurity service;
	
	@GetMapping("allkids")
	public String allkids(Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
		List<Product> li=service.findallkids();
		m.addAttribute("kids", li);
		return "CustAllKids";
	}

	@GetMapping("shoe")
	public String shoekids(Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
		List<Product> li=service.findshoekids();
		m.addAttribute("kids", li);
		return "CustKidsshoe";
	}
	@GetMapping("cloth")
	public String clothkids(Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
		List<Product> li=service.findclothkids();
		m.addAttribute("kids", li);
		return "CustKidscloth";
	}
	
	
	

}
