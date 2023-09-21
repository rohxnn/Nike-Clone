package com.example.Nike.custcontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.Nike.model.Product;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.modelcust.Wishprod;
import com.example.Nike.service.AdminSecurity;
import com.example.Nike.servicecust.Wishlistservice;

@Controller
@RequestMapping("/nike")
public class CustWishlist {

	@Autowired
	Wishlistservice service;
	@Autowired
	AdminSecurity prod;
	
	@GetMapping("/addwish/{id}")
	public String Addprod(@PathVariable("id") int id,HttpSession session)
	{
	
		Customer c=(Customer) session.getAttribute("user");
		Product p=prod.Getbyid(id);
		if(c!=null)
		{
			service.Add(p, c);
			return "redirect:/nike/in";
		}
		else
			return "redirect:/nike/login";
	}
	
	@GetMapping("/wishlist")
	public String view(Model m,HttpSession session,RedirectAttributes redirect)
	{
		Customer c=(Customer) session.getAttribute("user");
		if(c!=null)
		{
			List<Wishprod> li=service.View(c);
			m.addAttribute("list", li);
			return "CustWishlist";
		}
		else
		{
			 redirect.addFlashAttribute("cartt", "srry");
		        return "redirect:/nike/login";
		}
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id)
	{
		service.delete(id);
		return "redirect:/nike/wishlist";
		
	
	}
	
	

}
