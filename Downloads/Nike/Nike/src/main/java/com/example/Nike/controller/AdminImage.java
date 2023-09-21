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
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Nike.model.ImageManagement;
import com.example.Nike.model.Product;
import com.example.Nike.service.AdminImageService;
import com.example.Nike.service.AdminSecurity;

@Controller
@RequestMapping("/Admin")
public class AdminImage {
	@Autowired
	AdminImageService service;
	@Autowired
	AdminSecurity prod;
	
	@GetMapping("/ImageManage")
	public String show(Model m)
	{
			
			ImageManagement image1=service.show(1);
		
			ImageManagement image2=service.show(2);
			ImageManagement image3=service.show(3);
			ImageManagement image4=service.show(4);
			ImageManagement image5=service.show(5);
			ImageManagement image6=service.show(6);
			ImageManagement image7=service.show(7);
			ImageManagement image8=service.show(8);
			ImageManagement image9=service.show(9);
			ImageManagement image10=service.show(10);
			
			m.addAttribute("img1", image1);
			m.addAttribute("img2", image2);
			m.addAttribute("img3", image3);
			m.addAttribute("img4", image4);
			m.addAttribute("img5", image5);
			m.addAttribute("img6", image6);
			m.addAttribute("img7", image7);
			m.addAttribute("img8", image8);
			m.addAttribute("img9", image9);
			m.addAttribute("img10", image10);
			return "ImageManager";
	}
	
	@GetMapping("/editimage/{id}")
	public String edit(@PathVariable int id,Model m)
	{
		ImageManagement img= service.show(id);
		m.addAttribute("upd",img);
		
		return "ImageUpdate";
	}
	
	
	@PostMapping("/updimage/{id}")
	public String UpdImage(@PathVariable int id,@ModelAttribute("upd") ImageManagement image,@RequestParam("p_id") int pid)
	{
		Product p=prod.Getbyid(pid);
		ImageManagement exist=service.show(id);
		if(exist!=null)
		{
			exist.setName(image.getName());
			exist.setImage(image.getImage());
			exist.setPrice(image.getPrice());
			exist.setType(image.getType());
			exist.setDescrip(image.getDescrip());
			exist.setP(p);
			service.upd(exist);
			
		
		}
		return "redirect:/Admin/ImageManage";	
	}
	
		
	}
	


