package com.example.Nike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Nike.model.ImageManagement;
import com.example.Nike.model.Product;
import com.example.Nike.repository.Productrepo;

@Service


public class AdminProductService implements AdminSecurity {
	
	@Autowired
	private Productrepo service;
	
	public List<Product> Viewprod()
	{
		return service.findAll();
	}
	
	
	public void AddProd(Product p)
	{
		service.save(p);
	}
	public void deleteproduct(int id)
	{
		service.deleteById(id);
	}
	public Product Getbyid(int id)
	{
		return service.findById(id).orElse(null);
	}
	public void updateProduct(Product p)
	{
		service.save(p);
	}


	

}
