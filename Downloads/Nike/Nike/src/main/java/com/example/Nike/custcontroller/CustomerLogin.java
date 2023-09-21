package com.example.Nike.custcontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.Nike.modelcust.Customer;
import com.example.Nike.modelcust.Order;
import com.example.Nike.servicecust.Loginsecurity;
import com.example.Nike.servicecust.Ordersecurity;

@Controller
@RequestMapping("/nike")
public class CustomerLogin {

	@Autowired
	Loginsecurity service;
	 @Autowired
	 Ordersecurity order;
	@GetMapping("/signup")
	public String Signup(Model m)
	{
		m.addAttribute("join", new Customer());
		return "CustSignup";
	}
	
	@PostMapping("/signup")
	public String Getdata(@ModelAttribute("join") Customer c)
	{
		service.SaveData(c);
		return "CustLogin";
	}
	@GetMapping("/login")
	public String Login(Model m,HttpSession session)
	{
		String cart=(String) m.getAttribute("cartt");
		m.addAttribute("cart", cart);
		String c=(String) m.getAttribute("emm");
		m.addAttribute("empy",c);
		m.addAttribute("log", new Customer());
		return "CustLogin";
	}
	@PostMapping("/login")
	public String Sublog(@RequestParam("email") String email,@RequestParam("password") String password,RedirectAttributes redirect,HttpSession session)
	{
		Customer c=service.login(email, password);
		if(c==null)
		{
			redirect.addFlashAttribute("emm", "srry");
			return "redirect:/nike/login";
		}
		else
			session.setAttribute("user", c);	
		return "redirect:/nike/in";
	}
	
	@GetMapping("/clogout")
	public String logout(HttpServletRequest request)
	{
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			session.invalidate();
		}
		return "redirect:/nike/login";
	}
	
	@GetMapping("myorder")
	public String MyOrder(HttpSession session,Model m)
	{
		Customer c=(Customer) session.getAttribute("user");
		List<Order> li=order.view(c);
		m.addAttribute("order", li);
		return "CustMyOrder";
		
	}
	
	@GetMapping("/setting")
	public String CustSetting(HttpSession session,Model m)
	{
		String empty=(String) m.getAttribute("empty");
		m.addAttribute("none", empty);
		Customer c=(Customer) session.getAttribute("user");
		m.addAttribute("user", c);
	
		return "CustSetting";
	}
	@PostMapping("/setting")
	public String CustSettingForm(@RequestParam("haddress") String hadd,@RequestParam("waddress") String wadd,@RequestParam("ph_no") long ph,HttpSession session,Model m,RedirectAttributes redirect)
	{
		Customer existcustomer=(Customer) session.getAttribute("user");
	
		
		
		if(existcustomer!=null)
		{
			existcustomer.setHaddress(hadd);
			existcustomer.setWaddress(wadd);
			existcustomer.setPh_no(ph);
			service.SaveData(existcustomer);
		}
		
		
		return "redirect:/nike/setting";
	}
	@PostMapping("/setting/pass")
	public String Custpass(@RequestParam("newpass") String pass,@RequestParam("repass") String repass,HttpSession session,RedirectAttributes redirect)
	{
		Customer existcustomer=(Customer) session.getAttribute("user");
		if (pass != null && pass.equals(repass)) {
		    existcustomer.setPassword(pass);
		    service.SaveData(existcustomer);
		    
		} else {
		    redirect.addFlashAttribute("empty", "stfup");
		    return "redirect:/nike/setting";
		}
		return "redirect:/nike/setting";
	}
	}
	
	

