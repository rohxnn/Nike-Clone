package com.example.Nike.servicecust;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Nike.model.Product;
import com.example.Nike.repository.Productrepo;

@Service
public class Menservice implements Mensecurity {
	@Autowired
	private Productrepo service;
	
	public List<Product> findallmen()
	{
		return service.findAllMen();
	}
	public List<Product> findmenshoe()
	{
		return service.findMenShoe();
	}
	public List<Product> findmencloth()
	{
		return service.findMencloth();
	}

}
