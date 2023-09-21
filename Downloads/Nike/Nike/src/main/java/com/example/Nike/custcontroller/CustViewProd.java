package com.example.Nike.custcontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.Nike.model.Product;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.servicecust.CustViewInterface;

@Controller
@RequestMapping("/nike")
public class CustViewProd {
	
	@Autowired
	CustViewInterface service;
	
	@GetMapping("/view/{id}")
	public String view(@PathVariable("id") int id,Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
		Product p=service.view(id);
		m.addAttribute("view", p);
		return "CustViewProduct";
	}

}
