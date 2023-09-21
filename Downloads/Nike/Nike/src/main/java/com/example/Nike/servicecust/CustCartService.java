package com.example.Nike.servicecust;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Nike.model.Product;
import com.example.Nike.modelcust.Cart;
import com.example.Nike.modelcust.Customer;

import com.example.Nike.repositorycust.Custcartrepo;


@Service
public class CustCartService implements Cartsecurity {

	@Autowired
	private Custcartrepo service;
	

	
	public void AddtoCart(Product p,Customer c,int q,String size)
	{
		
		Cart cart=new Cart();
		cart.setCustomer(c);
		cart.setP_id(p);
		cart.setQuantity(q);
		cart.setSize(size);
		
		service.save(cart);
		
		
		
		
	}
	public List<Cart> view(Customer c)
	{
		return service.findByCustomer(c);
	}
	public Cart Getbyid(int id)
	{
		return service.findById(id).get();
	}
	
	public void delete(Cart c)
	{
		service.delete(c);
	}



	

}
