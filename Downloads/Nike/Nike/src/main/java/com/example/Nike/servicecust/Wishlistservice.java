package com.example.Nike.servicecust;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.Nike.model.Product;
import com.example.Nike.modelcust.Customer;
import com.example.Nike.modelcust.Wishprod;
import com.example.Nike.repositorycust.CustWishrepo;

@Service
@Transactional
public class Wishlistservice {
	
	@Autowired
	private CustWishrepo service;
	
	
	public void Add(Product p,Customer c)
	{
		Wishprod wish=new Wishprod();
		wish.setP(p);
		wish.setC(c);
		service.save(wish);
		}
	
	public List<Wishprod> View(Customer c)
	{
		return service.findByC(c);
	}
	
	
	public void delete(int id)
	{
		service.deleteById(id);
	}
	public void DeleteCust(Wishprod w)
	{
		service.delete(w);
	}

}
