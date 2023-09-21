package com.example.Nike.custcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.Nike.model.ImageManagement;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.service.AdminImageService;

@Controller
@RequestMapping("/nike")
public class Home {
	@Autowired
	AdminImageService service;
	@GetMapping("/in")
	public String Home(Model m,HttpSession session)
	{
		
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("person", c);
		
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
		return "Home";
	}
	

}
