package com.example.Nike.custcontroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.Nike.model.Product;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.servicecust.Womensecurity;

@Controller
@RequestMapping("/nike/women")
public class CustWomen {
	@Autowired
	Womensecurity service;
	
	
	@GetMapping("allwomen")
	public String viewwomen(Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
		List<Product> li=service.Allwomen();
		m.addAttribute("women", li);
		return "CustAllWomen";
	}
	@GetMapping("shoe")
	public String shoewomen(Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
		List<Product> li=service.womenshoe();
		m.addAttribute("women", li);
		return "CustWomenshoe";
	}
	@GetMapping("cloth")
	public String clothwomen(Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
		List<Product> li=service.womencloth();
		m.addAttribute("women", li);
		return "CustWomencloth";
	}

}
