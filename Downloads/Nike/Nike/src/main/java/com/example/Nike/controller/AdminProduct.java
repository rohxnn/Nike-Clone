package com.example.Nike.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;


import com.example.Nike.model.Product;
import com.example.Nike.service.AdminSecurity;


@Controller
@RequestMapping("/Admin")
public class AdminProduct {
	@Autowired
	AdminSecurity service;
	
	@GetMapping("/ViewProduct")
	public String ViewProduct(Model m)
	{
		List<Product> li=service.Viewprod();
		
		m.addAttribute("product", li);
		return "ViewProduct";
	}
	
	
	@GetMapping("/AddProduct")
	public String AddProduct(Model m)
	{	
	m.addAttribute("prod",new Product());
		return "AddProduct";
	}
	@PostMapping("/ProductSubmit")
	public String ProdSub(@ModelAttribute("prod") Product p,Model m)
	{  
		
		m.addAttribute("product",p);
		service.AddProd(p);
		return "redirect:/Admin/ViewProduct";
	}
	@GetMapping("/DeleteProduct/{id}")
	public String DeleteProduct(@PathVariable int id)
	{
		service.deleteproduct(id);
		return "redirect:/Admin/ViewProduct";
	}
	@GetMapping("/editproduct/{id}")
	public String Editprod(@PathVariable int id,Model m)
	{
		Product p=service.Getbyid(id);
		m.addAttribute("prod", p);
		return "UpdateProd";
	}
	@PostMapping("/UpdateSub/{id}")
	public String UpdateProd(@PathVariable int id,@ModelAttribute("prod") Product p)
	{
		Product existingproduct=service.Getbyid(id);
		if(existingproduct!=null)
		{
			existingproduct.setId(p.getId());
			existingproduct.setName(p.getName());
			existingproduct.setPrice(p.getPrice());
			existingproduct.setImage(p.getImage());
			existingproduct.setQuantity(p.getQuantity());
			
			service.updateProduct(existingproduct);
		}
		
		return "redirect:/Admin/ViewProduct";
	}

}
