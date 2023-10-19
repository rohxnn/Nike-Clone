package com.example.Nike.servicecust;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.Nike.model.Product;
import com.example.Nike.repository.Productrepo;

@Service
@Transactional
public class Womenservice implements Womensecurity {
	@Autowired
	private Productrepo service;
	
	public List<Product> Allwomen()
	{
		return service.findAllWomen();
	}
	public List<Product> womenshoe()
	{
		return service.findWomenShoe();
	}
	public List<Product> womencloth()
	{
		return service.findwomencloth();
	}

}
