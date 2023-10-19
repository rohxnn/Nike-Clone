package com.example.Nike.servicecust;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.Nike.model.Product;
import com.example.Nike.repository.Productrepo;

@Service
@Transactional
public class Kidsservice implements Kidssecurity{
	
	@Autowired
	private Productrepo service;
	
	public List<Product> findallkids()
	{
		return service.findAllkids();
	}

	public List<Product> findshoekids()
	{
		return service.findKidsShoe();
	}
	public List<Product> findclothkids()
	{
		return service.findKidscloth();
	}
}
