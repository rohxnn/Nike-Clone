package com.example.Nike.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Nike.model.ImageManagement;
import com.example.Nike.repository.AdminImagerepo;

@Service
public class AdminImageService implements AdminImageinterface{
	@Autowired
	private AdminImagerepo service;
	
	
	public ImageManagement show(int id)
	{
	    return service.findById(id).orElse(null);
	}
	public void upd(ImageManagement m)
	{
		service.save(m);
	}
	
}
