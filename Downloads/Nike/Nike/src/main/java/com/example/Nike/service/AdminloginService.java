package com.example.Nike.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Nike.model.AdminUser;
import com.example.Nike.repository.AdminLoginrepo;

@Service
public class AdminloginService implements AdminLoginSecurity {
	@Autowired
	private AdminLoginrepo service;
	
	public AdminUser login(String name,String pass)
	{
	
//		AdminUser exist= service.findById(1).orElse(null);
		AdminUser check=service.findByUsernameAndPassword(name, pass);
		
//		System.out.println(check.getUsername());
//		if(check.getUsername().equals(exist.getUsername())&&check.getPassword().equals(exist.getPassword()))
//		{
//			
//			return check;
//		}
		
		if(check==null)
		{
			return null;
		}
		else
			return check;
		
		
		
	}

}
