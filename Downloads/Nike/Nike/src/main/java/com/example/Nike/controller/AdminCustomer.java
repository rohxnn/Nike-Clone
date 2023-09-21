package com.example.Nike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Nike.modelcust.Customer;
import com.example.Nike.modelcust.Order;
import com.example.Nike.servicecust.Loginsecurity;
import com.example.Nike.servicecust.Ordersecurity;

@Controller
@RequestMapping("/Admin")
public class AdminCustomer {
	
	@Autowired
	Ordersecurity service;
	@Autowired
	Loginsecurity service1;
	@GetMapping("/vieworder")
	public String ViewOrder(Model m)
	{
		List<Order> li=service.Findall();
		m.addAttribute("order", li);
		return "AdminCust";
	}
	
	@GetMapping("/UpdStatus/{id}")
	public String UpdStatus(@PathVariable("id") int id,Model m)
	{
		Order or=service.FindByid(id);
		m.addAttribute("order", or);
		return "AdminCustStat";
	}
	
	@PostMapping("UpdStatus/{id}")
	public String UpdateStat(@PathVariable("id") int id,@RequestParam("status") String status)
	{
		Order or=service.FindByid(id);
		or.setStatus(status);
		
		service.save(or);
		return "redirect:/Admin/vieworder";
	}
	
	@GetMapping("viewCust")
	public String ViewCust(Model m)
	{
		List<Customer> li=service1.Findall();
		m.addAttribute("customer", li);
		return "AdminCustView";
	}
	
	

}
