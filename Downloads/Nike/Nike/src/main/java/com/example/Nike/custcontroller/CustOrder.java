package com.example.Nike.custcontroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Nike.modelcust.Cart;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.modelcust.Order;
import com.example.Nike.repositorycust.Orderrepo;
import com.example.Nike.servicecust.Cartsecurity;
import com.example.Nike.servicecust.Ordersecurity;

@Controller
@RequestMapping("/nike")
public class CustOrder {
	@Autowired
	Ordersecurity service;
	@Autowired
	Orderrepo service2;
	@Autowired
	Cartsecurity cartt;
	@GetMapping("/buy")
	public String Buynow(Model m,HttpSession session)
	{
		Customer c=(Customer) session.getAttribute("user");
	     
	     
	     List<Cart> li=cartt.view(c);
	     m.addAttribute("order", li);
	     m.addAttribute("user", c);
		return "Orderlist";
	}
	
	
	@PostMapping("/payment")
	public String payment(@RequestParam("address") String add,@RequestParam("ttl") int total,HttpSession session,Model m)
	{
	
		Customer c=(Customer) session.getAttribute("user");
		service.CarttoOrder(c,add);
		List<Order> li=service.view(c);
		
	
		System.out.println("address"+add);
		m.addAttribute("total", total);
		m.addAttribute("user", c);
		
		return "paymentMethod";
	}

}
