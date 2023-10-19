package com.example.Nike.custcontroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.Nike.model.Product;
import com.example.Nike.modelcust.Cart;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.repository.Productrepo;
import com.example.Nike.repositorycust.LoginCustrepo;
import com.example.Nike.servicecust.Cartsecurity;

@Controller
@RequestMapping("/nike")
public class CustAddtoCart {
	@Autowired
	Cartsecurity service;
	@Autowired
	Productrepo service1;
	@Autowired
	LoginCustrepo service2;
	
	@PostMapping("/addtocart")
	public String Addcart(@RequestParam("p_id") String p,@RequestParam("customer") String c,@RequestParam("quantity") String q,@RequestParam("size") String size,RedirectAttributes redirect,Model m)
	{
		try {
			
		
		int p_id=Integer.parseInt(p);
		int c_id=Integer.parseInt(c);
		int quantity=Integer.parseInt(q);
		Product product=service1.findById(p_id).get();
		product.setQuantity(product.getQuantity()-quantity);
		Customer cust=service2.findById(c_id).get();
		
	
		if(cust==null)
		{
			System.out.println("noooo");
			redirect.addFlashAttribute("cartt", "srry");
			return "redirect:/nike/login";
		}
		else
		{
		service.AddtoCart(product, cust, quantity, size);
		
		List<Cart> li=service.view(cust);
		m.addAttribute("cart", li);
		
		}
		
		
		return "CustCart";
		}
		catch (NumberFormatException e) {
	        System.out.println("Invalid input: Not a valid integer");
	        redirect.addFlashAttribute("cartt", "srry");
	        return "redirect:/nike/login";
	    }}
	
	@GetMapping("/viewcart")
	public String ViewCart(Model m,HttpSession session,RedirectAttributes redirect)
	{
		Customer c=(Customer) session.getAttribute("user");
		
		if(c!=null)
		{
			List<Cart> li=service.view(c);
			m.addAttribute("cart", li);
			return "CustCart";
		}
		else
		{
			 redirect.addFlashAttribute("cartt", "srry");
		        return "redirect:/nike/login";
		}
	}
	
	
	@GetMapping("/delc/{id}")
	public String delete(@PathVariable("id") int id)
	{
		Cart c=service.Getbyid(id);
		int quantity=c.getQuantity();
		Product p=c.getP_id();
		Product Productchange=service1.findById(p.getId()).get();
		Productchange.setQuantity(Productchange.getQuantity()+quantity);
		
		service.delete(c);
		 return "redirect:/nike/viewcart";
		
		
		
	}
	
}